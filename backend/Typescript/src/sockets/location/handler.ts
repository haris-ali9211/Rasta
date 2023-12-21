import { Socket } from "socket.io";
import LocationModel from "../../Model/LocationModel"; // Adjust import path
import { ILocation } from "./interface";
import * as turf from "@turf/turf";
import moment from "moment";

const TOLERANCE = 0.01;
const HIGH_QUALITY = false;

export class LocationSocketHandler {
  static async handleLocationEvent(socket: Socket): Promise<void> {
    socket.on("location", async (data: ILocation) => {
      const { userId, longitude, latitude } = data;

      if (
        LocationSocketHandler.isValidNumber(longitude) &&
        LocationSocketHandler.isValidNumber(latitude)
      ) {
        const result = await LocationSocketHandler.saveLocationData(
          userId,
          longitude,
          latitude
        );
        // Handle the result as needed
      } else {
        console.error("Invalid longitude or latitude values");
      }
    });

    socket.on("disconnect", () => {
      // Handle disconnect event
    });
  }

  private static isValidNumber(value: number): boolean {
    return /^\d+(\.\d+)?$/.test(value.toString());
  }

  private static compressCoordinates(
    longitude: number,
    latitude: number
  ): turf.Geometry {
    return turf.simplify(turf.point([longitude, latitude]), {
      tolerance: TOLERANCE,
      highQuality: HIGH_QUALITY,
    });
  }

  private static async saveLocationData(
    userId: string,
    longitude: number,
    latitude: number
  ): Promise<{ lastUpdate: moment.Moment | null; error?: Error }> {
    try {
      const compressedLocation = LocationSocketHandler.compressCoordinates(
        longitude,
        latitude
      );
      const compressedCoordinates = compressedLocation.geometry.coordinates;

      const locationData = {
        userId,
        coordinates: { type: "Point", coordinates: [longitude, latitude] },
        compressedCoordinates: {
          type: "GeoJSON",
          coordinates: compressedCoordinates,
        },
      };

      let existingLocation = await LocationModel.findOne({ userId });

      if (!existingLocation) {
        await LocationModel.create(locationData);
        console.log("Data saved with compression");
        return { lastUpdate: null }; // No last update for a new entry
      }

      const currentCoordinates = compressedCoordinates;
      const existingCoordinates =
        existingLocation.compressedCoordinates.coordinates;

      if (
        JSON.stringify(currentCoordinates) !==
        JSON.stringify(existingCoordinates)
      ) {
        existingLocation.compressedCoordinates = {
          type: "GeoJSON",
          coordinates: currentCoordinates,
        };
        existingLocation = await existingLocation.save();
        console.log("Location data updated");
      } else {
        console.log("Location data is the same. No update needed.");
      }

      const lastUpdate = existingLocation.updatedAt;

      if (lastUpdate) {
        const now = moment();
        const updatedAtMoment = moment(lastUpdate);
        const duration = moment.duration(now.diff(updatedAtMoment));

        const minutesDiff = duration.asMinutes();
        const daysDiff = duration.asDays();

        let formattedTimeDiff;

        if (minutesDiff < 120) {
          formattedTimeDiff = `${Math.floor(minutesDiff)} minutes ago`;
        } else if (daysDiff < 2) {
          formattedTimeDiff = `${Math.floor(daysDiff)} day(s) ago`;
        } else {
          formattedTimeDiff = updatedAtMoment.format("MMMM Do YYYY, h:mm:ss a");
        }

        console.log(`Last update: ${formattedTimeDiff}`);
      }

      return { lastUpdate: moment(existingLocation.updatedAt) };
    } catch (error) {
      console.error("Error saving location data to the database:", error);
      return { error };
    }
  }
}
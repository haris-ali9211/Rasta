const Location = require("../model/locationModel");
const turf = require("@turf/turf")
const moment = require('moment');

const TOLERANCE = 0.01;
const HIGH_QUALITY = false;

const isValidNumber = (value) => /^\d+(\.\d+)?$/.test(value);

const compressCoordinates = (longitude, latitude) =>
    turf.simplify({ type: "Point", coordinates: [longitude, latitude] }, {
        tolerance: TOLERANCE,
        highQuality: HIGH_QUALITY,
    });

const saveLocationData = async (userId, longitude, latitude) => {
    try {
        const compressedLocation = compressCoordinates(longitude, latitude);
        const compressedCoordinates = [compressedLocation.coordinates[0], compressedLocation.coordinates[1]];

        const locationData = {
            userId,
            coordinates: { type: "Point", coordinates: [parseFloat(longitude), parseFloat(latitude)] },
            compressedCoordinates: { type: "GeoJSON", coordinates: compressedCoordinates },
        };

        let existingLocation = await Location.findOne({ userId });

        if (!existingLocation) {
            await Location.create(locationData);
            console.log("Data saved with compression".green);
            return { lastUpdate: null }; // No last update for a new entry
        }

        const currentCoordinates = compressedCoordinates;
        const existingCoordinates = existingLocation.compressedCoordinates.coordinates;

        if (JSON.stringify(currentCoordinates) !== JSON.stringify(existingCoordinates)) {
            existingLocation.compressedCoordinates = { type: "GeoJSON", coordinates: currentCoordinates };
            existingLocation = await existingLocation.save();
            console.log("Location data updated".green);
        } else {
            console.log("Location data is the same. No update needed.".yellow);
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
                formattedTimeDiff = updatedAtMoment.format('MMMM Do YYYY, h:mm:ss a');
            }

            console.log(`Last update: ${formattedTimeDiff}`);
        }

        return { lastUpdate };

    } catch (error) {
        console.error("Error saving location data to the database:", error);
        return { error };
    }
};

const configureLocationSocket = (io) => {
    io.on("connection", (socket) => {
        // console.log("A user connected");

        socket.on("location", async (data) => {
            try {
                const { longitude, latitude, userId } = data;

                if (isValidNumber(longitude) && isValidNumber(latitude)) {
                    await saveLocationData(userId, longitude, latitude);
                } else {
                    console.error("Invalid longitude or latitude values".red);
                }
            } catch (error) {
                console.error("Error handling location data:", error);
            }
        });

        socket.on("disconnect", () => {
            // console.log("User disconnected");
        });
    });
};

module.exports = configureLocationSocket;

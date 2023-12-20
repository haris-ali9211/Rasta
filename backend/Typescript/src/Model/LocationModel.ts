import mongoose, { Document, Schema } from "mongoose";

// TypeScript interface for Location
export interface ILocation extends Document {
  userId: string;
  compressedCoordinates: {
    type: string;
    coordinates: any; // You can specify a more precise type if needed
  };
  coordinates: {
    type: string;
    coordinates: number[];
  };
}

const locationSchema: Schema = new mongoose.Schema(
  {
    userId: {
      type: String,
      required: true,
    },
    compressedCoordinates: {
      type: {
        type: String,
        enum: ["GeoJSON"],
        default: "GeoJSON",
      },
      coordinates: {
        type: mongoose.Schema.Types.Mixed,
        required: true,
      },
    },
    coordinates: {
      type: {
        type: String,
        enum: ["Point"],
        default: "Point",
      },
      coordinates: {
        type: [Number],
        required: true,
      },
    },
  },
  {
    timestamps: true,
  }
);

locationSchema.index({ coordinates: "2dsphere" });
locationSchema.index({ "compressedCoordinates.coordinates": "2dsphere" });

// Create and export the model
const LocationModel = mongoose.model<ILocation>(
  "CurrentLocation",
  locationSchema
);
export default LocationModel;

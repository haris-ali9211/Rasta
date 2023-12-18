import mongoose from "mongoose";

const connectDB = async (): Promise<void> => {
  try {
    const conn = await mongoose.connect(process.env.MONGO_URL || "");
    console.log(`Mongoose Connected`);
  } catch (error) {
    if (error instanceof Error) {
      console.error(`Error: ${error.message}`);
    } else {
      console.error(`An unknown error occurred`);
    }
    process.exit(1);
  }
};

export default connectDB;

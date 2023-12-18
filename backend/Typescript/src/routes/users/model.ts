import mongoose, { Schema, Document } from "mongoose";
import validator from "validator";
import { IUser } from "./interface";

const userSchema: Schema = new mongoose.Schema(
  {
    username: {
      type: String,
      unique: true,
      required: true,
    },
    email: {
      type: String,
      required: true,
      unique: true,
      max: 50,
      validate: {
        validator: (value: string) => validator.isEmail(value),
        message: "Invalid email",
      },
    },
    password: {
      type: String,
      required: true,
      minlength: 6,
    },
  },
  {
    timestamps: true,
  }
);

// The model type is IUser
const UserModel = mongoose.model<IUser>("User", userSchema);
export default UserModel;

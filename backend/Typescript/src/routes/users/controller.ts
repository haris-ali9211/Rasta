import { Request, Response } from "express";
import { IUser } from "./interface";
import UserModel from "./model";
import { UserControllerInterface } from "./controllerInterface";

export class UserController implements UserControllerInterface {
  async createUser(req: Request, res: Response): Promise<void> {
    try {
      const { username, email, password } = req.body as IUser;
      const user = new UserModel({ username, email, password });
      await user.save();
      res
        .status(201)
        .json({ message: "User created successfully", user: user });
    } catch (error) {
      res.status(500).json({ message: "Error creating user", error: error });
    }
  }

  async getUser(req: Request, res: Response): Promise<void> {
    try {
      const users = await UserModel.find();
      res
        .status(200)
        .json({ message: "User fetch successfully", users: users });
    } catch (error) {
      res.status(500).json({ message: "Error fetching users", error: error });
    }
  }
}

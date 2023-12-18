import { Request, Response } from "express";

export interface UserControllerInterface {
  createUser(req: Request, res: Response): Promise<void>;
  getUser(req: Request, res: Response): Promise<void>;
}   

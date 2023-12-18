import express from "express";
import { UserController } from "./controller";
const router = express.Router();
const userController = new UserController();

// Route to create a new user
router.post("/register", userController.createUser);

// Route to get all users
router.get("/users", userController.getUser);

export default router;

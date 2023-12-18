
// dependency
import express, { Express, Request, Response } from "express";
import { createServer } from "http";
import cors from "cors";
import dotenv from "dotenv";

// dbConnection
import dbConnection from "../config/dbConnection";

//userRoutes
import userRoutes from "../routes/users/route"

dotenv.config();

let app: Express = express();
const port: string | number = process.env.PORT || 3001;
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// connect to database
dbConnection();

// APIs
app.get("/", (req: Request, res: Response) => {
  res.send("Hello World!");
});

// User APIs
app.use('/api/user', userRoutes);

const httpServer = createServer(app);
httpServer.listen(port, () => {
  console.log(`Server running on PORT ${port}...🚀`);
});

import express, { Express, Request, Response } from "express";
import { createServer } from "http";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

let app: Express = express();
const port: string | number = process.env.PORT || 3001;
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// APIs
app.get("/", (req: Request, res: Response) => {
  res.send("Hello World!");
});


const httpServer = createServer(app);
httpServer.listen(port, () => {
  console.log(`Server running on PORT ${port}...🚀`);
});

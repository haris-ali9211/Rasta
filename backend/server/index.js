const express = require("express");
const { createServer } = require("http");
const connectDB = require("../config/db");
const userRoute = require('../routes/userRoutes')
const colors = require("colors");
require("dotenv").config();
const cors = require("cors");
const { Server } = require("socket.io");
const locationSocket = require("../sockets/locationSockets")

let app = express();
const port = process.env.PORT || 3001;
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// connect to database
connectDB();

// socket connection
const httpServer = createServer(app);
const io = new Server(httpServer, {
    cors: {
        origin: "*",
        methods: ["GET", "POST"],
    },
});

locationSocket(io);


//  apis
app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.use("/api/user/", userRoute);

httpServer.listen(port, () => {
    console.log(`Server running on PORT ${port}...🚀`);
});

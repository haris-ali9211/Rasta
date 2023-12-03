const express = require("express");
const { createServer } = require("http");
const { Server } = require("socket.io");
const connectDB = require("../config/db");
require("dotenv").config();


let app = express();
const port = process.env.PORT || 3001;
const cors = require("cors");
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


// connect to database
connectDB();

const httpServer = createServer(app);
const io = new Server(httpServer, {
    cors: {
        origin: "*",
        methods: ["GET", "POST"],
    },
});

io.on("connection", (socket) => {
    console.log("We are live and connected");
    console.log(socket.id);
});

app.get("/", (req, res) => {
    res.send("Hello World!");
});

httpServer.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});



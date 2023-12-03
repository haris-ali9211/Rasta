const express = require("express");
const { createServer } = require("http");
const { Server } = require("socket.io");
const connectDB = require("../config/db");
const colors = require("colors");
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
    console.log('A user connected');

    // Broadcasting a message to all connected clients
    socket.on('message', (data) => {
        console.log('Received message from a client:', data.yellow.underline.bold);

        io.emit('send', "welcome");
    });

    socket.on('disconnect', () => {
        console.log('User disconnected');
    });
});

app.get("/", (req, res) => {
    res.send("Hello World!");
});

httpServer.listen(port, () => {
    console.log(`Server running on PORT ${port}...🚀`);
});



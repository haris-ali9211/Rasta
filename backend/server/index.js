const express = require("express");
const { createServer } = require("http");
const connectDB = require("../config/db");
const userRoute = require('../routes/userRoutes')
const colors = require("colors");
require("dotenv").config();
const cors = require("cors");

let app = express();
const port = process.env.PORT || 3001;
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// connect to database
connectDB();

const httpServer = createServer(app);

//socket configuration
require('../sockets/locationSockets')(httpServer);

app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.use("/api/user/", userRoute);

httpServer.listen(port, () => {
    console.log(`Server running on PORT ${port}...🚀`);
});

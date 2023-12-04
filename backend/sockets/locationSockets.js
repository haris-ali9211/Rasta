const { Server } = require("socket.io");

module.exports = (httpServer) => {
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
            console.log('Received message from a client:',data);

            // io.emit('send', "welcome");
        });

        socket.on('disconnect', () => {
            console.log('User disconnected');
        });
    });
};

const Location = require("../model/locationModel");

function configureLocationSocket(io) {
    io.on("connection", (socket) => {
        console.log('A user connected');

        socket.on('location', async (data) => {
            try {
                if (data.longitude != null || data.latitude != null) {
                    const location = new Location({
                        sampleId: data.userId,
                        coordinates: {
                            type: 'Point',
                            coordinates: [data.longitude, data.latitude],
                        },
                    });

                    await location.save();
                    console.log("Data saved");
                }
            } catch (error) {
                console.error('Error saving location data to the database:', error);
            }
        });

        socket.on('disconnect', () => {
            console.log('User disconnected');
        });
    });
}

module.exports = configureLocationSocket;

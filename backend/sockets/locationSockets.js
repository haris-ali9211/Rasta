const Location = require("../model/locationModel");

// Function to reduce the precision of coordinates
const reducePrecision = (coordinate, precision = 6) => Math.round(coordinate * 10 ** precision) / 10 ** precision;

// Function to validate if a value is a valid number
const isValidNumber = (value) => /^-?\d+(\.\d+)?$/.test(value);

function configureLocationSocket(io) {
    io.on("connection", (socket) => {
        console.log('A user connected');

        // Initialize previous location as null
        let previousLocation = null;

        socket.on('location', async (data) => {
            try {
                const { longitude, latitude, userId } = data;

                // Validate longitude and latitude using regex
                if (isValidNumber(longitude) && isValidNumber(latitude)) {

                    // Reduce precision of coordinates before saving
                    const reducedLongitude = reducePrecision(parseFloat(longitude));
                    const reducedLatitude = reducePrecision(parseFloat(latitude));

                    console.log("reducedLongitude", reducedLongitude);
                    console.log("reducedLatitude", reducedLatitude);

                    // Check if the current location is different from the previous location
                    if (
                        previousLocation &&
                        reducedLongitude === previoausLocation.coordinates.coordinates[0] &&
                        reducedLatitude === previousLocation.coordinates.coordinates[1]
                    ) {
                        console.log("Location unchanged. Not saving to the database.".red);
                    } else {
                        const location = new Location({
                            sampleId: userId,
                            coordinates: {
                                type: 'Point',
                                coordinates: [reducedLongitude, reducedLatitude],
                            },
                        });

                        await location.save();
                        console.log("Data saved".green);
                        previousLocation = location;
                    }
                } else {
                    console.error('Invalid longitude or latitude values'.red);
                }
            } catch (error) {
                console.error('Error saving location data to the database:', error.red);
            }
        });

        socket.on('disconnect', () => {
            console.log('User disconnected');
        });
    });
}

module.exports = configureLocationSocket;

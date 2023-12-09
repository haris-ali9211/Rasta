const Location = require("../model/locationModel");
const turf = require("@turf/turf"); // GeoJSON library

// Function to validate if a value is a valid number
const isValidNumber = (value) => /^-?\d+(\.\d+)?$/.test(value);

function configureLocationSocket(io) {
    io.on("connection", (socket) => {
        console.log("A user connected");

        socket.on("location", async (data) => {
            try {
                const { longitude, latitude, userId } = data;

                // Validate longitude and latitude using regex
                if (isValidNumber(longitude) && isValidNumber(latitude)) {
                    // Reduce precision of coordinates using GeoJSON
                    const compressedLocation = turf.simplify(
                        {
                            type: "Point",
                            coordinates: [longitude, latitude],
                        },
                        { tolerance: 0.01, highQuality: false }
                    );

                    // Prepare data for saving
                    const locationData = {
                        userId: userId,
                        coordinates: {
                            type: "Point",
                            coordinates: [parseFloat(longitude), parseFloat(latitude)],
                        },
                        compressedCoordinates: {
                            type: "GeoJSON",
                            coordinates: [compressedLocation.coordinates[0], compressedLocation.coordinates[1]],
                        },
                    };

                    // Simplify logic by directly comparing compressed location with existing locations in the database
                    var coordinates = {
                        type: "GeoJSON",
                        coordinates: [compressedLocation.coordinates[0], compressedLocation.coordinates[1]],
                    }
                    const existingLocation = await Location.findOne({ userId: "3ac2ba87-e023-4661-ac51-ac2b238ac24d" }); // Identify based on the unique user connection
                    var coordinates1 = existingLocation.compressedCoordinates.coordinates
                    console.log("check", coordinates, "data", coordinates1)
                    console.log("🚀 ~", turf.booleanEqual(coordinates, coordinates1))

                    // if (
                    //     existingLocation &&
                    //     turf.booleanEqual(compressedLocation, existingLocation.compressedCoordinates.coordinates)
                    // ) {
                    //     console.log("Location unchanged. Not saving to the database.".red);
                    // } else {
                    //     // Save the location data
                    //     const location = new Location(locationData);
                    //     await location.save();
                    //     console.log("Data saved with compression".green);
                    // }
                } else {
                    console.error("Invalid longitude or latitude values".red);
                }
            } catch (error) {
                console.error("Error saving location data to the database:", error);
            }
        });

        socket.on("disconnect", () => {
            console.log("User disconnected");
        });
    });
}

module.exports = configureLocationSocket;

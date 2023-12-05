import React, { useState, useEffect } from "react";
import io from "socket.io-client";
import { v4 as uuidv4 } from "uuid";
import "./App.css";

const generateRandomLocation = () => {
  const characters =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  const length = 8;
  let result = "";

  for (let i = 0; i < length; i++) {
    const randomIndex = Math.floor(Math.random() * characters.length);
    result += characters.charAt(randomIndex);
  }

  return result;
};

function App() {
  const [location, setLocation] = useState(null);

  const updateLocationAndEmit = (socket) => {
    socket.emit("location", {
      userId: uuidv4(),
      latitude: location?.latitude,
      longitude: location?.longitude,
    });
  };

  useEffect(() => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          setLocation({ latitude, longitude });
        },
        (error) => {
          console.error("Error getting location:", error.message);
        }
      );
    } else {
      console.error("Geolocation is not supported by this browser.");
    }
  }, []);

  useEffect(() => {
    const socket = io("http://localhost:9864");
    updateLocationAndEmit(socket);
    const intervalId = setInterval(() => updateLocationAndEmit(socket), 3000);
    return () => {
      clearInterval(intervalId);
      socket.disconnect();
    };
  }, [location]);

  return <>Testing websocket location </>;
}

export default App;

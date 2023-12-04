import React, { useState, useEffect } from "react";
import io from "socket.io-client";
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
  const [counterString, setCount] = useState(0);
  const [location, setLocation] = useState(null);

  const updateLocationAndEmit = (socket) => {
    const counterString = generateRandomLocation();
    setCount(counterString);
    socket.emit("message", counterString);
  };

  useEffect(() => {
    const socket = io("http://localhost:9864");

    // Initial call to set up the location
    updateLocationAndEmit(socket);

    // Set up an interval to update location every 3 seconds
    const intervalId = setInterval(() => updateLocationAndEmit(socket), 3000);

    return () => {
      clearInterval(intervalId); 
      socket.disconnect();
    };
  }, []); 

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

  return <>String ID: {counterString}</>;
}

export default App;

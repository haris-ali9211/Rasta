import { useState, useEffect } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import io from "socket.io-client";
import "./App.css";

function App() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    // Connect to the WebSocket server
    const socket = io("http://localhost:9864"); // Replace with the correct URL

    // Listen for messages from the server
    socket.on("message", (data) => {
      console.log("Received message from server:");
    });
  }, []);

  return (
    <>
      <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React</h1>
      <div className="card">
        <button onClick={() => SocketTest()}>count is {count}</button>
        <p>
          Edit <code>src/App.jsx</code> and save to test HMR
        </p>
      </div>
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>
    </>
  );
}

export default App;

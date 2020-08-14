import React, { useState, useEffect, Fragment } from "react";
import axios from "axios";

const Airlines = () => {
  const [airlines, setAirlines] = useState([]);

  useEffect(() => {
    axios
      .get("/api/v1/airlines.json")
      .then((res) => setAirlines(res.data.data))
      .catch((res) => console.log(res));
  }, [airlines.length]);

  const list = airlines.map((item) => {
    return <li key={item.attributes.name}>{item.attributes.name}</li>;
  });

  return (
    <div className="home">
      <div className="header">
        <h1>OpenFlights</h1>
        <div className="subheader">Honest, unbiased airline reviews.</div>
      </div>
      <ul>{list}</ul>
    </div>
  );
};

export default Airlines;

const express = require("express");
const cors = require("cors");
const TeamRoutes = require("./routes/TeamRoutes");
const CasdoorRoutes = require("./routes/CasdoorRoutes");

const app = express();

app.use(
  cors({
    origin: "http://localhost:5173",
    credentials: true,
  })
);

app.use(express.json());

TeamRoutes({ app });
CasdoorRoutes({ app });

app.listen(8080, () => {
  console.log("Server listening at http://localhost:8080");
});

module.exports = app;

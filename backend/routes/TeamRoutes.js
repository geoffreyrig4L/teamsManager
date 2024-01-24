const fs = require("fs");

const TeamRoutes = ({app}) => {
  let teams;
  fs.readFile("./data/teams.json", "utf8", (err, jsonString) => {
    if (err) {
      console.log("Error reading file from disk:", err);
      return;
    }
    try {
      teams = JSON.parse(jsonString);
    } catch (err) {
      console.log("Error parsing JSON string:", err);
    }
  });
  

  app.get("/teams",async (req,res) => {
    const result = teams;

    res.setHeader('Content-Type', 'application/json');
    res.status(200).json(result)
  })

}

module.exports = TeamRoutes
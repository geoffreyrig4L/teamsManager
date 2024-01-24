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

    console.log(result)

    res.status(200)
    res.send(result)
  })

}

module.exports = TeamRoutes
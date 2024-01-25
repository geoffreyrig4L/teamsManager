const axios = require("axios");

const CasdoorRoutes = ({ app }) => {
  const casdoorConfig = {
    serverUrl: "http://localhost:8000",
    clientId: "9ffd3710dd305f0c5ffb",
    clientSecret: "0c93d345748048b375ca48cbefe48ed0fc056b23",
    organizationName: "golmon",
    appName: "golmon_app",
  };

  app.get("/getToken", async (req, res) => {
    const code = req.query.code;
    try {
      const response = await axios.post(
        `${casdoorConfig.serverUrl}/api/login/oauth/access_token`,
        {
          code,
          client_id: casdoorConfig.clientId,
          client_secret: casdoorConfig.clientSecret,
          grant_type: "authorization_code",
        }
      );

      const token = response.data.access_token;
      res.status(200).json({ token });
    } catch (error) {
      console.error(
        "Erreur lors de la récupération du token:",
        error.response ? error.response.data : error.message
      );
      res
        .status(500)
        .json({ error: "Erreur lors de la récupération du token" });
    }
  });
};

module.exports = CasdoorRoutes;

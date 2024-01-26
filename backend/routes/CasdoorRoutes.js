const axios = require("axios");
const { SDK } = require("casdoor-nodejs-sdk");

const jwt = require("jsonwebtoken");

const CasdoorRoutes = ({ app }) => {
  const cert = `-----BEGIN CERTIFICATE-----
  MIIE2TCCAsGgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCYxDjAMBgNVBAoTBWFk
  bWluMRQwEgYDVQQDDAtjZXJ0XzljaGQ4bzAeFw0yNDAxMjYxMzE1NDZaFw00NDAx
  MjYxMzE1NDZaMCYxDjAMBgNVBAoTBWFkbWluMRQwEgYDVQQDDAtjZXJ0XzljaGQ4
  bzCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMg/+r4q0x0FMTUGJQB4
  6rPETN47f02NeuIQlY56boG9vZBBUrEt+ubm/QvU6qBPa0TmA+3Au/9xwMe30GgC
  +DwzjLmybUJOSIjC5tS+9OTm4rbc3Bcvja4qlG5x8tdUg8jsL5wlI+3DK4PYcF5x
  zVmcd5tG0G0ZZTO2rOFlN+ketyMjTlalw5JkmbAkWrlN8Sd557Q2EvdSzn1uptfH
  ddpzD1w0uLO9Id3D4Eqf2rrX0PquHGlasRQjxz7xly7MfVevAHU4zrjoNLlmhZMT
  erV69h13bsEIUM18TuGlvZJq+MYvceS1jJHmBhY2+rig6tMvqlkKrGyKR16GdnJE
  tWL8TX5zEGwIEMXOVR5M/xLOvWNyys68EOOGIJshRChzCdom3Oi0mNEDV3OYMqyQ
  JOT5xUDVhP8iLDMA0BXKlUPVoUa5Blwd9nOQJ6c0858hp63yE23nPxAdEDBv78yL
  YIrs8oknNfiF7/9TQC47n69mrtBvd0WuVmApbSCl2nabKftgwifEykrmZf5G9PMh
  KBZVLE+XWaELMXJxAqzB88vpWtYA6pfx/n/MeFvDlaiXN+sZQYqnKlf+34dWbYaM
  yHxsIM1rViWMSTIc4iybvIsKAye6+o8Y/p5lxLpf8E1pG4lq0TITkDLX8VFeW4KQ
  8ikfI1WHNWVjbfKxf7d/fsjzAgMBAAGjEDAOMAwGA1UdEwEB/wQCMAAwDQYJKoZI
  hvcNAQELBQADggIBAC3UlV0+jgZvJokazbfsxiHHtX3NNj1oeAd5dq9WJQhHN/X8
  zkXMOdkn7134ocQg0//9vEBO+BwHe2Iav69tPuryiPGIX0gBlbXHqfUfkE3tst4A
  eFq3DF7iTL5kMKSvhXTOvs1TJBEBjBPuKME6sPjoItdzc760t/MD+xVVWgs7DD41
  6WEs4ERluLX2gTV/Sr5D6nzSTDhD9dCjBO0CKWvntZPmK/vh1cPaZWomsdF7Cl7G
  f9BQTElvpiT7pzytkTzRW7o/jKNroBTvYleG9ilDN59nTMGXPTkKPZi7XIEsHZBa
  D6ECDlUoBLqLDZCGN4+dfwtQipUPSWaFU4IEjAtXUOOJwbBV4GDbc1WcXNh8f/Hy
  /vP8gUAZTtKP+Br0TdAzbbAxztnwJUpl6IW2vNMZv+5mT8OUfXoW7+vDtLadWd0w
  AInoNMnrASURCO5yXLrYkGPCU/2zG8WFu9Tg2pu9EOtQY/tsBwj9j3uVIgfrUema
  pQ/K/Q444rk9IoD3N7hx7GhsJIZtfeDl/5t5MZxW5CIiU/dee9BW1r/21ez+j9Ih
  mcsxeSsE0VyRZ0szI1Jv733VAaBbCZ0cBPzrQRJyrZxN2i8Dubk3L5iN+eM6ztfO
  fjqi9nbwuOqpf7IK4Ickggv0HHw9wToQ8npEW6IEDwWjkjDHC1Uql0kv/E5M
  -----END CERTIFICATE-----`;

  const casdoorConfig = {
    serverUrl: "http://localhost:8000",
    clientId: "9ffd3710dd305f0c5ffb",
    clientSecret: "0c93d345748048b375ca48cbefe48ed0fc056b23",
    organizationName: "golmon",
    appName: "golmon_app",
    certificate: cert,
  };

  const sdk = new SDK(casdoorConfig);

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

  app.get("/isPermited", (req, res) => {
    try {
      const { token, isPermission } = req.query;

      const { permissions } = jwt.decode(token);

      if (isPermission == "canCreate") {
        if (
          permissions.find(
            (elm) =>
              elm.name == "permission_ecrire" ||
              elm.name == "permission_admin" ||
              (elm.name == "permission_admingod" && elm.isEnabled)
          )
        ) {
          res.status(200).send({ authorized: true });
        } else {
          res.status(400).send({ authorized: false });
        }
      } else if (isPermission == "canUpdate") {
        if (
          permissions.find(
            (elm) =>
              elm.name == "permission_admin" ||
              (elm.name == "permission_admingod" && elm.isEnabled)
          )
        ) {
          res.status(200).send({ authorized: true });
        } else {
          res.status(400).send({ authorized: false });
        }
      } else if (isPermission == "canDelete") {
        console.log(
          permissions.find(
            (elm) => elm.name == "permission_admingod" && elm.isEnabled
          )
        );
        if (
          permissions.find(
            (elm) => elm.name == "permission_admingod" && elm.isEnabled
          )
        ) {
          res.status(200).send({ authorized: true });
        } else {
          res.status(400).send({ authorized: false });
        }
      } else {
        res.status(400).send({ authorized: false });
      }

      res.send(JSON.stringify(permissions));
    } catch (error) {
      res.status(500).send(error);
    }
  });

  app.get("/verifyToken", async (req, res) => {
    const token = req.query.token;
    const tokenTypeHint = "access_token";

    if (!token) {
      return res.status(400).json({ error: "Le token est requis." });
    }

    const authorizationHeader = `Basic ${Buffer.from(
      `${casdoorConfig.clientId}:${casdoorConfig.clientSecret}`
    ).toString("base64")}`;

    try {
      const response = await axios.post(
        `${casdoorConfig.serverUrl}/api/login/oauth/introspect`,
        `token=${token}&token_type_hint=${tokenTypeHint}`,
        {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
            Authorization: authorizationHeader,
          },
        }
      );

      res.json(response.data);
    } catch (error) {
      res.status(500).json({ error: "Erreur lors de la validation du token" });
    }
  });
};

module.exports = CasdoorRoutes;

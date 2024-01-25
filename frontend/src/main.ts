import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";
import Casdoor from "casdoor-vue-sdk";
import router from "./router";

const config = {
  serverUrl: "http://localhost:8000",
  clientId: "9ffd3710dd305f0c5ffb",
  organizationName: "golmon",
  appName: "golmon_app",
};

const app = createApp(App);
app.use(Casdoor, config).use(router).mount("#app");

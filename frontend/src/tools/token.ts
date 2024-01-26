import axios from "axios";

export const getToken = () => {
  const urlParams = new URLSearchParams(window.location.search);
  const authorizationCode = urlParams.get("code");
  if (authorizationCode) {
    const code: string = authorizationCode;
    try {
      axios
        .get(`http://localhost:8080/getToken?code=${code}`)
        .then((response: any) => {
          localStorage.setItem("token", response.data.token);
        });
    } catch (e) {
      console.log(e);
    }
  } else {
    console.log("NO AUTHORIZATION");
  }
};

export const verifyToken = () => {
  console.log(localStorage.getItem("token"));
};

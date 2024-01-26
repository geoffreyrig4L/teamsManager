import axios from "axios";

export const getPermission = (accessToken: any) => {
  axios
    .get(`http://localhost:8080/getUserInfo?token=${accessToken}`)
    .then((response: any) => {
      const permissions = response.permissions;

      console.log(permissions);
      return permissions;
    });
};

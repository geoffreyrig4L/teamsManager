import axios from "axios";


const getPermission = (accessToken:any) =>  {
  axios.get(`http://localhost:8080/getUserInfo?token=${accessToken}`).then((response:any) => {
    const permissions = response.permissions

   

   return permissions;
  })
}
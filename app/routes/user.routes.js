import { Router } from "express";
import * as controller from "../controller/user.controllers";


const route = Router();

route.get("/", (req, res)=>{
    res.send("<h1>HOLA MUNDO</h1>")
});

route.get("/user", controller.findAllUser);
route.get("/user/:id", controller.findUser);
route.post("/user", controller.insertUser);



export default route;

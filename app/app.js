import express from "express";
import message from "./config/message.js"

const app = express();

app.listen(3000, ()=>{
    // console.log("Hola MUNDO")
    message("hola mundo", "danger")
});
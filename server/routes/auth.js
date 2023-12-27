const express = require("express");

const authRoute = express.Router();

authRoute.get("/user", (req, res) => {
    res.json({ msg: "i am fine" });
});
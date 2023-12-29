const express = require("express");
const User = require("../models/users");
const bcryptjs = require("bcrypt");
const authRoute = express.Router();

authRoute.post("/api/signup", async (req, res) => {
    const { name, email, password } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
        return res.status(400).json({ msg: "User with same email already exist" })
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let user = new User({
        email,
        password: hashedPassword,
        name,
    })
    user = await user.save();
    res.json(user);
});

module.exports = authRoute;
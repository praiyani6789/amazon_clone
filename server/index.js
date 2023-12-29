//IMPORT FROM PACKAGE
const express = require("express");

//IMPORT FROM  OTHER FILE
const authRoute = require("./routes/auth");
const { default: mongoose } = require("mongoose");

//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://raiyani2003:Prince%402003@cluster0.ubi0fvs.mongodb.net/?retryWrites=true&w=majority";

//MIDDLEWARE
app.use(express.json());
app.use(authRoute);

//Connection
mongoose.connect(DB).then(() => {
    console.log("connction Successful");
}).catch((e) => {
    console.log(e);
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT} `);
});
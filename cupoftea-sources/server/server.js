import express from "express";
import router from "./routes/router.js";

const app = express();
const port = 8000;
const hostname = "localhost";

const BASE_URL = `http://${hostname}:${port}`;

// pour l'utilisation du json à la réception des données formulaire
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// on indique à express où sont les fichier statiques js, image et css
app.use(express.static("public"));

//appel des routes
app.use("/", router);

//lancement du serveur sur un port choisi
app.listen(port, () => {
    console.log(`Example app listening at ${BASE_URL}`);
});
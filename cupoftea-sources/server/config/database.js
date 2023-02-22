import mysql from "mysql";

let pool = mysql.createPool({
    connectionLimit: 10000,
    host: "db.3wa.io", // on rentre l'hôte l'adresse url où se trouve la bdd // root
    user: "kseniiagladkova", // identifiant BDD
    password: "62e54b1b92cf6f501fbb48f0304e971f", // le password
    database: "kseniiagladkova_teas", // nom de la base de donnée
});

// Connexion à la DB
pool.getConnection((err, connection) => {
    console.log("Connected to the database");
    if (err) throw err;
});

export default pool;
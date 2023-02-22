import pool from "../config/database.js";

// récupération de la nouveauté
const NewsTeas = (req, res) => {
    pool.query(
        `SELECT thes.sous_titre, thes.description, thes.image, thes.nom, thes.id, thes.id_category, FORMAT(MIN(prix), 2) as prix FROM thes
 		   INNER JOIN  format ON thes.id = format.id_the
 		   GROUP BY format.id_the ORDER BY date DESC LIMIT 1`,
        function (error, teas, fields) {
            res.json(teas[0]);
        },
    );
};

export default NewsTeas;

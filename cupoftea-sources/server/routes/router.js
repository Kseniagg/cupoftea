import express from "express";
import NewsTeas from "../controllers/TeasController.js";

const router = express.Router();

router.get("/nouveaute", NewsTeas);

export default router;
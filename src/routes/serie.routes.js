import { Router } from "express";
import { methods as serieController } from "../controllers/serie.controllers";
const upload = require("../config/multer");

const router = Router();

// get series
router.get("/", serieController.getSeries);
// get item per category
router.get("/category/:category/", serieController.getCategory);
// get serie
router.get("/:id/", serieController.getSerie);
// get random item
router.get("/serie/random/", serieController.getRandom);
// get episodes
router.get("/episodes/:id/", serieController.getEpisode);
// add serie
// router.post("/", serieController.addSerie(image1Path, image2Path));
// update serie
router.put("/update/:id/", serieController.updateSerie);
// delete seriee
router.delete("/delete/:id/", serieController.deleteSerie);
export default router;

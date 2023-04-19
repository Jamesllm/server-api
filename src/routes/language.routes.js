import { Router } from "express";
import { methods as languageController } from "../controllers/language.controllers";

const router = Router();

// get languages
router.get("/", languageController.getLanguages);
// get language
router.get("/:id", languageController.getLanguage);
// add language
router.post("/", languageController.addLanguage);
// update language
router.put("/:id", languageController.updateLanguage);
//delete language
router.delete("/:id", languageController.deleteLanguage);

export default router;

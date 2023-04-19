import express from "express";
import morgan from "morgan";
const cors = require("cors");
// Routes
import languageRoutes from "./routes/language.routes";
import serieRoutes from "./routes/serie.routes";

const app = express();

// Settings
app.set("port", process.env.PORT || 4000);

// Middlewares
app.use(morgan("dev"));
app.use(cors());
app.use(express.json());

// Routes
// app.use("/api/languages", languageRoutes);

app.get("/", (req, res) => {
  res.send("AnimeOs DATABASE");
});
app.use("/api/series", serieRoutes);

export default app;

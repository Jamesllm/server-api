import { getConnection } from "../database/database";

const getSeries = async (req, res) => {
  try {
    const connection = await getConnection();
    const result =
      await connection.query(`SELECT series.id, series.title, series.path, series.information, 
      series.trailer, series.banner, series.poster, serie_categorys.category, 
      serie_languages.language, serie_states.state, serie_seasons.season, plans.planType
      FROM series INNER JOIN serie_categorys ON series.idCategory = serie_categorys.id 
                  INNER JOIN serie_languages ON series.idLanguage = serie_languages.id
                  INNER JOIN serie_states ON series.idState = serie_states.id
                  INNER JOIN serie_seasons ON series.idSeason = serie_seasons.id
                  INNER JOIN plans ON series.idPlan = plans.id`);
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

const getSerie = async (req, res) => {
  try {
    const { id } = req.params;
    const connection = await getConnection();
    const result = await connection.query(
      `SELECT series.id, series.title, series.path ,series.information, 
    series.trailer, series.banner, series.poster, serie_categorys.category,serie_languages.language, 
    serie_states.state, serie_seasons.season, plans.planType
            FROM series INNER JOIN serie_categorys ON series.idCategory = serie_categorys.id 
                        INNER JOIN serie_languages ON series.idLanguage = serie_languages.id
                        INNER JOIN serie_states ON series.idState = serie_states.id
                        INNER JOIN serie_seasons ON series.idSeason = serie_seasons.id
                        INNER JOIN plans ON series.idPlan = plans.id
                      WHERE series.id = ?`,
      id
    );
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

const getCategory = async (req, res) => {
  try {
    const { category } = req.params;
    const connection = await getConnection();
    const result = await connection.query(
      `SELECT id, category, title, poster FROM db_anime_os WHERE category = "${category}"`
    );
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

const getRandom = async (req, res) => {
  try {
    const connection = await getConnection();
    const result = await connection.query(
      `SELECT series.id, title, banner, serie_states.state, serie_seasons.season FROM series 
      INNER JOIN serie_states ON series.idState = serie_states.id
      INNER JOIN serie_seasons ON series.idSeason = serie_seasons.id
      WHERE RAND() < (SELECT((3 / COUNT(*)) * 10) FROM series) ORDER BY RAND() LIMIT 1;`
    );
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

const getEpisode = async (req, res) => {
  try {
    const { id } = req.params;
    const connection = await getConnection();
    const result = await connection.query(
      "SELECT id, src FROM episodes WHERE id = ?",
      id
    );
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

const addSerie = async (req, res) => {
  try {
    const {
      title,
      information,
      trailer,
      banner,
      poster,
      category,
      language,
      state,
      season,
      plan,
    } = req.body;

    if (
      title === undefined ||
      information === undefined ||
      trailer === undefined ||
      banner === undefined ||
      poster === undefined ||
      category === undefined ||
      language === undefined ||
      state === undefined ||
      season === undefined ||
      plan === undefined
    ) {
      res.status(400).json({ message: "Bad Reques. Please fill all field." });
    }

    const serie = {
      title,
      information,
      trailer,
      banner,
      poster,
      category,
      language,
      state,
      season,
      plan,
    };
    const connection = await getConnection();
    await connection.query("INSERT INTO db_anime_os SET ?", serie);
    res.json({ message: "Serie added" });
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};


const updateSerie = async (req, res) => {
  try {
    const { id } = req.params;
    const {
      title,
      path,
      information,
      trailer,
      banner,
      poster,
      category,
      language,
      state,
      season,
      plan,
    } = req.body;

    if (
      id === undefined ||
      title === undefined ||
      path === undefined ||
      information === undefined ||
      trailer === undefined ||
      banner === undefined ||
      poster === undefined ||
      category === undefined ||
      language === undefined ||
      state === undefined ||
      season === undefined ||
      plan === undefined
    ) {
      res.status(400).json({ message: "Bad Request. Please fill all field." });
    }

    const serie = {
      title,
      path,
      information,
      trailer,
      banner,
      poster,
      category,
      language,
      state,
      season,
      plan,
    };
    const connection = await getConnection();
    const result = await connection.query(
      "UPDATE db_anime_os SET ? WHERE id = ?",
      [serie, id]
    );
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

const deleteSerie = async (req, res) => {
  try {
    const { id } = req.params;
    const connection = await getConnection();
    const result = await connection.query(
      "DELETE FROM db_anime_os WHERE id = ?",
      id
    );
    res.json(result);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

export const methods = {
  getSeries,
  getSerie,
  getCategory,
  getRandom,
  getEpisode,
  addSerie,
  updateSerie,
  deleteSerie,
};

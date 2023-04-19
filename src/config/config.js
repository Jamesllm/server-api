import { config } from "dotenv";

config();

export default {
  host: process.env.HOST || "localhost",
  database: process.env.DATABASE || "",
  db_port: process.env.DBPORT || "",
  user: process.env.USER || "root",
  password: process.env.PASSWORD || "",
};

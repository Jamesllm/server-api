import app from "./src/app";

const main = () => {
  app.listen(app.get("port"));
  console.log(`██▓▒­░⡷⠂𝚂𝚎𝚛𝚟𝚎𝚛 𝚘𝚗 𝚙𝚘𝚛𝚝 'http://localhost:${app.get("port")}/'⠐⢾░▒▓██`);
};

main();

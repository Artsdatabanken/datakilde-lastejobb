const { io } = require("lastejobb");

let organisasjon = io.readJson(
  "data/datakilde-ubehandlet/hovedkvarter.geojson"
);
io.skrivBuildfil("punkt_4326.geojson", organisasjon);

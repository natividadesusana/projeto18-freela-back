import { db } from "../database/database.connection.js";

export function getCitiesDB() {
  return db.query(`SELECT * FROM cities`);
}

export function createCitiesDB(name) {
  return db.query(`INSERT INTO cities (name) VALUES ($1)`, [name]);
}

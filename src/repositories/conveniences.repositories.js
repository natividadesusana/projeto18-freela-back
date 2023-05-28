import { db } from "../database/database.connection.js";

export function getConveniencesDB() {
  return db.query(`SELECT * FROM conveniences`);
}

export function createConveniencesDB(name) {
  return db.query(`INSERT INTO conveniences (name) VALUES ($1)`, [name]);
}

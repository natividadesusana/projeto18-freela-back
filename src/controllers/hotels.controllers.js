import { db } from "../database/database.connection.js";

export async function getCitiesById(req, res) {
  try {
    res.status(200).send();
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getHotelsById(req, res) {
  try {
    res.status(200).send();
  } catch (error) {
    res.status(500).send(error.message);
  }
}

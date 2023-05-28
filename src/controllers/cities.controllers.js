import { createCitiesDB, getCitiesDB } from "../repositories/cities.repositories.js";

export async function getCities(req, res) {
  try {
    const cities = await getCitiesDB();
    res.status(200).send(cities.rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function createCities(req, res) {
  const { name } = req.body;
  try {
    await createCitiesDB(name);
    res.sendStatus(201);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

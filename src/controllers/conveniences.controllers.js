import { createConveniencesDB, getConveniencesDB } from "../repositories/conveniences.repositories.js";

export async function getConveniences(req, res) {
  try {
    const conveniences = await getConveniencesDB();
    res.status(200).send(conveniences.rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function createConveniences(req, res) {
  const { name } = req.body;
  try {
    await createConveniencesDB(name);
    res.sendStatus(201);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

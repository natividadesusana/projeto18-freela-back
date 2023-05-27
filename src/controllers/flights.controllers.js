import { db } from "../database/database.connection.js";

export async function createFlights(req, res) {
  try {
    res.status(200).send();
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getFlightsById(req, res) {
    try {
      res.status(200).send();
    } catch (error) {
      res.status(500).send(error.message);
    }
  }

export async function getCitiesById(req, res) {
  try {
    res.status(200).send();
  } catch (error) {
    res.status(500).send(error.message);
  }
}



import { db } from "../database/database.connection.js";

export async function createTickets(req, res) {
  try {
    res.status(200).send();
  } catch (error) {
    res.status(500).send(error.message);
  }
}

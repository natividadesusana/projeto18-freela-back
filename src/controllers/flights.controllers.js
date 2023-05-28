import { createFlightsDB, getFlightsByDestionationCityIdDB, getFlightsDetailsDB } from "../repositories/flights.repositories.js";

export async function getFlightsByDestionationCityId(req, res) {
  try {
    const { cityId } = req.params;
    const { minPrice, maxPrice } = req.query;
    const flights = await getFlightsByDestionationCityIdDB(
      cityId,
      minPrice,
      maxPrice
    );
    res.status(200).send(flights.rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getFlightsDetails(req, res) {
  try {
    const { flightId } = req.params;
    const flights = await getFlightsDetailsDB(flightId);
    res.status(200).send(flights.rows[0]);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function createFlights(req, res) {
  try {
    const {
      airline,
      destinationCityId,
      originCityId,
      price,
      avatar,
      arrivalTime,
      departureTime,
    } = req.body;
    await createFlightsDB(
      airline,
      destinationCityId,
      originCityId,
      price,
      avatar,
      arrivalTime,
      departureTime
    );
    res.sendStatus(201);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

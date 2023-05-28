import { Router } from "express";
import { createFlights, getFlightsByDestionationCityId, getFlightsDetails } from "../controllers/flights.controllers.js";

const flightsRouter = Router();

flightsRouter.get("/flights/cities/:cityId", getFlightsByDestionationCityId);
flightsRouter.get("/flights/:flightId/details", getFlightsDetails);
flightsRouter.post("/flights", createFlights);

export default flightsRouter;

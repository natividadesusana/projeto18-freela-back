import { Router } from "express";
import { createFlights, getFlightsById, getCitiesById } from "../controllers/flights.controllers.js";

const flightsRouter = Router();

flightsRouter.post("/flights", createFlights);
flightsRouter.get("/flights/:flightsById", getFlightsById);
flightsRouter.get("/flights/:citiesById", getCitiesById);

export default flightsRouter;

import { Router } from "express";
import { createFlights, getFlightsByDestionationCityId, getFlightsDetails } from "../controllers/flights.controllers.js";
import validateSchema from "../middlewares/validateSchema.middleware.js"
import { flightsSchema } from "../schemas/flights.schemas.js"

const flightsRouter = Router();

flightsRouter.get("/flights/cities/:cityId", getFlightsByDestionationCityId);
flightsRouter.get("/flights/:flightId/details", getFlightsDetails);
flightsRouter.post("/flights", validateSchema(flightsSchema), createFlights);

export default flightsRouter;

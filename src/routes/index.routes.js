import { Router } from "express";
import citiesRouter from "./cities.routes.js";
import flightsRouter from "./flights.routes.js";
import hotelsRouter from "./hotels.routes.js";
import ticketsRouter from "./tickets.routes.js";

const router = Router();

router.use(citiesRouter);
router.use(flightsRouter);
router.use(hotelsRouter);
router.use(ticketsRouter);

export default router;

import { Router } from "express";
import { getCitiesById, getHotelsById } from "../controllers/hotels.controllers.js";

const hotelsRouter = Router();

hotelsRouter.get("/hotels/:citiesById", getCitiesById);
hotelsRouter.get("/hotels/:hotelsById", getHotelsById);

export default hotelsRouter;

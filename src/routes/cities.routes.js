import { Router } from "express";
import { getCities, createCities } from "../controllers/cities.controllers.js";

const citiesRouter = Router();

citiesRouter.get("/cities", getCities);
citiesRouter.post("/cities", createCities);

export default citiesRouter;

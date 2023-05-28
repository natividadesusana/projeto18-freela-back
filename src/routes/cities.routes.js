import { Router } from "express";
import { getCities, createCities } from "../controllers/cities.controllers.js";
import validateSchema from "../middlewares/validateSchema.middleware.js";
import { nameSchema } from "../schemas/name.schemas.js"

const citiesRouter = Router();

citiesRouter.get("/cities", getCities);
citiesRouter.post("/cities", validateSchema(nameSchema),createCities);

export default citiesRouter;

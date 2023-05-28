import { Router } from "express";
import { getConveniences, createConveniences } from "../controllers/conveniences.controllers.js";
import validateSchema from "../middlewares/validateSchema.middleware.js";
import { nameSchema } from "../schemas/name.schemas.js"

const conveniencesRouter = Router();

conveniencesRouter.get("/conveniences", getConveniences);
conveniencesRouter.post("/conveniences", validateSchema(nameSchema), createConveniences);

export default conveniencesRouter;

import { Router } from "express";
import { getConveniences, createConveniences } from "../controllers/conveniences.controllers.js";

const conveniencesRouter = Router();

conveniencesRouter.get("/conveniences", getConveniences);
conveniencesRouter.post("/conveniences", createConveniences);

export default conveniencesRouter;

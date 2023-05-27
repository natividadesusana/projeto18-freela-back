import { Router } from "express";
import { createTickets } from "../controllers/tickets.controllers.js";

const ticketsRouter = Router();

ticketsRouter.post("/tickets", createTickets);

export default ticketsRouter;

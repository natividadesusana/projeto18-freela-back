import { Router } from "express";
import validateSchema from "../middlewares/validateSchema.middleware.js"
import { createHotels, getHotelsByCityId, getHotelsDetails } from "../controllers/hotels.controllers.js";
import { hotelsSchema } from "../schemas/hotels.schemas.js"

const hotelsRouter = Router();

hotelsRouter.get("/hotels/cities/:cityId", getHotelsByCityId);
hotelsRouter.get("/hotels/:hotelId/details", getHotelsDetails);
hotelsRouter.post("/hotels", validateSchema(hotelsSchema), createHotels);

export default hotelsRouter;

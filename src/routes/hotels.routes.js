import { Router } from "express";
import { getHotelsByCityId, getHotelsDetails } from "../controllers/hotels.controllers.js";

const hotelsRouter = Router();

hotelsRouter.get("/hotels/cities/:cityId", getHotelsByCityId);
hotelsRouter.get("/hotels/:hotelId/details", getHotelsDetails);

export default hotelsRouter;

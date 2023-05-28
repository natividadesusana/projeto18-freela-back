import { getHotelsByCityIdDB, getHotelsDetailsDB } from "../repositories/hotels.repositories.js";

export async function getHotelsByCityId(req, res) {
  try {
    const { cityId } = req.params;
    const { minPrice, maxPrice } = req.query;
    const hotels = await getHotelsByCityIdDB(cityId, minPrice, maxPrice);
    res.status(200).send(hotels.rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getHotelsDetails(req, res) {
  try {
    const { hotelId } = req.params;
    const hotels = await getHotelsDetailsDB(hotelId);
    res.status(200).send(hotels.rows[0]);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

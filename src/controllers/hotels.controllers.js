import { getHotelsByCityIdDB, getHotelsDetailsDB } from "../repositories/hotels.repositories.js";

export async function getHotelsByCityId(req, res) {
  try {
    const { cityId } = req.params;
    const hotels = await getHotelsByCityIdDB(cityId);
    res.status(200).send(hotels.rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getHotelsDetails(req, res) {
  try {
    const { hotelId } = req.params;
    console.log(hotelId);
    const hotels = await getHotelsDetailsDB(hotelId);
    res.status(200).send(hotels.rows);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

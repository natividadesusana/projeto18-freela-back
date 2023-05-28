import Joi from "joi";

export const flightsSchema = Joi.object({
  airline: Joi.string().required(),
  destinationCityId: Joi.number().required(),
  originCityId: Joi.number().required(),
  price: Joi.number().required(),
  avatar: Joi.string().required(),
  arrivalTime: Joi.date().iso().required(),
  departureTime: Joi.date().iso().required(),
});

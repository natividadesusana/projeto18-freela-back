import Joi from "joi";

export const hotelsSchema = Joi.object({
  name: Joi.string().required(),
  description: Joi.string().required(),
  price: Joi.number().required(),
  avatar: Joi.string().required(),
  cityId: Joi.number().required(),
});

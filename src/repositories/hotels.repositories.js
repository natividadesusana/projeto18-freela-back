import { db } from "../database/database.connection.js";

export function getHotelsByCityIdDB(cityId, minPrice, maxPrice) {
  let query = `
    SELECT hotels.id, hotels.name, hotels.description, hotels.price, hotels.avatar, 
      JSON_BUILD_OBJECT('id', cities.id, 'name', cities.name) AS city
    FROM hotels
    JOIN cities ON hotels."cityId" = cities.id
    WHERE cities.id = $1`;

  const queryParams = [cityId];

  if (minPrice) {
    query += ` AND hotels.price >= $${queryParams.length + 1}`;
    queryParams.push(minPrice);
  }

  if (maxPrice) {
    query += ` AND hotels.price <= $${queryParams.length + 1}`;
    queryParams.push(maxPrice);
  }

  query += `
    GROUP BY hotels.id, hotels.name, hotels.description, hotels.price, hotels.avatar, cities.id, cities.name`;

  return db.query(query, queryParams);
}

export function getHotelsDetailsDB(hotelId) {
  return db.query(
    `
      SELECT hotels.id, hotels.name, hotels.description, hotels.price, hotels.avatar, 
      JSON_BUILD_OBJECT('id', cities.id, 'name', cities.name) AS city, 
      COALESCE(ARRAY_AGG(DISTINCT photos.url), ARRAY[]::text[]) AS photos, 
      ARRAY_AGG(DISTINCT conveniences.obj) AS conveniences
      FROM hotels
      JOIN cities ON hotels."cityId" = cities.id
      LEFT JOIN photos ON hotels.id = photos."hotelId"
      LEFT JOIN hotel_conveniences ON hotels.id = hotel_conveniences."hotelId"
      LEFT JOIN (
        SELECT "hotelId", JSON_BUILD_OBJECT('id', conveniences.id, 'name', conveniences.name)::jsonb AS obj
        FROM hotel_conveniences
        JOIN conveniences ON hotel_conveniences."convenienceId" = conveniences.id
      ) AS conveniences ON hotels.id = conveniences."hotelId"
      WHERE hotels.id = $1
      GROUP BY hotels.id, hotels.name, hotels.description, hotels.price, hotels.avatar, cities.id, cities.name;
    `,
    [hotelId]
  );
}

export function createHotelsDB(name) {
  return db.query(`INSERT INTO hotels (name) VALUES ($1)`, [name]);
}

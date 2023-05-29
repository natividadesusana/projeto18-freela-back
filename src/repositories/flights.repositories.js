import { db } from "../database/database.connection.js";

export function getFlightsByDestionationCityIdDB(cityId, minPrice, maxPrice) {
  let query = `
    SELECT flights.id, flights.airline, flights.price, flights.avatar, flights."arrivalTime", flights."departureTime",
      JSON_BUILD_OBJECT('id', destinationCity.id, 'name', destinationCity.name) AS destination,
      JSON_BUILD_OBJECT('id', originCity.id, 'name', originCity.name) AS origin
    FROM flights
    JOIN cities AS destinationCity ON flights."destinationCityId" = destinationCity.id
    JOIN cities AS originCity ON flights."originCityId" = originCity.id
    WHERE flights."destinationCityId" = $1`;

  const queryParams = [cityId];

  if (minPrice) {
    query += ` AND flights.price >= $${queryParams.length + 1}`;
    queryParams.push(minPrice);
  }

  if (maxPrice) {
    query += ` AND flights.price <= $${queryParams.length + 1}`;
    queryParams.push(maxPrice);
  }

  query += `
    GROUP BY flights.id, flights.airline, flights.price, flights.avatar, flights."arrivalTime", flights."departureTime",
      destinationCity.id, destinationCity.name, originCity.id, originCity.name`;

  return db.query(query, queryParams);
}


export function getFlightsDetailsDB(flightId) {
  return db.query(
    `
        SELECT flights.id, flights.airline, flights.price, flights.avatar, flights."arrivalTime", flights."departureTime",
            JSON_BUILD_OBJECT('id', destinationCity.id, 'name', destinationCity.name) AS destination,
            JSON_BUILD_OBJECT('id', originCity.id, 'name', originCity.name) AS origin
        FROM flights
        JOIN cities AS destinationCity ON flights."destinationCityId" = destinationCity.id
        JOIN cities AS originCity ON flights."originCityId" = originCity.id
        WHERE flights.id = $1
        GROUP BY flights.id, flights.airline, flights.price, flights.avatar, flights."arrivalTime", flights."departureTime",
            destinationCity.id, destinationCity.name, originCity.id, originCity.name
        `,
    [flightId]
  );
}

export function createFlightsDB(
  airline,
  destinationCityId,
  originCityId,
  price,
  avatar,
  arrivalTime,
  departureTime
) {
  return db.query(
    `INSERT INTO flights (
        airline,
        "destinationCityId",
        "originCityId",
        price,
        avatar,
        "arrivalTime",
        "departureTime")
        VALUES ($1, $2, $3, $4, $5, $6, $7)`,
    [
      airline,
      destinationCityId,
      originCityId,
      price,
      avatar,
      arrivalTime,
      departureTime,
    ]
  );
}

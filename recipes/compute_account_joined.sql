SELECT *
  FROM "dku"."account"
  LEFT JOIN "dku"."credit"
  ON "dku"."account".id = "dku"."credit".id;
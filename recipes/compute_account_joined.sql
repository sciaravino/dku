SELECT *
  FROM "dku"."account"
LEFT JOIN "dku"."credit"
on "dku"."account".id = "dku"."credit".id;
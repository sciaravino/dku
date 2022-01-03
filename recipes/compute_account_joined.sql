SELECT *
  FROM "dku"."account"
  LEFT JOIN "dku"."credit"
  ON "dku"."account".id = "dku"."credit".id;
  
ALTER TABLE "dku"."LEND_account_joined" drop id_1;
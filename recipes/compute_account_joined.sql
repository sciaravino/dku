SELECT 
    "account"."id" AS "id",
    "account"."emp_title" AS "emp_title",
    "account"."emp_length" AS "emp_length",
    "account"."home_ownership" AS "home_ownership",
    "account"."annual_inc" AS "annual_inc",
    "account"."verification_status" AS "verification_status",
    "account"."addr_state" AS "addr_state",
    "account"."mort_acc" AS "mort_acc",
    "credit"."dti" AS "dti",
    "credit"."delinq_2yrs" AS "delinq_2yrs",
    "credit"."earliest_cr_line" AS "earliest_cr_line",
    "credit"."fico_range_low" AS "fico_range_low",
    "credit"."fico_range_high" AS "fico_range_high",
    "credit"."inq_last_6mths" AS "inq_last_6mths",
    "credit"."mths_since_last_delinq" AS "mths_since_last_delinq",
    "credit"."open_acc" AS "open_acc",
    "credit"."pub_rec" AS "pub_rec",
    "credit"."acc_now_delinq" AS "acc_now_delinq",
    "credit"."all_util" AS "all_util",
    "credit"."inq_last_12m" AS "inq_last_12m",
    "credit"."chargeoff_within_12_mths" AS "chargeoff_within_12_mths",
    "credit"."num_accts_ever_120_pd" AS "num_accts_ever_120_pd"
  FROM "dku"."account" "account"
  LEFT JOIN "dku"."credit" "credit"
    ON "account"."id" = "credit"."id"
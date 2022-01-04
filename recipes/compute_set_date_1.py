# -*- coding: utf-8 -*-
import dataiku
import pandas as pd, numpy as np
from dataiku import pandasutils as pdu

# Read recipe inputs
data = dataiku.Dataset("Lending_Club_Scoring")
df = data.get_dataframe()

#add the start of the month so date can be parsed in future preparation and feature engineering
df['earliest_cr_line'] = df['earliest_cr_line'] + '-01'
df.head()

# Compute recipe outputs from inputs
# TODO: Replace this part by your actual code that computes the output, as a Pandas dataframe
# NB: DSS also supports other kinds of APIs for reading and writing data. Please see doc.

score_date_df = df # For this sample code, simply copy input to output


# Write recipe outputs
score_date = dataiku.Dataset("score_date")
score_date.write_with_schema(score_date_df)

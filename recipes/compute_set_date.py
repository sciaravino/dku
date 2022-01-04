# -*- coding: utf-8 -*-
import dataiku
import pandas as pd, numpy as np
from dataiku import pandasutils as pdu

# Read recipe inputs
full_data = dataiku.Dataset("full_data")
full_data_df = full_data.get_dataframe()

#df['b'] = df['b'] + 10
full_data_df['earliest_cr_line'] = full_data_df['eariest_cr_line'] + '-01'


# Compute recipe outputs from inputs
# TODO: Replace this part by your actual code that computes the output, as a Pandas dataframe
# NB: DSS also supports other kinds of APIs for reading and writing data. Please see doc.

set_date_df = full_data_df # For this sample code, simply copy input to output


# Write recipe outputs
set_date = dataiku.Dataset("set_date")
set_date.write_with_schema(set_date_df)

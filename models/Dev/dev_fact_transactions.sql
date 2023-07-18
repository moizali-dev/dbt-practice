{{ config(materialized='table',
          schema='your_target_schema',
          alias='dev_fact_transactions') }}

create or replace table Dev.fact_transactions as
select Invoice_ID, Unit_Price, Quantity
from dbtpractice-393200.rawtable.Supermarket_Sales
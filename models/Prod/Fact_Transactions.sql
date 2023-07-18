{{ config(materialized='table',
          schema='your_target_schema',
          alias='fact_transactions') }}

create or replace table Prod.fact_transactions as
select Invoice_ID, Unit_Price, Quantity
from dbtpractice-393200.rawtable.Supermarket_Sales
{{ config(materialized='table',
          schema='your_target_schema',
          alias='dim_productline') }}

create or replace table Prod.dim_productline as
select distinct Product_line 
from dbtpractice-393200.rawtable.Supermarket_Sales
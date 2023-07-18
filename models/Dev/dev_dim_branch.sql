{{ config(materialized='table',
          schema='your_target_schema',
          alias='dev_dim_branches') }}

create table Dev.dim_branches as
select distinct branch 
from dbtpractice-393200.rawtable.Supermarket_Sales
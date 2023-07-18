{{ config(materialized='table',
          schema='your_target_schema',
          alias='dim_branches') }}

create table Prod.dim_branches as
select distinct branch 
from dbtpractice-393200.rawtable.Supermarket_Sales
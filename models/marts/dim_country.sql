select distinct

    country,
    country_code

from {{ ref('stg_airbnb') }}
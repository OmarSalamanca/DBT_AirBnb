select distinct

    listing_id,
    listing_name,
    neighbourhood_group,
    neighbourhood,
    latitude,
    longitude,
    room_type,
    construction_year,
    minimum_nights,
    availability_365,
    instant_bookable,
    cancellation_policy,
    house_rules

from {{ ref('stg_airbnb') }}
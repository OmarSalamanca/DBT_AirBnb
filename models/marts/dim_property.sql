select distinct

    listing_id,
    host_id,
    country_code,

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
    house_rules,

    price,
    service_fee,
    number_of_reviews,
    reviews_per_month,
    review_rate_number,
    calculated_host_listings_count,
    last_review

from {{ ref('stg_airbnb') }}
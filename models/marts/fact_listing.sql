select

    listing_id,
    host_id,
    country_code,
    price,
    service_fee,
    number_of_reviews,
    reviews_per_month,
    review_rate_number,
    calculated_host_listings_count,
    last_review

from {{ ref('stg_airbnb') }}
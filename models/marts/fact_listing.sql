select

    p.listing_id,
    p.host_id,
    p.country_code,
    p.price,
    p.service_fee,
    p.number_of_reviews,
    p.reviews_per_month,
    p.review_rate_number,
    p.calculated_host_listings_count,
    p.last_review

from {{ ref('dim_property') }} p

left join {{ ref('dim_host') }} h
    on p.host_id = h.host_id

left join {{ ref('dim_country') }} c
    on p.country_code = c.country_code
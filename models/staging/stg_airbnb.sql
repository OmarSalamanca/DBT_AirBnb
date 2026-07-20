select

    ID as listing_id,
    NAME as listing_name,
    HOST_ID as host_id,
    HOST_NAME as host_name,
    HOST_IDENTITY_VERIFIED as host_identity_verified,
    NEIGHBOURHOOD_GROUP as neighbourhood_group,
    NEIGHBOURHOOD as neighbourhood,
    LAT as latitude,
    LONG as longitude,
    COUNTRY as country,
    COUNTRY_CODE as country_code,
    INSTANT_BOOKABLE as instant_bookable,
    CANCELLATION_POLICY as cancellation_policy,
    ROOM_TYPE as room_type,
    CONSTRUCTION_YEAR as construction_year,
    MINIMUM_NIGHTS as minimum_nights,
    NUMBER_OF_REVIEWS as number_of_reviews,
    LAST_REVIEW as last_review,
    REVIEWS_PER_MONTH as reviews_per_month,
    REVIEW_RATE_NUMBER as review_rate_number,
    CALCULATED_HOST_LISTINGS_COUNT as calculated_host_listings_count,
    AVAILABILITY_365 as availability_365,
    HOUSE_RULES as house_rules,
    LICENSE as license

from {{ source('airbnb', 'RAW_AIRBNB') }}
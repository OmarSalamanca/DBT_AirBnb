select

    ID as listing_id,
    trim(NAME) as listing_name,
    HOST_ID as host_id,
    trim(HOST_NAME) as host_name,
    HOST_IDENTITY_VERIFIED as host_identity_verified,
    trim(NEIGHBOURHOOD_GROUP) as neighbourhood_group,
    trim(NEIGHBOURHOOD) as neighbourhood,
    LAT as latitude,
    LONG as longitude,
    trim(COUNTRY) as country,
    trim(COUNTRY_CODE) as country_code,
    INSTANT_BOOKABLE as instant_bookable,
    CANCELLATION_POLICY as cancellation_policy,
    trim(ROOM_TYPE) as room_type,
    CONSTRUCTION_YEAR as construction_year,
    MINIMUM_NIGHTS as minimum_nights,
    NUMBER_OF_REVIEWS as number_of_reviews,
    LAST_REVIEW as last_review,
    REVIEWS_PER_MONTH as reviews_per_month,
    REVIEW_RATE_NUMBER as review_rate_number,
    CALCULATED_HOST_LISTINGS_COUNT as calculated_host_listings_count,
    AVAILABILITY_365 as availability_365,
    trim(HOUSE_RULES) as house_rules,
    trim(LICENSE) as license

from {{ source('airbnb', 'RAW_AIRBNB') }}
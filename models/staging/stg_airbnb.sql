with cleaned_data as (

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
        cast(replace(replace(PRICE, '$', ''), ',', '') as decimal(10,2)) as price,
        cast(replace(replace(SERVICE_FEE, '$', ''), ',', '') as decimal(10,2)) as service_fee,
        MINIMUM_NIGHTS as minimum_nights,
        NUMBER_OF_REVIEWS as number_of_reviews,
        LAST_REVIEW as last_review,
        REVIEWS_PER_MONTH as reviews_per_month,
        REVIEW_RATE_NUMBER as review_rate_number,
        CALCULATED_HOST_LISTINGS_COUNT as calculated_host_listings_count,
        AVAILABILITY_365 as availability_365,
        trim(HOUSE_RULES) as house_rules
       

    from {{ source('airbnb', 'RAW_AIRBNB') }}

    where
        ID is not null
        and NAME is not null
        and HOST_ID is not null
        and HOST_NAME is not null
        and HOST_IDENTITY_VERIFIED is not null
        and NEIGHBOURHOOD_GROUP is not null
        and NEIGHBOURHOOD is not null
        and LAT is not null
        and LONG is not null
        and COUNTRY is not null
        and COUNTRY_CODE is not null
        and INSTANT_BOOKABLE is not null
        and CANCELLATION_POLICY is not null
        and ROOM_TYPE is not null
        and CONSTRUCTION_YEAR is not null
        and PRICE is not null
        and SERVICE_FEE is not null
        and MINIMUM_NIGHTS is not null
        and NUMBER_OF_REVIEWS is not null
        and LAST_REVIEW is not null
        and REVIEWS_PER_MONTH is not null
        and REVIEW_RATE_NUMBER is not null
        and CALCULATED_HOST_LISTINGS_COUNT is not null
        and AVAILABILITY_365 is not null
        and HOUSE_RULES is not null

),

final_data as (

    select
        *,
        row_number() over (
            partition by listing_id
            order by listing_id
        ) as row_num

    from cleaned_data

)

select
    listing_id,
    listing_name,
    host_id,
    host_name,
    host_identity_verified,
    neighbourhood_group,
    neighbourhood,
    latitude,
    longitude,
    country,
    country_code,
    instant_bookable,
    cancellation_policy,
    room_type,
    construction_year,
    price,
    service_fee,
    minimum_nights,
    number_of_reviews,
    last_review,
    reviews_per_month,
    review_rate_number,
    calculated_host_listings_count,
    availability_365,
    house_rules
    

from final_data

where row_num = 1
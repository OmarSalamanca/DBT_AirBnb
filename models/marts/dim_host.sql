select distinct

    host_id,
    host_name,
    host_identity_verified

from {{ ref('stg_airbnb') }}
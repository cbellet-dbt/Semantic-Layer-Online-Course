with

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select

        ----------  ids
        string_field_0 as customer_id,

        ---------- properties
        string_field_1 as name

    from source

)

select * from renamed
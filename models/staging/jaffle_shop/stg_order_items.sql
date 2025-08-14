
with

source as (

    select * from {{ source('jaffle_shop', 'items') }}

),

renamed as (

    select

        ----------  ids
        string_field_0 as order_item_id,
        string_field_1 as order_id,

        ---------- properties
        string_field_2 as product_id

    from source

)

select * from renamed
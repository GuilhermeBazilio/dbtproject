{{
    config(
        materialized='table',
        pre_hook=[
            "
            BEGIN; LOCK TABLE {{target.schema}}.bireport;
            "
        ],
        post_hook=[
            "
            COMMIT;
            GRANT USAGE ON SCHEMA {{target.schema}} TO GROUP biuseres;
            GRANT SELECT ON TABLE {{target.schema}}.bireport TO GROUP biuseres;
            "
        ]
    )
}}

select * from {{ref('joins')}}
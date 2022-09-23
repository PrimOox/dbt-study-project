{% macro grant_select(schema=target.schema, role=target.user) %}

    {% set sql %}
        GRANT USAGE ON SCHEMA {{ schema }} TO {{ role }};
        grant select on all tables in schema {{ schema }} to {{ role }};
        grant select on all views in schema {{ schema }} to {{ role }};
    {% endset %}

    {{ log('Granting select on all tables and views in schema ' ~ target.schema ~ ' to user/role ' ~ role, info=True) }}
    {% do run_query(sql) %}
    {{ log('Privileges granted', info=True) }}

{% endmacro %}
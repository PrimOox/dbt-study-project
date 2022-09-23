{%- macro union_tables_by_pattern(schema_pattern, table_pattern) -%}

    {%- set tables = dbt_utils.get_relations_by_pattern(schema_pattern=schema_pattern, table_pattern=table_pattern) -%}

    {% for table in tables %}

        {%- if not loop.first -%}
        union all 
        {%- endif %}
        
        select * from {{ table.schema }}.{{ table.name }}
      
    {% endfor -%}
  
{%- endmacro -%}
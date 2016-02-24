- view: os
  sql_table_name: public.os
  fields:

  - dimension: os_id
    primary_key: true
    type: number
    sql: ${TABLE}.os_id

  - dimension: family
    type: string
    sql: ${TABLE}.family

  - dimension: version
    type: string
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [os_id, on_demand_listens.count]


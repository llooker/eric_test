- view: timezone
  sql_table_name: public.timezone
  fields:

  - dimension: timezone_id
    primary_key: true
    type: number
    sql: ${TABLE}.timezone_id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: string
    type: string
    sql: ${TABLE}.string

  - measure: count
    type: count
    drill_fields: [timezone_id, name, on_demand_listens.count]


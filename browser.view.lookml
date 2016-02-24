- view: browser
  sql_table_name: public.browser
  fields:

  - dimension: browser_id
    primary_key: true
    type: number
    sql: ${TABLE}.browser_id

  - dimension: family
    type: string
    sql: ${TABLE}.family

  - dimension: version
    type: string
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [browser_id, on_demand_listens.count]


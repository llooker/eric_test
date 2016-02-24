- view: client
  sql_table_name: public.client
  fields:

  - dimension: client_id
    primary_key: true
    type: number
    sql: ${TABLE}.client_id

  - dimension: client_is_mobile
    type: yesno
    sql: ${TABLE}.client_is_mobile

  - dimension: client_name
    type: string
    sql: ${TABLE}.client_name

  - measure: count
    type: count
    drill_fields: [client_id, client_name, on_demand_listens.count]


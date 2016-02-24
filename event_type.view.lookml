- view: event_type
  sql_table_name: public.event_type
  fields:

  - dimension: event_type_id
    primary_key: true
    type: number
    sql: ${TABLE}.event_type_id

  - dimension: event_type_name
    type: string
    sql: ${TABLE}.event_type_name

  - measure: count
    type: count
    drill_fields: [event_type_id, event_type_name, platform_events.count]


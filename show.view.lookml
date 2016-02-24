- view: show
  sql_table_name: public.show
  fields:

  - dimension: show_id
    primary_key: true
    type: number
    sql: ${TABLE}.show_id

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_date

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: owner
    type: string
    sql: ${TABLE}.owner

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date

  - measure: count
    type: count
    drill_fields: [show_id, name, episode.count, on_demand_listens.count]


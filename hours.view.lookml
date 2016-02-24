- view: hours
  sql_table_name: public.hours
  fields:

  - dimension: hour_id
    primary_key: true
    type: number
    sql: ${TABLE}.hour_id

  - dimension: day
    type: number
    sql: ${TABLE}.day

  - dimension: day_of_the_week
    type: number
    sql: ${TABLE}.day_of_the_week

  - dimension: fiscal_year
    type: number
    sql: ${TABLE}.fiscal_year

  - dimension: hour
    type: number
    sql: ${TABLE}.hour

  - dimension: iso_date
    type: string
    sql: ${TABLE}.iso_date

  - dimension: month
    type: number
    sql: ${TABLE}.month

  - dimension: pledge_drive
    type: number
    sql: ${TABLE}.pledge_drive

  - dimension: quarter
    type: number
    sql: ${TABLE}.quarter

  - dimension_group: timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp

  - dimension: week
    type: number
    sql: ${TABLE}.week

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [hour_id]


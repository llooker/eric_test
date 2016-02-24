- view: platform_events
  sql_table_name: public.platform_events
  fields:

  - dimension: cookie
    type: string
    sql: ${TABLE}.cookie

  - dimension: date_id
    type: number
    sql: ${TABLE}.date_id

  - dimension: event_type_id
    type: number
    # hidden: true
    sql: ${TABLE}.event_type_id

  - dimension: experiment_id
    type: number
    sql: ${TABLE}.experiment_id

  - dimension: ip
    type: number
    sql: ${TABLE}.ip

  - dimension: listener_id
    type: number
    sql: ${TABLE}.listener_id

  - dimension: referral_id
    type: number
    sql: ${TABLE}.referral_id

  - dimension: referrer_id
    type: number
    sql: ${TABLE}.referrer_id

  - dimension_group: timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp

  - measure: count
    type: count
    drill_fields: [event_type.event_type_id, event_type.event_type_name]


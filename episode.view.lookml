- view: episode
  sql_table_name: public.episode
  fields:

  - dimension: episode_id
    primary_key: true
    type: number
    sql: ${TABLE}.episode_id

  - dimension: episode_title
    type: string
    sql: ${TABLE}.episode_title

  - dimension_group: first_publish
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_publish_date

  - dimension: length
    type: number
    sql: ${TABLE}.length

  - dimension_group: news
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.news_date

  - dimension: series_title
    type: string
    sql: ${TABLE}.series_title

  - dimension: show_id
    type: number
    # hidden: true
    sql: ${TABLE}.show_id

  - measure: count
    type: count
    drill_fields: [episode_id, show.name, show.show_id, on_demand_listens.count, segment.count]


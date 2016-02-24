- view: segment
  sql_table_name: public.segment
  fields:

  - dimension: segment_id
    primary_key: true
    type: number
    sql: ${TABLE}.segment_id

  - dimension: episode_id
    type: number
    # hidden: true
    sql: ${TABLE}.episode_id

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

  - dimension: segment_title
    type: string
    sql: ${TABLE}.segment_title

  - dimension: series_title
    type: string
    sql: ${TABLE}.series_title

  - measure: count
    type: count
    drill_fields: [segment_id, episode.episode_id, on_demand_listens.count]


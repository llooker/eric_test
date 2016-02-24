- view: on_demand_listens
  sql_table_name: public.on_demand_listens
  fields:

  - dimension: browser_id
    type: number
    # hidden: true
    sql: ${TABLE}.browser_id

  - dimension: client_id
    type: number
    # hidden: true
    sql: ${TABLE}.client_id

  - dimension: cookie
    type: string
    sql: ${TABLE}.cookie

  - dimension: device_id
    type: number
    # hidden: true
    sql: ${TABLE}.device_id

  - dimension: episode_id
    type: number
    # hidden: true
    sql: ${TABLE}.episode_id

  - dimension: experiment_id
    type: number
    sql: ${TABLE}.experiment_id

  - dimension: file_size_bytes
    type: number
    sql: ${TABLE}.file_size_bytes

  - dimension: ip_useragent_hash
    type: string
    sql: ${TABLE}.ip_useragent_hash

  - dimension: listener_id
    type: number
    sql: ${TABLE}.listener_id

  - dimension: location_id
    type: number
    sql: ${TABLE}.location_id

  - dimension: loggedin_id
    type: number
    sql: ${TABLE}.loggedin_id

  - dimension: on_platform_duration
    type: number
    sql: ${TABLE}.on_platform_duration

  - dimension: os_id
    type: number
    # hidden: true
    sql: ${TABLE}.os_id

  - dimension: referral_id
    type: number
    sql: ${TABLE}.referral_id

  - dimension: seconds_downloaded
    type: number
    sql: ${TABLE}.seconds_downloaded

  - dimension: segment_id
    type: number
    # hidden: true
    sql: ${TABLE}.segment_id

  - dimension: show_id
    type: number
    # hidden: true
    sql: ${TABLE}.show_id

  - dimension: start_hour_id
    type: number
    sql: ${TABLE}.start_hour_id

  - dimension_group: timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp

  - dimension: timezone_id
    type: number
    # hidden: true
    sql: ${TABLE}.timezone_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - client.client_id
    - client.client_name
    - os.os_id
    - device.device_id
    - browser.browser_id
    - show.name
    - show.show_id
    - episode.episode_id
    - segment.segment_id
    - timezone.timezone_id
    - timezone.name


- view: device
  sql_table_name: public.device
  fields:

  - dimension: device_id
    primary_key: true
    type: number
    sql: ${TABLE}.device_id

  - dimension: brand
    type: string
    sql: ${TABLE}.brand

  - dimension: family
    type: string
    sql: ${TABLE}.family

  - dimension: is_mobile
    type: yesno
    sql: ${TABLE}.is_mobile

  - dimension: is_tablet
    type: yesno
    sql: ${TABLE}.is_tablet

  - dimension: is_touch
    type: yesno
    sql: ${TABLE}.is_touch

  - dimension: model
    type: string
    sql: ${TABLE}.model

  - measure: count
    type: count
    drill_fields: [device_id, on_demand_listens.count]


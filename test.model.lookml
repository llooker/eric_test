- connection: redshift

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: browser

- explore: client

- explore: device

- explore: episode
  joins:
    - join: show
      type: left_outer 
      sql_on: ${episode.show_id} = ${show.show_id}
      relationship: many_to_one


- explore: event_type

- explore: hours

- explore: on_demand_listens
  joins:
    - join: client
      type: left_outer 
      sql_on: ${on_demand_listens.client_id} = ${client.client_id}
      relationship: many_to_one

    - join: os
      type: left_outer 
      sql_on: ${on_demand_listens.os_id} = ${os.os_id}
      relationship: many_to_one

    - join: device
      type: left_outer 
      sql_on: ${on_demand_listens.device_id} = ${device.device_id}
      relationship: many_to_one

    - join: browser
      type: left_outer 
      sql_on: ${on_demand_listens.browser_id} = ${browser.browser_id}
      relationship: many_to_one

    - join: show
      type: left_outer 
      sql_on: ${on_demand_listens.show_id} = ${show.show_id}
      relationship: many_to_one

    - join: episode
      type: left_outer 
      sql_on: ${on_demand_listens.episode_id} = ${episode.episode_id}
      relationship: many_to_one

    - join: segment
      type: left_outer 
      sql_on: ${on_demand_listens.segment_id} = ${segment.segment_id}
      relationship: many_to_one

    - join: timezone
      type: left_outer 
      sql_on: ${on_demand_listens.timezone_id} = ${timezone.timezone_id}
      relationship: many_to_one


- explore: os

- explore: platform_events
  joins:
    - join: event_type
      type: left_outer 
      sql_on: ${platform_events.event_type_id} = ${event_type.event_type_id}
      relationship: many_to_one


- explore: segment
  joins:
    - join: episode
      type: left_outer 
      sql_on: ${segment.episode_id} = ${episode.episode_id}
      relationship: many_to_one

    - join: show
      type: left_outer 
      sql_on: ${episode.show_id} = ${show.show_id}
      relationship: many_to_one


- explore: show

- explore: timezone


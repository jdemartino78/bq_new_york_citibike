view: stations {
  sql_table_name:`bigquery-public-data.new_york_citibike.citibike_stations`;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: station_id {
    type: number
    sql: ${TABLE}.station_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  dimension: rental_methods {
    type: string
    sql: ${TABLE}.rental_methods ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }

  dimension: eightd_has_key_dispenser {
    type: string
    sql: ${TABLE}.eightd_has_key_dispenser ;;
  }

  dimension: num_bikes_available {
    type: number
    sql: ${TABLE}.num_bikes_available ;;
  }

  dimension: num_bikes_disabled {
    type: number
    sql: ${TABLE}.num_bikes_disabled ;;
  }

  dimension: num_docks_available {
    type: number
    sql: ${TABLE}.num_docks_available ;;
  }

  dimension: num_docks_disabled {
    type: number
    sql: ${TABLE}.num_docks_disabled ;;
  }

  dimension: is_installed {
    type: string
    sql: ${TABLE}.is_installed ;;
  }

  dimension: is_renting {
    type: string
    sql: ${TABLE}.is_renting ;;
  }

  dimension: is_returning {
    type: string
    sql: ${TABLE}.is_returning ;;
  }

  dimension: eightd_has_available_keys {
    type: string
    sql: ${TABLE}.eightd_has_available_keys ;;
  }

  dimension_group: last_reported {
    type: time
    timeframes: [raw,date,month,year]
    sql: ${TABLE}.last_reported ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      station_id,
      name,
      short_name,
      latitude,
      longitude,
      region_id,
      rental_methods,
      capacity,
      eightd_has_key_dispenser,
      num_bikes_available,
      num_bikes_disabled,
      num_docks_available,
      num_docks_disabled,
      is_installed,
      is_renting,
      is_returning,
      eightd_has_available_keys,
      location
    ]
  }
}

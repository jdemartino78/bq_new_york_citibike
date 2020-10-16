view: trips {
  sql_table_name: SELECT * FROM `bigquery-public-data.new_york_citibike.citibike_trips` ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tripduration {
    type: number
    sql: ${TABLE}.tripduration ;;
  }

  dimension_group: starttime {
    type: time
    datatype: datetime
    sql: ${TABLE}.starttime ;;
  }

  dimension_group: stoptime {
    type: time
    datatype: datetime
    sql: ${TABLE}.stoptime ;;
  }

  dimension: start_station_id {
    type: number
    sql: ${TABLE}.start_station_id ;;
  }

  dimension: start_station_name {
    type: string
    sql: ${TABLE}.start_station_name ;;
  }

  dimension: start_station_latitude {
    type: number
    sql: ${TABLE}.start_station_latitude ;;
  }

  dimension: start_station_longitude {
    type: number
    sql: ${TABLE}.start_station_longitude ;;
  }

  dimension: end_station_id {
    type: number
    sql: ${TABLE}.end_station_id ;;
  }

  dimension: end_station_name {
    type: string
    sql: ${TABLE}.end_station_name ;;
  }

  dimension: end_station_latitude {
    type: number
    sql: ${TABLE}.end_station_latitude ;;
  }

  dimension: end_station_longitude {
    type: number
    sql: ${TABLE}.end_station_longitude ;;
  }

  dimension: bikeid {
    type: number
    sql: ${TABLE}.bikeid ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  dimension: birth_year {
    type: number
    sql: ${TABLE}.birth_year ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: customer_plan {
    type: string
    sql: ${TABLE}.customer_plan ;;
  }

  set: detail {
    fields: [
      tripduration,
      starttime_time,
      stoptime_time,
      start_station_id,
      start_station_name,
      start_station_latitude,
      start_station_longitude,
      end_station_id,
      end_station_name,
      end_station_latitude,
      end_station_longitude,
      bikeid,
      usertype,
      birth_year,
      gender,
      customer_plan
    ]
  }
}

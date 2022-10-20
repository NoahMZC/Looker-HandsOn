view: stores {
  sql_table_name: `Looker_HandsOn.stores`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: map_data {
    type: location
    sql_latitude: ${TABLE}.Latitude ;;
    sql_longitude: ${TABLE}.Longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sq_ft {
    type: number
    sql: ${TABLE}.Sq_Ft ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, transaction.count]
  }
}

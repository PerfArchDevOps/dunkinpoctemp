view: looker_session {
  sql_table_name: FIVETRAN.LOOKER_SESSION ;;

  dimension: audsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AUDSID ;;
  }

  dimension: serial {
    type: number
    sql: ${TABLE}."SERIAL#" ;;
  }

  dimension: sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SID ;;
  }

  dimension: sql_id {
    type: string
    sql: ${TABLE}.SQL_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}

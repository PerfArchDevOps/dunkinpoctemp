view: looker_sql {
  sql_table_name: FIVETRAN.LOOKER_SQL ;;

  dimension: sql_id {
    type: string
    sql: ${TABLE}.SQL_ID ;;
  }

  dimension: sql_text {
    type: string
    sql: ${TABLE}.SQL_TEXT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

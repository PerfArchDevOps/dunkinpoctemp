view: dbi_bi_user_access {
  sql_table_name: BAL.DBI_BI_USER_ACCESS ;;

  dimension: access_hier_level_mstr_id_fk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ACCESS_HIER_LEVEL_MSTR_ID_FK ;;
  }

  dimension: dbi_user {
    type: string
    sql: ${TABLE}.DBI_USER ;;
  }

  dimension: hier_level_column_name {
    type: string
    sql: ${TABLE}.HIER_LEVEL_COLUMN_NAME ;;
  }

  dimension: hier_level_value {
    type: string
    sql: ${TABLE}.HIER_LEVEL_VALUE ;;
  }

  dimension: hierarchy_name {
    type: string
    sql: ${TABLE}.HIERARCHY_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [hierarchy_name, hier_level_column_name]
  }
}

view: dayprt_hour_d {
  sql_table_name: BAL.DAYPRT_HOUR_D ;;

  dimension: dayprt_duratn_in_min_nbr {
    type: number
    sql: ${TABLE}.DAYPRT_DURATN_IN_MIN_NBR ;;
  }

  dimension: dayprt_end_time {
    type: string
    sql: ${TABLE}.DAYPRT_END_TIME ;;
  }

  dimension: dayprt_grp_code {
    type: string
    sql: ${TABLE}.DAYPRT_GRP_CODE ;;
  }

  dimension: dayprt_grp_desc {
    type: string
    sql: ${TABLE}.DAYPRT_GRP_DESC ;;
  }

  dimension: dayprt_grp_id {
    type: number
    sql: ${TABLE}.DAYPRT_GRP_ID ;;
  }

  dimension: dayprt_hour_code {
    type: string
    sql: ${TABLE}.DAYPRT_HOUR_CODE ;;
  }

  dimension: dayprt_hour_desc {
    type: string
    sql: ${TABLE}.DAYPRT_HOUR_DESC ;;
  }

  dimension: dayprt_hour_nbr {
    type: number
    sql: ${TABLE}.DAYPRT_HOUR_NBR ;;
  }

  dimension: dayprt_start_time {
    type: string
    sql: ${TABLE}.DAYPRT_START_TIME ;;
  }

  dimension_group: dwh_creatd_datetm {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_dayprt_hour_id {
    type: number
    sql: ${TABLE}.DWH_DAYPRT_HOUR_ID ;;
  }

  dimension_group: dwh_updtd_datetm {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

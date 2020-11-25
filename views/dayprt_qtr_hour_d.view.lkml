view: dayprt_qtr_hour_d {
  sql_table_name: BAL.DAYPRT_QTR_HOUR_D ;;

  dimension: br_dayprt_super_grp_code {
    type: string
    label: "BR Daypart Super Group"
    hidden: no   sql: ${TABLE}.BR_DAYPRT_SUPER_GRP_CODE ;;
  }

  dimension: dayprt_code {
    type: string
    label: "Daypart"
    hidden: no   sql: ${TABLE}.DAYPRT_CODE ;;
  }

  dimension: dayprt_code_half_hour {
    type: string
    label: "Half Hour"
    hidden: no   sql: substr(${TABLE}.DAYPRT_CODE,1,5) ;;
  }

  dimension: dayprt_duratn_in_min {
    type: number
    hidden:yes   sql: ${TABLE}.DAYPRT_DURATN_IN_MIN ;;
  }

  dimension: dayprt_grp_code {
    type: string
    label: "Daypart Group"
    hidden:no   sql: ${TABLE}.DAYPRT_GRP_CODE ;;
  }

  dimension: dayprt_grp_desc {
    type: string
    label: "Daypart Description"
    hidden: no   sql: ${TABLE}.DAYPRT_GRP_DESC ;;
  }

  dimension: dayprt_hour_code {
    type: string
    label: "Hour"
    hidden:yes   sql: substr(${TABLE}.DAYPRT_HOUR_CODE, 1,5) ;;
  }

  dimension: dayprt_hour_desc {
    type: string
    hidden:yes   sql: ${TABLE}.DAYPRT_HOUR_DESC ;;
  }

  dimension: dayprt_long_desc {
    type: string
    hidden:yes   sql: ${TABLE}.DAYPRT_LONG_DESC ;;
  }

  dimension: dayprt_qtr_hour_desc {
    type: string
    hidden:yes   sql: ${TABLE}.DAYPRT_QTR_HOUR_DESC ;;
  }

  dimension: dayprt_qtr_hour_end_time_min {
    type: number
    hidden:yes   sql: ${TABLE}.DAYPRT_QTR_HOUR_END_TIME_MIN ;;
  }

  dimension: dayprt_qtr_hour_half_hour {
    type: string
    hidden:yes   sql: ${TABLE}.DAYPRT_QTR_HOUR_HALF_HOUR ;;
  }

  dimension: dayprt_qtr_hour_hour {
    type: number
    hidden:yes   sql: ${TABLE}.DAYPRT_QTR_HOUR_HOUR ;;
  }

  dimension: dayprt_qtr_hour_name {
    type: string
    label: "Quarter Hour"
    hidden:no   sql: ${TABLE}.DAYPRT_QTR_HOUR_NAME ;;
  }

  dimension: dayprt_qtr_hour_start_time_min {
    type: number
    hidden:yes   sql: ${TABLE}.DAYPRT_QTR_HOUR_START_TIME_MIN ;;
  }

  dimension: dayprt_short_desc {
    type: string
    hidden:yes   sql: ${TABLE}.DAYPRT_SHORT_DESC ;;
  }

  dimension: dd_dayprt_super_grp_code {
    type: string
    hidden:yes   sql: ${TABLE}.DD_DAYPRT_SUPER_GRP_CODE ;;
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
    hidden:yes   sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_dayprt_grp_id {
    type: number
    hidden:yes   sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
  }

  dimension: dwh_dayprt_qtr_hour_id {
    type: number
    primary_key: yes
    hidden:yes   sql: ${TABLE}.DWH_DAYPRT_QTR_HOUR_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    hidden:yes   sql: ${TABLE}.DWH_SRC_SYS_ID ;;
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
    hidden:yes   sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension: src_jda_time_qtr_hour_id {
    type: number
    hidden:yes   sql: ${TABLE}.SRC_JDA_TIME_QTR_HOUR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [dayprt_qtr_hour_name]
  }
}

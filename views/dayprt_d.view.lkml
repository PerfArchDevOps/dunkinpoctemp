view: dayprt_d {
  sql_table_name: FIVETRAN.DAYPRT_D ;;

  dimension: br_dayprt_super_grp_code {
    type: string
    label: "BR Daypart Super Group"
    sql: ${TABLE}.BR_DAYPRT_SUPER_GRP_CODE ;;
  }

  dimension: dayprt_code {
    type: string
    label: "Daypart Code"
    sql: ${TABLE}.DAYPRT_CODE ;;
  }

  dimension: dayprt_duratn_in_min {
    type: number
    hidden: yes
    sql: ${TABLE}.DAYPRT_DURATN_IN_MIN ;;
  }

  dimension: dayprt_end_min {
    type: number
    hidden: yes
    sql: ${TABLE}.DAYPRT_END_MIN ;;
  }

  dimension: dayprt_grp_code {
    type: string
    label: "Daypart Group"
    sql: ${TABLE}.DAYPRT_GRP_CODE ;;
  }

  dimension: dayprt_grp_desc {
    type: string
    label: "Daypart Group Description"
    sql: ${TABLE}.DAYPRT_GRP_DESC ;;
  }

  dimension: dayprt_hour {
    type: number
    hidden: yes
    sql: ${TABLE}.DAYPRT_HOUR ;;
  }

  dimension: dayprt_hour_code {
    type: string
    label: "Hour"
    sql: ${TABLE}.DAYPRT_HOUR_CODE ;;
  }

  dimension: dayprt_long_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.DAYPRT_LONG_DESC ;;
  }

  dimension: dayprt_short_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.DAYPRT_SHORT_DESC ;;
  }

  dimension: dayprt_start_min {
    type: number
    hidden: yes
    sql: ${TABLE}.DAYPRT_START_MIN ;;
  }

  dimension: dd_dayprt_super_grp_code {
    type: string
    label: "DD Daypart Super Group"
    sql: ${TABLE}.DD_DAYPRT_SUPER_GRP_CODE ;;
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
    hidden: yes
    sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_dayprt_grp_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
  }

  dimension: dwh_dayprt_id {
    type: number
    sql: ${TABLE}.DWH_DAYPRT_ID ;;
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
    hidden: yes
    datatype: date
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

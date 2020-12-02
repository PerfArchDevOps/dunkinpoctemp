view: dayprt_grp_d {
  label: "Dim - Daypart Group"
  sql_table_name: BAL.DAYPRT_GRP_D ;;

  dimension: actv_ind {
    type: string
    hidden:yes   sql: ${TABLE}.ACTV_IND ;;
  }

  dimension: br_dayprt_super_grp_code {
    type: string
    label: "BR Daypart Super Group"
    hidden:no   sql: ${TABLE}.BR_DAYPRT_SUPER_GRP_CODE ;;
  }

  dimension: dayprt_grp_code {
    type: string
    label: "Daypart Group"
    hidden:no   sql: ${TABLE}.DAYPRT_GRP_CODE ;;
  }

  dimension: dayprt_grp_desc {
    type: string
    label: "Daypart Group Description"
    hidden:no   sql: ${TABLE}.DAYPRT_GRP_DESC ;;
  }

  dimension: dd_dayprt_super_grp_code {
    type: string
    label: "DD Daypart Super Group"
    hidden:no   sql: ${TABLE}.DD_DAYPRT_SUPER_GRP_CODE ;;
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
    primary_key: yes
    hidden:yes   sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
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

  dimension: src_sys_code {
    type: string
    hidden:yes   sql: ${TABLE}.SRC_SYS_CODE ;;
  }

  dimension_group: valid_from {
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
    hidden:yes   sql: ${TABLE}.VALID_FROM_DATE ;;
  }

  dimension_group: valid_to {
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
    hidden:yes   sql: ${TABLE}.VALID_TO_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

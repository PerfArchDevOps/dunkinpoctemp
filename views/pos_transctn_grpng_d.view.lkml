view: pos_transctn_grpng_d {
  sql_table_name: BAL3.POS_TRANSCTN_GRPNG_D ;;

  dimension: actv_flg {
    type: string
    hidden:  yes
    sql: ${TABLE}.ACTV_FLG ;;
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
    hidden:  yes
    sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_pos_transctn_grpng_id {
    type: number
    primary_key: yes
    hidden:  yes
    sql: ${TABLE}.DWH_POS_TRANSCTN_GRPNG_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.DWH_SRC_SYS_ID ;;
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
    hidden:  yes
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension: transctn_grpng_desc {
    type: string
    hidden:  no
    label: "Transaction Grouping Desc"
    sql: ${TABLE}.TRANSCTN_GRPNG_DESC ;;
  }

  dimension: transctn_grpng_name {
    type: string
    hidden:  no
    label: "Transaction Grouping Name"
    sql: ${TABLE}.TRANSCTN_GRPNG_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [transctn_grpng_name]
  }
}

view: perks_spend_segmnt_d {
  sql_table_name: BAL.PERKS_SPEND_SEGMNT_D ;;

  dimension: actv_flg {
    type: string
    sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension_group: dwh_creatd {
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
    sql: ${TABLE}.DWH_CREATD_DATE ;;
  }

  dimension: dwh_perks_segmnt_id {
    type: number
    sql: ${TABLE}.DWH_PERKS_SEGMNT_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    sql: ${TABLE}.DWH_SRC_SYS_ID ;;
  }

  dimension_group: dwh_updtd {
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
    sql: ${TABLE}.DWH_UPDTD_DATE ;;
  }

  dimension: perks_segmnt_desc {
    type: string
    sql: ${TABLE}.PERKS_SEGMNT_DESC ;;
  }

  dimension: segmnt_end_amt {
    type: number
    sql: ${TABLE}.SEGMNT_END_AMT ;;
  }

  dimension: segmnt_sort_ordr_nbr {
    type: number
    sql: ${TABLE}.SEGMNT_SORT_ORDR_NBR ;;
  }

  dimension: segmnt_start_amt {
    type: number
    sql: ${TABLE}.SEGMNT_START_AMT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

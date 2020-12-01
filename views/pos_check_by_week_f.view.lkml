view: pos_check_by_week_f {
  label: "Fact - POS Check by Week"
  sql_table_name: BAL3.POS_CHECK_BY_WEEK_F ;;

  dimension: check_cnt_base {
    hidden: yes
    type: number
    sql: ${TABLE}.CHECK_CNT ;;
  }

  measure: check_cnt {
    label: "Check Count"
    type: number
    sql: ${TABLE}.CHECK_CNT ;;
  }

  dimension: check_cnt_ly_cnt_base {
    hidden: yes
    type: number
    sql: ${TABLE}.CHECK_CNT_LY_CNT ;;
  }

  measure: check_cnt_ly_cnt {
    label: "Check Count LY"
    type: number
    sql: ${TABLE}.CHECK_CNT_LY_CNT ;;
  }

  dimension: dwh_creatd_batch_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_CREATD_BATCH_ID ;;
  }

  dimension_group: dwh_creatd_datetm {
    hidden: yes
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

  dimension: dwh_pos_ordr_type_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
  }

  dimension: dwh_pos_transctn_grpng_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_POS_TRANSCTN_GRPNG_ID ;;
  }

  dimension: dwh_pos_transctn_type_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_POS_TRANSCTN_TYPE_ID ;;
  }

  dimension: dwh_shop_brand_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension: dwh_shop_rooftp_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
  }

  dimension: dwh_src_sys_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_SRC_SYS_ID ;;
  }

  dimension_group: dwh_updtd_datetm {
    hidden: yes
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

  dimension_group: transctn_bus {
    hidden: yes
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
    sql: ${TABLE}.TRANSCTN_BUS_DATE ;;
  }

  dimension: yoy_sales_week_ind {
    hidden: yes
    type: number
    sql: ${TABLE}.YOY_SALES_WEEK_IND ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}

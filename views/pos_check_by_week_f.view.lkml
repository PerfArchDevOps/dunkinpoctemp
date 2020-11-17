view: pos_check_by_week_f {
  sql_table_name: FIVETRAN.POS_CHECK_BY_WEEK_F ;;

  dimension: check_cnt {
    type: number
    sql: ${TABLE}.CHECK_CNT ;;
  }

  dimension: check_cnt_ly_cnt {
    type: number
    sql: ${TABLE}.CHECK_CNT_LY_CNT ;;
  }

  dimension: dwh_creatd_batch_id {
    type: number
    sql: ${TABLE}.DWH_CREATD_BATCH_ID ;;
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

  dimension: dwh_pos_ordr_type_id {
    type: number
    sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
  }

  dimension: dwh_pos_transctn_grpng_id {
    type: number
    sql: ${TABLE}.DWH_POS_TRANSCTN_GRPNG_ID ;;
  }

  dimension: dwh_pos_transctn_type_id {
    type: number
    sql: ${TABLE}.DWH_POS_TRANSCTN_TYPE_ID ;;
  }

  dimension: dwh_shop_brand_id {
    type: number
    sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension: dwh_shop_rooftp_id {
    type: number
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
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
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension_group: transctn_bus {
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
    type: number
    sql: ${TABLE}.YOY_SALES_WEEK_IND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

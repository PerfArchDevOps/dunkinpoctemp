view: shop_brand_class_fl {
  sql_table_name: FIVETRAN.SHOP_BRAND_CLASS_FL ;;

  dimension: class_code {
    type: string
    sql: ${TABLE}.CLASS_CODE ;;
  }

  dimension: class_long_desc {
    type: string
    sql: ${TABLE}.CLASS_LONG_DESC ;;
  }

  dimension: class_short_desc {
    type: string
    sql: ${TABLE}.CLASS_SHORT_DESC ;;
  }

  dimension: close_type_code {
    type: string
    sql: ${TABLE}.CLOSE_TYPE_CODE ;;
  }

  dimension: close_type_desc {
    type: string
    sql: ${TABLE}.CLOSE_TYPE_DESC ;;
  }

  dimension: configrtn_desc {
    type: string
    sql: ${TABLE}.CONFIGRTN_DESC ;;
  }

  dimension_group: curr_open {
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
    sql: ${TABLE}.CURR_OPEN_DATE ;;
  }

  dimension: dine_in_flg {
    type: string
    sql: ${TABLE}.DINE_IN_FLG ;;
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

  dimension: opertn_stat_code {
    type: string
    sql: ${TABLE}.OPERTN_STAT_CODE ;;
  }

  dimension: opertn_stat_desc {
    type: string
    sql: ${TABLE}.OPERTN_STAT_DESC ;;
  }

  dimension: ovride_comp_day_ind {
    type: number
    sql: ${TABLE}.OVRIDE_COMP_DAY_IND ;;
  }

  dimension: ovride_comp_week_ind {
    type: number
    sql: ${TABLE}.OVRIDE_COMP_WEEK_IND ;;
  }

  dimension_group: shop_brand_class {
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
    sql: ${TABLE}.SHOP_BRAND_CLASS_DATE ;;
  }

  dimension: walk_in_flg {
    type: string
    sql: ${TABLE}.WALK_IN_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

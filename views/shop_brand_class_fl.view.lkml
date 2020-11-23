view: shop_brand_class_fl {
  sql_table_name: BAL3.SHOP_BRAND_CLASS_FL ;;

  dimension: class_code {
    type: string
    hidden:no
    label: "Historical Brand Class"
    sql:  CASE
    WHEN ${TABLE}.CLASS_CODE = '3'
    THEN 'POST FIRST YEAR'
    ELSE ${TABLE}.CLASS_LONG_DESC END  ;;
  }

  dimension: class_long_desc {
    type: string
    hidden:yes   sql: ${TABLE}.CLASS_LONG_DESC ;;
  }

  dimension: class_short_desc {
    type: string
    hidden:yes   sql: ${TABLE}.CLASS_SHORT_DESC ;;
  }

  dimension: close_type_code {
    type: string
    hidden:yes   sql: ${TABLE}.CLOSE_TYPE_CODE ;;
  }

  dimension: close_type_desc {
    type: string
    hidden:yes   sql: ${TABLE}.CLOSE_TYPE_DESC ;;
  }

  dimension: configrtn_desc {
    type: string
    label: "Historical Configuration"
    hidden:no
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
    hidden:yes   sql: ${TABLE}.CURR_OPEN_DATE ;;
  }

  dimension: dine_in_flg {
    type: string
    hidden:no
    label: "Historical Dine-In Indicator"
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
    hidden:yes   sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_shop_brand_id {
    type: number
    hidden:yes   sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }



  dimension: dwh_shop_rooftp_id {
    type: number
    hidden:yes   sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
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




  dimension: opertn_stat_code {
    type: string
    hidden:yes   sql: ${TABLE}.OPERTN_STAT_CODE ;;
  }

  dimension: opertn_stat_desc {
    type: string
    hidden:no
    label: "Historical Shop Status"
    sql: ${TABLE}.OPERTN_STAT_DESC ;;
  }

  dimension: ovride_comp_day_ind {
    type: number
    hidden:yes   sql: ${TABLE}.OVRIDE_COMP_DAY_IND ;;
  }

  dimension: ovride_comp_week_ind {
    type: number
    hidden:yes   sql: ${TABLE}.OVRIDE_COMP_WEEK_IND ;;
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
    hidden:yes   sql: ${TABLE}.SHOP_BRAND_CLASS_DATE ;;
  }


  dimension: dwh_shop_primary_key {
    type: number
    hidden:yes
    sql: to_char(${TABLE}.DWH_SHOP_BRAND_ID) ||
      to_char(${dwh_shop_rooftp_id} || to_char(${shop_brand_class_date};;
  }


  dimension: walk_in_flg {
    type: string
    hidden:no
    label: "Historical Walk-In Indicator"
    sql: ${TABLE}.WALK_IN_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

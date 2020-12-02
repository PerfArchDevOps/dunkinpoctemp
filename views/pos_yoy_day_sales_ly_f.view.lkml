view: pos_yoy_day_sales_ly_f {
  label: "Fact - POS YOY Day Sales"
  sql_table_name: BAL3.POS_YOY_DAY_SALES_F ;;

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

  dimension: dwh_shop_brand_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension: dwh_shop_rooftp_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
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
    hidden:yes
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension: sales_ind_ly {
    type: number
    sql: ${TABLE}.SALES_IND_LY ;;
  }

  dimension: sales_ind_ty {
    type: number
    sql: ${TABLE}.SALES_IND_TY ;;
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
    hidden: no
    sql: ${TABLE}.TRANSCTN_BUS_DATE ;;
  }

  measure: site_day_count_sssd {
    label: "Site Day Count SSSD LY"
    type: count_distinct
    sql:  CAST( ${TABLE}."DWH_SHOP_ROOFTP_ID" AS VARCHAR(10))   ||
      CAST( ${TABLE}."TRANSCTN_BUS_DATE" AS VARCHAR(10)) ;;
    drill_fields: []
  }

  measure: site_count_sssd {
    label: "Site Count SSSD LY"
    type: count_distinct
    sql:  CAST( ${TABLE}."DWH_SHOP_ROOFTP_ID" AS VARCHAR(10))  ;;
    drill_fields: []
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }

}

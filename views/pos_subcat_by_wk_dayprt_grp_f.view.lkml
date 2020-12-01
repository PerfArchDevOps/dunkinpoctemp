view: pos_subcat_by_wk_dayprt_grp_f {
  label: "Fact - POS Sub Category by Week Daypart"
  sql_table_name: BAL3.POS_SUBCAT_BY_WK_DAYPRT_GRP_F ;;

  dimension: discnt_amt {
    type: number
    sql: ${TABLE}.DISCNT_AMT ;;
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

  dimension: dwh_dayprt_grp_id {
    type: number
    sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
  }

  dimension: dwh_item_sub_catgry_id {
    type: number
    sql: ${TABLE}.DWH_ITEM_SUB_CATGRY_ID ;;
  }

  dimension: dwh_pos_ordr_type_id {
    type: number
    sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
  }

  dimension: dwh_shop_brand_id {
    type: number
    sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension: dwh_shop_rooftp_id {
    type: number
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
  }

  dimension: gross_sales_amt {
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  dimension: gross_sales_amt_ly {
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT_LY ;;
  }

  dimension: gross_units_all_qty {
    type: number
    sql: ${TABLE}.GROSS_UNITS_ALL_QTY ;;
  }

  dimension: gross_units_ly_qty {
    type: number
    sql: ${TABLE}.GROSS_UNITS_LY_QTY ;;
  }

  dimension: gross_units_qty {
    type: number
    sql: ${TABLE}.GROSS_UNITS_QTY ;;
  }

  dimension: net_sales_amt {
    type: number
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  dimension: net_sales_amt_ly {
    type: number
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
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
    type: string
    sql: ${TABLE}.YOY_SALES_WEEK_IND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: pos_brand_by_week_dayprt_grp_f {
  label: "Fact - POS Brand by Week Dayprt Grp"
  sql_table_name: BAL3.POS_BRAND_BY_WEEK_DAYPRT_GRP_F ;;

  dimension: discnt_amt_base {
    hidden: yes
    type: number
    sql: ${TABLE}.DISCNT_AMT ;;
  }

  measure: discnt_amt {
    label: "Discount Amt"
    type: number
    hidden: yes
    sql: ${TABLE}.DISCNT_AMT ;;
  }

  dimension_group: dwh_creatd {
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
    sql: ${TABLE}.DWH_CREATD_DATE ;;
  }

  dimension: dwh_dayprt_grp_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
  }

  dimension: dwh_item_brand_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_ITEM_BRAND_ID ;;
  }

  dimension: dwh_pos_ordr_type_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
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

  dimension: gross_sales_amt_base {
   hidden: yes
   type: number
    sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  measure: gross_sales_amt {
    label: "Gross Sales Amt"
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  dimension: gross_sales_amt_ly_base {
  hidden: yes
  type: number
    sql: ${TABLE}.GROSS_SALES_AMT_LY ;;
  }

  measure: gross_sales_amt_ly {
    label: "Gross Sales Amt LY"
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT_LY ;;
  }

  dimension: gross_units_all_qty_base {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_UNITS_ALL_QTY ;;
  }

  measure: gross_units_all_qty {
    label: "Gross Units All Qty"
    type: number
    sql: ${TABLE}.GROSS_UNITS_ALL_QTY ;;
  }

  dimension: gross_units_ly_qty_base {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_UNITS_LY_QTY ;;
  }

  measure: gross_units_ly_qty {
    label: "Gross Units Qty LY"
    type: number
    sql: ${TABLE}.GROSS_UNITS_LY_QTY ;;
  }

  dimension: gross_units_qty_base {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_UNITS_QTY ;;
  }

  measure: gross_units_qty {
    label: "Gross Units Qty"
    type: number
    sql: ${TABLE}.GROSS_UNITS_QTY ;;
  }

  dimension: net_sales_amt_base {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  measure: net_sales_amt_noncomp {
    label: "Net Sales Amt"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  measure: net_sales_amt {
    label: "Net Sales Amt SSSW"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  dimension: net_sales_amt_ly_base {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
  }

  measure: net_sales_amt_ly {
    label: "Net Sales Amt SSSW LY"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
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
    type: string
    sql: ${TABLE}.YOY_SALES_WEEK_IND ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}

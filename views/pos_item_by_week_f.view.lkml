view: pos_item_by_week_f {
  label: "Fact - POS Item by Week"
  sql_table_name: BAL3.POS_ITEM_BY_WEEK_F ;;

  dimension: discnt_amt_base {
    hidden: yes
    type: number
    sql: ${TABLE}.DISCNT_AMT ;;
  }

  measure: discnt_amt {
    label: "Discount Amt"
    type: number
    sql: ${TABLE}.DISCNT_AMT ;;
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

  dimension: dwh_pos_menu_item_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DWH_POS_MENU_ITEM_ID ;;
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

  dimension: gross_units_ly_qty_base {
    hidden:yes
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

  measure: net_sales_amt {
    label: "Net Sales Amt SSSD"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  dimension: net_sales_amt_ly_base {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
  }

  measure: net_sales_amt_ly {
    label: "Net Sales Amt LY SSSD"
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
    hidden: no
    type: number
    sql: ${TABLE}.YOY_SALES_WEEK_IND ;;
  }

  measure: net_sales_growth_sssd {
    label: "Net Sales Growth SSSD"
    type: sum
    sql: ifnull(${net_sales_amt_base},0)-ifnull(${net_sales_amt_ly_base},0) ;;
  }

  measure: net_sales_growth_pct_sssd {
    label: "Net Sales Growth % SSSD"
    type: sum
    sql: (ifnull(${net_sales_amt_base},0)/ifnull(${net_sales_amt_ly_base},0)*100) ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}

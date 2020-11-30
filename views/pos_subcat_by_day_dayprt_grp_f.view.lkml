view: pos_subcat_by_day_dayprt_grp_f {
  sql_table_name: BAL3.POS_SUBCAT_BY_DAY_DAYPRT_GRP_F ;;

  dimension: discnt_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.DISCNT_AMT ;;
  }

  measure: discnt_amt {
    label: "Discount Amt"
    type: number
    sql: ${TABLE}.DISCNT_AMT ;;
  }

  dimension_group: dwh_creatd {
    type: time
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
  }

  dimension: dwh_item_sub_catgry_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_ITEM_SUB_CATGRY_ID ;;
  }

  dimension: dwh_pos_ordr_type_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
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

  dimension: gross_sales_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  measure: gross_sales_amt {
    label: "Gross Sales Amt"
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  dimension: gross_sales_amt_ly_base {
    type: number
    hidden: yes
    sql: ${TABLE}.GROSS_SALES_AMT_LY ;;
  }

  measure: gross_sales_amt_ly {
    label: "Gross Sales Amt LY"
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT_LY ;;
  }

  dimension: gross_units_all_qty_base {
    type: number
    hidden: yes
    sql: ${TABLE}.GROSS_UNITS_ALL_QTY ;;
  }

  measure: gross_units_all_qty {
    label: "Gross Units All QTY"
    type: number
    sql: ${TABLE}.GROSS_UNITS_ALL_QTY ;;
  }

  dimension: gross_units_ly_qty_base {
    type: number
    hidden: yes
    sql: ${TABLE}.GROSS_UNITS_LY_QTY ;;
  }

  measure: gross_units_ly_qty {
    label: "Gross Units LY QTY"
    type: number
    sql: ${TABLE}.GROSS_UNITS_LY_QTY ;;
  }

  dimension: gross_units_qty_base {
    type: number
    hidden: yes
    sql: ${TABLE}.GROSS_UNITS_QTY ;;
  }

  measure: gross_units_qty {
    label: "Gross Units QTY"
    type: number
    sql: ${TABLE}.GROSS_UNITS_QTY ;;
  }

  dimension: net_sales_amt_base {
    type: number
    hidden: yes
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  measure: net_sales_amt {
    label: "Net Sales Amt SSSD"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  dimension: net_sales_amt_ly_base {
    type: number
    hidden: yes
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
  }

  measure: net_sales_amt_ly {
    label: "Net Sales Amt LY SSSD"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
  }

  dimension_group: transctn_bus {
    type: time
    hidden: yes
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

  dimension: yoy_sales_day_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.YOY_SALES_DAY_IND ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}

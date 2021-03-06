view: pos_brand_by_day_dayprt_grp_f {
  label: "Fact - POS Brandy by Day Dayprt Grp"
  sql_table_name: BAL3.POS_BRAND_BY_DAY_DAYPRT_GRP_F ;;

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

  measure: net_sales_amt_base {
    hidden: no
    label: "Net Sales Amt"
    type: sum
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
    label: "Net Sales Amt SSSD LY"
    type: sum
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
  }


# Filtered measures

  measure: br_net_sales_amt {
    type: sum
    label: "BR Net Sales Amt"
    sql: case when shop_brand_mastr_d.brand_code = 'BR' then  ${TABLE}.NET_SALES_AMT else 0 end ;;
  }

  measure: dd_net_sales_amt {
    type: sum
    label: "DD Net Sales Amt"
    sql: case when shop_brand_mastr_d.brand_code = 'DD' then  ${TABLE}.NET_SALES_AMT else 0 end ;;
  }

# Level based measures

  measure: pct_tot_net_sales_amt {
    type: percent_of_total
    label: "% Total Net Sales Amt"
    sql: sum(${TABLE}.NET_SALES_AMT) ;;
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

  dimension: yoy_sales_day_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.YOY_SALES_DAY_IND ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}

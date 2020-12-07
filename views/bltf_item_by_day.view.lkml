view: bltf_item_by_day {
  sql_table_name: BAL3.BLTF_ITEM_BY_DAY ;;

  label: "Fact - BLTF Item By Day"

  dimension: dwh_ordr_type_id {
    type: number
    hidden: yes  sql: ${TABLE}.DWH_ORDR_TYPE_ID ;;
  }

  dimension: dwh_pos_menu_item_id {
    type: number
    hidden: yes  sql: ${TABLE}.DWH_POS_MENU_ITEM_ID ;;
  }

  dimension: dwh_shop_brand_id {
    type: number
    hidden: yes  sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension_group: etl_load {
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
    hidden: yes  sql: ${TABLE}.ETL_LOAD_DATE ;;
  }

  dimension: gross_sales_amt {
    type: number
    hidden: yes  sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  dimension: gross_units_all_qty {
    type: number
    hidden: yes  sql: ${TABLE}.GROSS_UNITS_ALL_QTY ;;
  }

  dimension: gross_units_qty {
    type: number
    hidden: yes  sql: ${TABLE}.GROSS_UNITS_QTY ;;
  }

  dimension: item_sales_id {
    type: number
    hidden: yes  sql: ${TABLE}.ITEM_SALES_ID ;;
  }

  measure: net_sales_amt {
    type: sum
    hidden: no  sql: ${TABLE}.NET_SALES_AMT ;;
  }

  dimension: perks_card_type_flg {
    type: string
    hidden: yes  sql: ${TABLE}.PERKS_CARD_TYPE_FLG ;;
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
    hidden: yes  sql: ${TABLE}.TRANSCTN_BUS_DATE ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}

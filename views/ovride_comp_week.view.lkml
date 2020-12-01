view: ovride_comp_week {
  sql_table_name: BAL3.OVRIDE_COMP_WEEK ;;

  dimension: dwh_shop_brand_id {
    type: number
    sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension_group: ovride_comp {
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
    sql: ${TABLE}.OVRIDE_COMP_DATE ;;
  }

  dimension: ovride_comp_week_ind {
    type: number
    sql: ${TABLE}.OVRIDE_COMP_WEEK_IND ;;
  }

}

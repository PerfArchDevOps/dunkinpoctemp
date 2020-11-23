view: ovride_comp_day {
  sql_table_name: BAL3.OVRIDE_COMP_DAY;;

  dimension: dwh_shop_brand_id {
    type: number
    sql: ${TABLE}.dwh_shop_brand_id ;;
  }

  dimension_group: ovride_comp_date {
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
    sql: ${TABLE}.OVRIDE_COMP_DATE;;
  }

  dimension: ovride_comp_day_ind {
    type: number
    sql: ${TABLE}.OVRIDE_COMP_DAY_IND ;;
  }
}

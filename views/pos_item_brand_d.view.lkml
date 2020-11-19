view: pos_item_brand_d {
  sql_table_name: BAL3.POS_ITEM_BRAND_D ;;

  dimension: actv_flg {
    type: string
    sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension_group: creatd {
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
    sql: ${TABLE}.CREATD_DATE ;;
  }

  dimension: dwh_item_brand_id {
    type: number
    sql: ${TABLE}.DWH_ITEM_BRAND_ID ;;
  }

  dimension: item_brand_desc {
    type: string
    sql: ${TABLE}.ITEM_BRAND_DESC ;;
  }

  dimension: item_brand_name {
    type: string
    sql: ${TABLE}.ITEM_BRAND_NAME ;;
  }

  dimension_group: last_updt {
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
    sql: ${TABLE}.LAST_UPDT_DATE ;;
  }

  dimension: src_item_brand_code {
    type: string
    sql: ${TABLE}.SRC_ITEM_BRAND_CODE ;;
  }

  dimension: src_sys_code {
    type: string
    sql: ${TABLE}.SRC_SYS_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [item_brand_name]
  }
}

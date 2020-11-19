view: shop_locatn_d {
  sql_table_name: FIVETRAN.SHOP_LOCATN_D ;;

  dimension: actv_flg {
    type: string
    sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: city_desc {
    type: string
    sql: ${TABLE}.CITY_DESC ;;
  }

  dimension: cntry_code {
    type: string
    sql: ${TABLE}.CNTRY_CODE ;;
  }

  dimension: cntry_desc {
    type: string
    sql: ${TABLE}.CNTRY_DESC ;;
  }

  dimension: creatd_by {
    type: string
    sql: ${TABLE}.CREATD_BY ;;
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

  dimension: geo_zone_code {
    type: string
    sql: ${TABLE}.GEO_ZONE_CODE ;;
  }

  dimension: geo_zone_desc {
    type: string
    sql: ${TABLE}.GEO_ZONE_DESC ;;
  }

  dimension: last_updt_by {
    type: string
    sql: ${TABLE}.LAST_UPDT_BY ;;
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

  dimension: shop_locatn_id {
    type: number
    sql: ${TABLE}.SHOP_LOCATN_ID ;;
  }

  dimension: src_sys_code {
    type: string
    sql: ${TABLE}.SRC_SYS_CODE ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.STATE_CODE ;;
  }

  dimension: state_desc {
    type: string
    sql: ${TABLE}.STATE_DESC ;;
  }

  dimension: zip_code_1 {
    type: string
    sql: ${TABLE}.ZIP_CODE_1 ;;
  }

  dimension: zip_code_2 {
    type: string
    sql: ${TABLE}.ZIP_CODE_2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

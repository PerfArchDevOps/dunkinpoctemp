view: shop_locatn_d {
  sql_table_name: BAL2.SHOP_LOCATN_D ;;

  dimension: actv_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension: city_code {
    type: string
    hidden: yes
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: city_desc {
    type: string
    hidden: no
    label: "City"
    sql: ${TABLE}.CITY_DESC ;;
  }

  dimension: cntry_code {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_CODE ;;
  }

  dimension: cntry_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_DESC ;;
  }

  dimension: creatd_by {
    type: string
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.CREATD_DATE ;;
  }

  dimension: geo_zone_code {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO_ZONE_CODE ;;
  }

  dimension: geo_zone_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO_ZONE_DESC ;;
  }

  dimension: last_updt_by {
    type: string
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.LAST_UPDT_DATE ;;
  }

  dimension: shop_locatn_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.SHOP_LOCATN_ID ;;
  }

  dimension: src_sys_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SRC_SYS_CODE ;;
  }

  dimension: state_code {
    type: string
    hidden: no
    label: "State"
    sql: ${TABLE}.STATE_CODE ;;
  }

  dimension: state_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.STATE_DESC ;;
  }

  dimension: zip_code_1 {
    type: string
    hidden: no
    label: "Zip"
    sql: ${TABLE}.ZIP_CODE_1 ;;
  }

  dimension: zip_code_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.ZIP_CODE_2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

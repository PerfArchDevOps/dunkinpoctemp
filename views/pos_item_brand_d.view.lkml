view: pos_item_brand_d {
  label: "Dim - POS Item Brand"
  sql_table_name: BAL3.POS_ITEM_BRAND_D ;;

  dimension: actv_flg {
    type: string
    hidden:yes   sql: ${TABLE}.ACTV_FLG ;;
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
    hidden:yes   sql: ${TABLE}.CREATD_DATE ;;
  }

  dimension: dwh_item_brand_id {
    type: number
    primary_key: yes
    hidden:yes   sql: ${TABLE}.DWH_ITEM_BRAND_ID ;;
  }

  dimension: item_brand_desc {
    type: string
    hidden:yes   sql: ${TABLE}.ITEM_BRAND_DESC ;;
  }

  dimension: item_brand_name {
    type: string
    label: "Item Brand"
    hidden:no   sql: ${TABLE}.ITEM_BRAND_NAME ;;
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
    hidden:yes   sql: ${TABLE}.LAST_UPDT_DATE ;;
  }

  dimension: src_item_brand_code {
    type: string
    hidden:yes   sql: ${TABLE}.SRC_ITEM_BRAND_CODE ;;
  }

  dimension: src_sys_code {
    type: string
    hidden:yes   sql: ${TABLE}.SRC_SYS_CODE ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [item_brand_name]
  }
}

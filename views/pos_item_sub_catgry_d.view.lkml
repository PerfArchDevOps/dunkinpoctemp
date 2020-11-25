view: pos_item_sub_catgry_d {
  sql_table_name: BAL3.POS_ITEM_SUB_CATGRY_D ;;

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

  dimension: dbi_item_brand_name {
    type: string
    hidden:no
    label: "Item Brand"
    sql: ${TABLE}.DBI_ITEM_BRAND_NAME ;;
  }

  dimension: dbi_item_catgry_name {
    type: string
    label: "Category"
    hidden:no   sql: ${TABLE}.DBI_ITEM_CATGRY_NAME ;;
  }

  dimension: dbi_item_sub_catgry_name {
    type: string
    label: "Sub Category"
    hidden:no   sql: ${TABLE}.DBI_ITEM_SUB_CATGRY_NAME ;;
  }

  dimension: dwh_item_sub_catgry_id {
    type: number
    primary_key: yes
    hidden:yes   sql: ${TABLE}.DWH_ITEM_SUB_CATGRY_ID ;;
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

  measure: count {
    type: count
    drill_fields: [dbi_item_sub_catgry_name, dbi_item_brand_name, dbi_item_catgry_name]
  }
}

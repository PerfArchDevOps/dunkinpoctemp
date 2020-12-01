view: pos_menu_item_d {
  label: "Dim - POS Menu Item"
  sql_table_name: BAL3.POS_MENU_ITEM_D ;;

  dimension: actv_flg {
    type: string
    hidden:yes   sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension: alt_dbi_item_name {
    type: string
    label: "Sales Item"
    hidden:no   sql: ${TABLE}.ALT_DBI_ITEM_NAME ;;
  }

  dimension: dbi_item_brand_name {
    type: string
    label: "Item Brand"
    hidden:no   sql: ${TABLE}.DBI_ITEM_BRAND_NAME ;;
  }

  dimension: dbi_item_catgry_name {
    type: string
    label: "Category"
    hidden:no   sql: ${TABLE}.DBI_ITEM_CATGRY_NAME ;;
  }

  dimension: dbi_item_famly_name {
    type: string
    label: "Family"
    hidden:no   sql: ${TABLE}.DBI_ITEM_FAMLY_NAME ;;
  }

  dimension: dbi_item_size_name {
    type: string
    label: "Item Size"
    hidden:no   sql: ${TABLE}.DBI_ITEM_SIZE_NAME ;;
  }

  dimension: dbi_item_sub_catgry_name {
    type: string
    label: "Sub Category"
    hidden:yes   sql: ${TABLE}.DBI_ITEM_SUB_CATGRY_NAME ;;
  }

  dimension: dwh_creatd_batch_id {
    type: number
    hidden:yes   sql: ${TABLE}.DWH_CREATD_BATCH_ID ;;
  }

  dimension_group: dwh_creatd_datetm {
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
    hidden:yes   sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_pos_menu_item_id {
    type: number
    primary_key: yes
    hidden:yes   sql: ${TABLE}.DWH_POS_MENU_ITEM_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    hidden:yes   sql: ${TABLE}.DWH_SRC_SYS_ID ;;
  }

  dimension_group: dwh_updtd_datetm {
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
    hidden:yes   sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension: famly_grp_name {
    type: string
    label: "Micros Family Group Name"
    hidden:no   sql: ${TABLE}.FAMLY_GRP_NAME ;;
  }

  dimension: famly_grp_nbr {
    type: number
    label: "Micros Family Group Number"
    hidden:no   sql: ${TABLE}.FAMLY_GRP_NBR ;;
  }

  dimension: item_brand_code {
    type: string
    label: "Micros Item Brand Code"
    hidden:no  sql: ${TABLE}.ITEM_BRAND_CODE ;;
  }

  dimension: major_grp_name {
    type: string
    label: "Micros Major Group Name"
    hidden:no   sql: ${TABLE}.MAJOR_GRP_NAME ;;
  }

  dimension: major_grp_nbr {
    type: number
    label: "Micros Major Group Number"
    hidden:no   sql: ${TABLE}.MAJOR_GRP_NBR ;;
  }

  dimension: menu_item_mastr_name {
    type: string
    hidden:yes   sql: ${TABLE}.MENU_ITEM_MASTR_NAME ;;
  }

  dimension: menu_item_name {
    type: string
    label: "Micros Item Name"
    hidden:no   sql: ${TABLE}.MENU_ITEM_NAME ;;
  }

  dimension: menu_item_nbr {
    type: number
    hidden:yes   sql: ${TABLE}.MENU_ITEM_NBR ;;
  }

  dimension: pos_menu_item_mastr_src_unq_id {
    type: string
    label: "Micros Item ID"
    hidden:no   sql: ${TABLE}.POS_MENU_ITEM_MASTR_SRC_UNQ_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      menu_item_mastr_name,
      menu_item_name,
      alt_dbi_item_name,
      major_grp_name,
      famly_grp_name,
      dbi_item_brand_name,
      dbi_item_catgry_name,
      dbi_item_sub_catgry_name,
      dbi_item_famly_name,
      dbi_item_size_name
    ]
  }
}

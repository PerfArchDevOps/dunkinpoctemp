view: pos_menu_item_d {
  sql_table_name: FIVETRAN.POS_MENU_ITEM_D ;;

  dimension: actv_flg {
    type: string
    sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension: alt_dbi_item_name {
    type: string
    sql: ${TABLE}.ALT_DBI_ITEM_NAME ;;
  }

  dimension: dbi_item_brand_name {
    type: string
    sql: ${TABLE}.DBI_ITEM_BRAND_NAME ;;
  }

  dimension: dbi_item_catgry_name {
    type: string
    sql: ${TABLE}.DBI_ITEM_CATGRY_NAME ;;
  }

  dimension: dbi_item_famly_name {
    type: string
    sql: ${TABLE}.DBI_ITEM_FAMLY_NAME ;;
  }

  dimension: dbi_item_size_name {
    type: string
    sql: ${TABLE}.DBI_ITEM_SIZE_NAME ;;
  }

  dimension: dbi_item_sub_catgry_name {
    type: string
    sql: ${TABLE}.DBI_ITEM_SUB_CATGRY_NAME ;;
  }

  dimension: dwh_creatd_batch_id {
    type: number
    sql: ${TABLE}.DWH_CREATD_BATCH_ID ;;
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
    sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_pos_menu_item_id {
    type: number
    sql: ${TABLE}.DWH_POS_MENU_ITEM_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    sql: ${TABLE}.DWH_SRC_SYS_ID ;;
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
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension: famly_grp_name {
    type: string
    sql: ${TABLE}.FAMLY_GRP_NAME ;;
  }

  dimension: famly_grp_nbr {
    type: number
    sql: ${TABLE}.FAMLY_GRP_NBR ;;
  }

  dimension: item_brand_code {
    type: string
    sql: ${TABLE}.ITEM_BRAND_CODE ;;
  }

  dimension: major_grp_name {
    type: string
    sql: ${TABLE}.MAJOR_GRP_NAME ;;
  }

  dimension: major_grp_nbr {
    type: number
    sql: ${TABLE}.MAJOR_GRP_NBR ;;
  }

  dimension: menu_item_mastr_name {
    type: string
    sql: ${TABLE}.MENU_ITEM_MASTR_NAME ;;
  }

  dimension: menu_item_name {
    type: string
    sql: ${TABLE}.MENU_ITEM_NAME ;;
  }

  dimension: menu_item_nbr {
    type: number
    sql: ${TABLE}.MENU_ITEM_NBR ;;
  }

  dimension: pos_menu_item_mastr_src_unq_id {
    type: string
    sql: ${TABLE}.POS_MENU_ITEM_MASTR_SRC_UNQ_ID ;;
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

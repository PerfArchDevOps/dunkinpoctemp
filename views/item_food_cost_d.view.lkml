view: item_food_cost_d {
  sql_table_name: FIVETRAN.ITEM_FOOD_COST_D ;;

  dimension: dbi_catgry_name {
    type: string
    sql: ${TABLE}.DBI_CATGRY_NAME ;;
  }

  dimension: dbi_famly_name {
    type: string
    sql: ${TABLE}.DBI_FAMLY_NAME ;;
  }

  dimension: dbi_grp_size_name {
    type: string
    sql: ${TABLE}.DBI_GRP_SIZE_NAME ;;
  }

  dimension: dbi_sub_catgry_name {
    type: string
    sql: ${TABLE}.DBI_SUB_CATGRY_NAME ;;
  }

  dimension: derived_flg {
    type: string
    sql: ${TABLE}.DERIVED_FLG ;;
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

  dimension_group: food_cost_eff_end {
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
    sql: ${TABLE}.FOOD_COST_EFF_END_DATE ;;
  }

  dimension_group: food_cost_eff_start {
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
    sql: ${TABLE}.FOOD_COST_EFF_START_DATE ;;
  }

  dimension: gross_margin_rate_applied_amt {
    type: number
    sql: ${TABLE}.GROSS_MARGIN_RATE_APPLIED_AMT ;;
  }

  dimension: item_food_cost_amt {
    type: number
    sql: ${TABLE}.ITEM_FOOD_COST_AMT ;;
  }

  dimension: pos_menu_item_mastr_src_unq_id {
    type: string
    sql: ${TABLE}.POS_MENU_ITEM_MASTR_SRC_UNQ_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [dbi_catgry_name, dbi_sub_catgry_name, dbi_famly_name, dbi_grp_size_name]
  }
}

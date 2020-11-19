view: shop_br_dlivry_partnrs_d {
  sql_table_name: BAL3.SHOP_BR_DLIVRY_PARTNRS_D ;;

  dimension: data_level_id {
    type: number
    sql: ${TABLE}.DATA_LEVEL_ID ;;
  }

  dimension: dd_actv_br {
    type: string
    sql: ${TABLE}.DD_ACTV_BR ;;
  }

  dimension: dd_actv_br_disp {
    type: string
    sql: ${TABLE}.DD_ACTV_BR_DISP ;;
  }

  dimension_group: dd_go_live_date_br {
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
    sql: ${TABLE}.DD_GO_LIVE_DATE_BR ;;
  }

  dimension: dd_stat_br {
    type: string
    sql: ${TABLE}.DD_STAT_BR ;;
  }

  dimension: dd_stat_br_disp {
    type: string
    sql: ${TABLE}.DD_STAT_BR_DISP ;;
  }

  dimension_group: dd_stat_date_br {
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
    sql: ${TABLE}.DD_STAT_DATE_BR ;;
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

  dimension: dwh_shop_rooftp_id {
    type: number
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
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

  dimension: extnsn_id {
    type: number
    sql: ${TABLE}.EXTNSN_ID ;;
  }

  dimension: ez_actv_br {
    type: string
    sql: ${TABLE}.EZ_ACTV_BR ;;
  }

  dimension: ez_actv_br_disp {
    type: string
    sql: ${TABLE}.EZ_ACTV_BR_DISP ;;
  }

  dimension_group: ez_go_live_date_br {
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
    sql: ${TABLE}.EZ_GO_LIVE_DATE_BR ;;
  }

  dimension: ez_stat_br {
    type: string
    sql: ${TABLE}.EZ_STAT_BR ;;
  }

  dimension: ez_stat_br_disp {
    type: string
    sql: ${TABLE}.EZ_STAT_BR_DISP ;;
  }

  dimension_group: ez_stat_date_br {
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
    sql: ${TABLE}.EZ_STAT_DATE_BR ;;
  }

  dimension: gh_actv_br {
    type: string
    sql: ${TABLE}.GH_ACTV_BR ;;
  }

  dimension: gh_actv_br_disp {
    type: string
    sql: ${TABLE}.GH_ACTV_BR_DISP ;;
  }

  dimension_group: gh_go_live_date_br {
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
    sql: ${TABLE}.GH_GO_LIVE_DATE_BR ;;
  }

  dimension: gh_stat_br {
    type: string
    sql: ${TABLE}.GH_STAT_BR ;;
  }

  dimension: gh_stat_br_disp {
    type: string
    sql: ${TABLE}.GH_STAT_BR_DISP ;;
  }

  dimension_group: gh_stat_date_br {
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
    sql: ${TABLE}.GH_STAT_DATE_BR ;;
  }

  dimension: invntry_item_id {
    type: number
    sql: ${TABLE}.INVNTRY_ITEM_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: pk1_value {
    type: number
    sql: ${TABLE}.PK1_VALUE ;;
  }

  dimension: pk2_value {
    type: number
    sql: ${TABLE}.PK2_VALUE ;;
  }

  dimension: pm_actv_br {
    type: string
    sql: ${TABLE}.PM_ACTV_BR ;;
  }

  dimension: pm_actv_br_disp {
    type: string
    sql: ${TABLE}.PM_ACTV_BR_DISP ;;
  }

  dimension_group: pm_go_live_date_br {
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
    sql: ${TABLE}.PM_GO_LIVE_DATE_BR ;;
  }

  dimension: pm_stat_br {
    type: string
    sql: ${TABLE}.PM_STAT_BR ;;
  }

  dimension: pm_stat_br_disp {
    type: string
    sql: ${TABLE}.PM_STAT_BR_DISP ;;
  }

  dimension_group: pm_stat_date_br {
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
    sql: ${TABLE}.PM_STAT_DATE_BR ;;
  }

  dimension: revsn_id {
    type: number
    sql: ${TABLE}.REVSN_ID ;;
  }

  dimension: ue_actv_br {
    type: string
    sql: ${TABLE}.UE_ACTV_BR ;;
  }

  dimension: ue_actv_br_disp {
    type: string
    sql: ${TABLE}.UE_ACTV_BR_DISP ;;
  }

  dimension_group: ue_go_live_date_br {
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
    sql: ${TABLE}.UE_GO_LIVE_DATE_BR ;;
  }

  dimension: ue_stat_br {
    type: string
    sql: ${TABLE}.UE_STAT_BR ;;
  }

  dimension: ue_stat_br_disp {
    type: string
    sql: ${TABLE}.UE_STAT_BR_DISP ;;
  }

  dimension_group: ue_stat_date_br {
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
    sql: ${TABLE}.UE_STAT_DATE_BR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

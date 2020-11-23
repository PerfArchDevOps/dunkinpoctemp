view: shop_br_dlivry_partnrs_d {
  sql_table_name: BAL3.SHOP_BR_DLIVRY_PARTNRS_D ;;

  dimension: data_level_id {
    type: number
    hidden:yes   sql: ${TABLE}.DATA_LEVEL_ID ;;
  }

  dimension: dd_actv_br {
    type: string
    label: "Doordash Active Indicator - BR"
    hidden:no   sql: ${TABLE}.DD_ACTV_BR ;;
  }

  dimension: dd_actv_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.DD_ACTV_BR_DISP ;;
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
    label: "Doordash Go Live Date - BR"
    hidden:no   sql: ${TABLE}.DD_GO_LIVE_DATE_BR ;;
  }

  dimension: dd_stat_br {
    type: string
    hidden:yes   sql: ${TABLE}.DD_STAT_BR ;;
  }

  dimension: dd_stat_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.DD_STAT_BR_DISP ;;
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
    hidden:yes   sql: ${TABLE}.DD_STAT_DATE_BR ;;
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

  dimension: dwh_shop_rooftp_id {
    type: number
    primary_key: yes
    hidden:yes   sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
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

  dimension: extnsn_id {
    type: number
    hidden:yes   sql: ${TABLE}.EXTNSN_ID ;;
  }

  dimension: ez_actv_br {
    type: string
    hidden:yes   sql: ${TABLE}.EZ_ACTV_BR ;;
  }

  dimension: ez_actv_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.EZ_ACTV_BR_DISP ;;
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
    hidden:yes   sql: ${TABLE}.EZ_GO_LIVE_DATE_BR ;;
  }

  dimension: ez_stat_br {
    type: string
    hidden:yes   sql: ${TABLE}.EZ_STAT_BR ;;
  }

  dimension: ez_stat_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.EZ_STAT_BR_DISP ;;
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
    hidden:yes   sql: ${TABLE}.EZ_STAT_DATE_BR ;;
  }

  dimension: gh_actv_br {
    type: string
    label: "Grubhub Active Indicator - BR"
    hidden: no   sql: ${TABLE}.GH_ACTV_BR ;;
  }

  dimension: gh_actv_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.GH_ACTV_BR_DISP ;;
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
    label: "Grubhub Go Live Date - BR"
    hidden: no   sql: ${TABLE}.GH_GO_LIVE_DATE_BR ;;
  }

  dimension: gh_stat_br {
    type: string
    hidden:yes   sql: ${TABLE}.GH_STAT_BR ;;
  }

  dimension: gh_stat_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.GH_STAT_BR_DISP ;;
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
    hidden:yes   sql: ${TABLE}.GH_STAT_DATE_BR ;;
  }

  dimension: invntry_item_id {
    type: number
    hidden:yes   sql: ${TABLE}.INVNTRY_ITEM_ID ;;
  }

  dimension: org_id {
    type: number
    hidden:yes   sql: ${TABLE}.ORG_ID ;;
  }

  dimension: pk1_value {
    type: number
    hidden:yes   sql: ${TABLE}.PK1_VALUE ;;
  }

  dimension: pk2_value {
    type: number
    hidden:yes   sql: ${TABLE}.PK2_VALUE ;;
  }

  dimension: pm_actv_br {
    type: string
    label: "Postmates Active Indicator - BR"
    hidden:no   sql: ${TABLE}.PM_ACTV_BR ;;
  }

  dimension: pm_actv_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.PM_ACTV_BR_DISP ;;
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
    label: "Postmates Go Live Date - BR"
    hidden: no   sql: ${TABLE}.PM_GO_LIVE_DATE_BR ;;
  }

  dimension: pm_stat_br {
    type: string
    hidden:yes   sql: ${TABLE}.PM_STAT_BR ;;
  }

  dimension: pm_stat_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.PM_STAT_BR_DISP ;;
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
    hidden:yes   sql: ${TABLE}.PM_STAT_DATE_BR ;;
  }

  dimension: revsn_id {
    type: number
    hidden:yes   sql: ${TABLE}.REVSN_ID ;;
  }

  dimension: ue_actv_br {
    type: string
    label: "Ubereats Active Indicator - BR"
    hidden:no   sql: ${TABLE}.UE_ACTV_BR ;;
  }

  dimension: ue_actv_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.UE_ACTV_BR_DISP ;;
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
    label: "Ubereats Go Live Date - BR"
    hidden:no   sql: ${TABLE}.UE_GO_LIVE_DATE_BR ;;
  }

  dimension: ue_stat_br {
    type: string
    hidden:yes   sql: ${TABLE}.UE_STAT_BR ;;
  }

  dimension: ue_stat_br_disp {
    type: string
    hidden:yes   sql: ${TABLE}.UE_STAT_BR_DISP ;;
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
    hidden:yes   sql: ${TABLE}.UE_STAT_DATE_BR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

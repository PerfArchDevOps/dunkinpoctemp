view: dbi_membrs {
  sql_table_name: BAL.DBI_MEMBRS ;;

  dimension: bi_sec_fmd {
    type: string
    sql: ${TABLE}.BI_SEC_FMD ;;
  }

  dimension: bi_sec_ops {
    type: string
    sql: ${TABLE}.BI_SEC_OPS ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cntry {
    type: string
    sql: ${TABLE}.CNTRY ;;
  }

  dimension: consumr_segmnt_name {
    type: string
    sql: ${TABLE}.CONSUMR_SEGMNT_NAME ;;
  }

  dimension: dma {
    type: number
    sql: ${TABLE}.DMA ;;
  }

  dimension: dma_long_desc {
    type: string
    sql: ${TABLE}.DMA_LONG_DESC ;;
  }

  dimension: dunkin_guest_id {
    type: number
    sql: ${TABLE}.DUNKIN_GUEST_ID ;;
  }

  dimension: email_addr {
    type: string
    sql: ${TABLE}.EMAIL_ADDR ;;
  }

  dimension: email_only_membr_type_flg {
    type: string
    sql: ${TABLE}.EMAIL_ONLY_MEMBR_TYPE_FLG ;;
  }

  dimension_group: enrlmnt {
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
    sql: ${TABLE}.ENRLMNT_DATE ;;
  }

  dimension: epsilon_profile_id {
    type: string
    sql: ${TABLE}.EPSILON_PROFILE_ID ;;
  }

  dimension_group: etl_load {
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
    sql: ${TABLE}.ETL_LOAD_DATE ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension_group: first_regstrd {
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
    sql: ${TABLE}.FIRST_REGSTRD_DATE ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: lylty_flg {
    type: string
    sql: ${TABLE}.LYLTY_FLG ;;
  }

  dimension: membr_sk {
    type: number
    sql: ${TABLE}.MEMBR_SK ;;
  }

  dimension_group: perks_first_transctn {
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
    sql: ${TABLE}.PERKS_FIRST_TRANSCTN_DATE ;;
  }

  dimension: perks_first_transctn_pfcntr {
    type: number
    sql: ${TABLE}.PERKS_FIRST_TRANSCTN_PFCNTR ;;
  }

  dimension: physcl_addr_flg {
    type: string
    sql: ${TABLE}.PHYSCL_ADDR_FLG ;;
  }

  dimension: promtn_code {
    type: string
    sql: ${TABLE}.PROMTN_CODE ;;
  }

  dimension_group: stat_change {
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
    sql: ${TABLE}.STAT_CHANGE_DATE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: street1 {
    type: string
    sql: ${TABLE}.STREET1 ;;
  }

  dimension: street2 {
    type: string
    sql: ${TABLE}.STREET2 ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.ZIPCODE ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name, consumr_segmnt_name]
  }
}

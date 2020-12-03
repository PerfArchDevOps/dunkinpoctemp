view: perks_membr_summry_actv_f {
  sql_table_name: BAL.PERKS_MEMBR_SUMMRY_ACTV_F ;;

  dimension: actv_weeks_nbr {
    type: number
    label: "Active Type"
    sql: ${TABLE}.ACTV_WEEKS_NBR ;;
  }

  dimension_group: curbsd_first_purchs {
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
    sql: ${TABLE}.CURBSD_FIRST_PURCHS_DATE ;;
  }

  dimension_group: curbsd_last_purchs {
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
    sql: ${TABLE}.CURBSD_LAST_PURCHS_DATE ;;
  }

  dimension: curbsd_sales_amt {
    type: number
    sql: ${TABLE}.CURBSD_SALES_AMT ;;
  }

  dimension: curbsd_transctn_cnt {
    type: number
    sql: ${TABLE}.CURBSD_TRANSCTN_CNT ;;
  }

  dimension_group: dd_card_first_purchs {
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
    sql: ${TABLE}.DD_CARD_FIRST_PURCHS_DATE ;;
  }

  dimension_group: dd_card_last_purchs {
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
    sql: ${TABLE}.DD_CARD_LAST_PURCHS_DATE ;;
  }

  dimension: dd_card_sales_amt {
    type: number
    sql: ${TABLE}.DD_CARD_SALES_AMT ;;
  }

  dimension: dd_card_transctn_cnt {
    type: number
    sql: ${TABLE}.DD_CARD_TRANSCTN_CNT ;;
  }

  dimension_group: dwh_updtd {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DWH_UPDTD_DATE ;;
  }

  dimension: dwh_updtd_usr {
    type: string
    sql: ${TABLE}.DWH_UPDTD_USR ;;
  }

  dimension: epsilon_profile_id {
    type: string
    sql: ${TABLE}.EPSILON_PROFILE_ID ;;
  }

  dimension_group: otgo_first_purchs {
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
    sql: ${TABLE}.OTGO_FIRST_PURCHS_DATE ;;
  }

  dimension_group: otgo_last_purchs {
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
    sql: ${TABLE}.OTGO_LAST_PURCHS_DATE ;;
  }

  dimension: otgo_sales_amt {
    type: number
    sql: ${TABLE}.OTGO_SALES_AMT ;;
  }

  dimension: otgo_transctn_cnt {
    type: number
    sql: ${TABLE}.OTGO_TRANSCTN_CNT ;;
  }

  dimension_group: perks_first_purchs {
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
    sql: ${TABLE}.PERKS_FIRST_PURCHS_DATE ;;
  }

  dimension_group: perks_last_purchs {
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
    sql: ${TABLE}.PERKS_LAST_PURCHS_DATE ;;
  }

  dimension_group: perks_pass_first_purchs {
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
    sql: ${TABLE}.PERKS_PASS_FIRST_PURCHS_DATE ;;
  }

  dimension_group: perks_pass_last_purchs {
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
    sql: ${TABLE}.PERKS_PASS_LAST_PURCHS_DATE ;;
  }

  dimension: perks_pass_sales_amt {
    type: number
    sql: ${TABLE}.PERKS_PASS_SALES_AMT ;;
  }

  dimension: perks_pass_transctn_cnt {
    type: number
    sql: ${TABLE}.PERKS_PASS_TRANSCTN_CNT ;;
  }

  dimension: perks_sales_amt {
    type: number
    sql: ${TABLE}.PERKS_SALES_AMT ;;
  }

  dimension: perks_transctn_cnt {
    type: number
    sql: ${TABLE}.PERKS_TRANSCTN_CNT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Perks_Trial_Customer_Count{
    type: count_distinct
    sql: CASE WHEN ${perks_transctn_cnt} > 0 THEN ${epsilon_profile_id} END ;;
  }

  measure: Perks_Sales_Amount_Sum {
    type: sum
    sql: ${perks_sales_amt} ;;
  }

  measure: AVG_Weekly_Spend{
    type: number
    sql: ${Perks_Sales_Amount_Sum}/${Perks_Trial_Customer_Count}/${actv_weeks_nbr} ;;
  }

  measure: sum_perks_transctn_cnt {
    type: sum
    sql: ${perks_transctn_cnt} ;;
  }

  measure: avg_weekly_visits{
    type: number
    sql: ${sum_perks_transctn_cnt}/${Perks_Trial_Customer_Count}/${actv_weeks_nbr} ;;
  }
}

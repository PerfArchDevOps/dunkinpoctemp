view: bal_obi_date_variables {
  sql_table_name: BAL3.BAL_OBI_DATE_VARIABLES ;;

  dimension_group: 12_w_prior {
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
    label: "12 Weeks Prior"
    sql: ${TABLE}."12W Prior" ;;
  }

  dimension_group: 2_w_prior {
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
    label: "2 Weeks Prior"
    sql: ${TABLE}."2W Prior" ;;
  }

  dimension_group: 4_w_prior {
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
    label: "4 Weeks Prior"
    sql: ${TABLE}."4W Prior" ;;
  }

  dimension_group: br_yesterday {
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
    label: "BR Yesterday"
    sql: ${TABLE}.BR_Yesterday ;;
  }

  dimension: cmonth {
    type: string
    sql: ${TABLE}.Cmonth ;;
  }

  dimension: current_month {
    type: string
    label: "Current Month"
    sql: ${TABLE}.Current_Month ;;
  }

  dimension_group: current_we {
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
    label: "Current Week"
    sql: ${TABLE}.CURRENT_WE ;;
  }

  dimension_group: current_week_ly {
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
    label: "Current Week LY"
    sql: ${TABLE}.CURRENT_WEEK_LY ;;
  }

  dimension: cyear {
    type: string
    sql: ${TABLE}.Cyear ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."Date" ;;
  }

  dimension: date_key {
    primary_key: yes
    type: date
    sql: ${TABLE}."Date" ;;
  }

  dimension_group: date_182_days_back {
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
    label: "Date 182 Days Back"
    sql: ${TABLE}.DATE_182_DAYS_BACK ;;
  }

  dimension_group: date_ly {
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
    label: "Date LY"
    sql: ${TABLE}.Date_LY ;;
  }

  dimension: edw_prior_wk_quarter {
    type: string
    label: "EDW Prior Week Qtr"
    sql: ${TABLE}.EDW_PRIOR_WK_QUARTER ;;
  }

  dimension: edw_prior_wk_year {
    type: string
    label: "EDW Prior Week Year"
    sql: ${TABLE}.EDW_PRIOR_WK_YEAR ;;
  }

  dimension_group: end {
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
    label: "End Date"
    sql: ${TABLE}."End Date" ;;
  }

  dimension_group: endtenweeksago {
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
    label: "End 10 Weeks Ago"
    sql: ${TABLE}.ENDTENWEEKSAGO ;;
  }

  dimension_group: fps_ldate {
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
    sql: ${TABLE}."FPS LDate" ;;
  }

  dimension: last_fiscal_year {
    type: string
    label: "Last Fiscal Year"
    sql: ${TABLE}.LastFiscalYear ;;
  }

  dimension_group: last_two_week {
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
    label: "Last Two Week"
    sql: ${TABLE}.LAST_TWO_WEEK ;;
  }

  dimension_group: last_week {
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
    label: "Last Week"
    sql: ${TABLE}.LAST_WEEK ;;
  }

  dimension_group: last_week_lly {
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
    label: "Last Week LLY"
    sql: ${TABLE}.LAST_WEEK_LLY ;;
  }

  dimension_group: last_week_ly {
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
    label: "Last Week LY"
    sql: ${TABLE}.LAST_WEEK_LY ;;
  }

  dimension_group: lm_week_end {
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
    label: "LM Week End"
    sql: ${TABLE}.LM_WEEK_END_DATE ;;
  }

  dimension_group: lm_week_start {
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
    label: "LM Week Start"
    sql: ${TABLE}.LM_WEEK_START_DATE ;;
  }

  dimension_group: lw_fiscal_mtd_start {
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
    label: "LW Fiscal MTD Start"
    sql: ${TABLE}.LW_FISCAL_MTD_START ;;
  }

  dimension_group: lw_fiscal_qtd_start {
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
    label: "LW Fiscal QTD Start"
    sql: ${TABLE}.LW_FISCAL_QTD_START ;;
  }

  dimension_group: lw_fiscal_ytd_start {
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
    label: "LW Fiscal YTD Start"
    sql: ${TABLE}.LW_FISCAL_YTD_START ;;
  }

  dimension_group: lw_start {
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
    label: "LW Start"
    sql: ${TABLE}.LW_START_DATE ;;
  }

  dimension_group: me {
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
    sql: ${TABLE}.Me_Date ;;
  }

  dimension_group: nexttwelveweeks {
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
    label: "Next 12 Weeks"
    sql: ${TABLE}.NEXTTWELVEWEEKS ;;
  }

  dimension_group: nextweek {
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
    label: "Next Week"
    sql: ${TABLE}.NEXTWEEK ;;
  }

  dimension_group: ops_prompt_variable {
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
    label: "OPS Prompt Variable"
    sql: ${TABLE}.Ops_Prompt_Variable ;;
  }

  dimension: rpm_14_d_back {
    type: string
    label: "RPM 14 Days Back"
    sql: ${TABLE}.RPM_14D_BACK ;;
  }

  dimension: rpm_23_w_back {
    type: string
    label: "RPM 23 Weeks Back"
    sql: ${TABLE}.RPM_23W_BACK ;;
  }

  dimension: rpm_2_d_back {
    type: string
    label: "RPM 2 Days Back"
    sql: ${TABLE}.RPM_2D_BACK ;;
  }

  dimension: rpm_2_w_back {
    type: string
    label: "RPM 2 Weeks Back"
    sql: ${TABLE}.RPM_2W_BACK ;;
  }

  dimension: rpm_2_w_back_ly {
    type: string
    label: "RPM 2 Weeks back LY"
    sql: ${TABLE}.RPM_2W_BACK_LY ;;
  }

  dimension: rpm_3_d_back {
    type: string
    label: "RPM 3 Days Back"
    sql: ${TABLE}.RPM_3D_BACK ;;
  }

  dimension: rpm_3_w_back {
    type: string
    label: "RPM 3 Weeks Back"
    sql: ${TABLE}.RPM_3W_BACK ;;
  }

  dimension: rpm_4_w_back {
    type: string
    label: "RPM 4 Weeks Back"
    sql: ${TABLE}.RPM_4W_BACK ;;
  }

  dimension: rpm_57_w_back {
    type: string
    label: "RPM 57 Weeks Back"
    sql: ${TABLE}.RPM_57W_BACK ;;
  }

  dimension: rpm_9_w_back {
    type: string
    label: "RPM 9 Weeks Back"
    sql: ${TABLE}.RPM_9W_BACK ;;
  }

  dimension: rpm_curr_month {
    type: string
    label: "RPM Current Month"
    sql: ${TABLE}.RPM_CURR_MONTH ;;
  }

  dimension: rpm_curr_wk_ly {
    type: string
    label: "RPM Current Week LY"
    sql: ${TABLE}.RPM_CURR_WK_LY ;;
  }

  dimension: rpm_curr_wk_mth {
    type: string
    label: "RPM Current Week Month"
    sql: ${TABLE}.RPM_CURR_WK_MTH ;;
  }

  dimension: rpm_curr_wk_qtr {
    type: string
    label: "RPM Current Week Quarter"
    sql: ${TABLE}.RPM_CURR_WK_QTR ;;
  }

  dimension: rpm_curr_year {
    type: string
    label: "RPM Current Year"
    sql: ${TABLE}.RPM_CURR_YEAR ;;
  }

  dimension: rpm_current_we {
    type: string
    label: "RPM Current WE"
    sql: ${TABLE}.RPM_CURRENT_WE ;;
  }

  dimension: rpm_current_week {
    type: string
    label: "RPM Current Week"
    sql: ${TABLE}.RPM_CURRENT_WEEK ;;
  }

  dimension: rpm_first_week_ly {
    type: string
    label: "RPM First Week LY"
    sql: ${TABLE}.rpm_first_week_ly ;;
  }

  dimension: rpm_first_week_yr {
    type: string
    label: "RPM First Week Year"
    sql: ${TABLE}.rpm_first_week_yr ;;
  }

  dimension: rpm_fis_qtr {
    type: string
    label: "RPM FIS Quarter"
    sql: ${TABLE}.RPM_FIS_QTR ;;
  }

  dimension: rpm_last_we {
    type: string
    label: "RPM Last WE"
    sql: ${TABLE}.RPM_LAST_WE ;;
  }

  dimension: rpm_last_week {
    type: string
    label: "RPM Last Week"
    sql: ${TABLE}.RPM_LAST_WEEK ;;
  }

  dimension: rpm_last_week_lly {
    type: string
    label: "RPM Last Week LLY"
    sql: ${TABLE}.RPM_LAST_WEEK_LLY ;;
  }

  dimension: rpm_last_wk_ly {
    type: string
    label: "RPM Last Week LY"
    sql: ${TABLE}.RPM_LAST_WK_LY ;;
  }

  dimension: rpm_next_wk_ly {
    type: string
    label: "RPM Next Week LY"
    sql: ${TABLE}.RPM_NEXT_WK_LY ;;
  }

  dimension: rpm_prior_13_mth {
    type: string
    label: "RPM Prior 13 Month"
    sql: ${TABLE}.RPM_PRIOR_13_MTH ;;
  }

  dimension: rpm_prior_1_mth {
    type: string
    label: "RPM Prior 1 Month"
    sql: ${TABLE}.RPM_PRIOR_1_MTH ;;
  }

  dimension: rpm_prior_1_qtr {
    type: string
    label: "RPM Prior 1 QTR"
    sql: ${TABLE}.RPM_PRIOR_1_QTR ;;
  }

  dimension: rpm_prior_2_mth {
    type: string
    label: "RPM Prior 2 Month"
    sql: ${TABLE}.RPM_PRIOR_2_MTH ;;
  }

  dimension: rpm_prior_wk_mth {
    type: string
    label: "RPM Prior Week Month"
    sql: ${TABLE}.RPM_PRIOR_WK_MTH ;;
  }

  dimension: rpm_prior_wk_qtr {
    type: string
    label: "RPM Prior Week QTR"
    sql: ${TABLE}.RPM_PRIOR_WK_QTR ;;
  }

  dimension: rpm_prior_wk_yr {
    type: string
    label: "RPM Prior Week Year"
    sql: ${TABLE}.RPM_PRIOR_WK_YR ;;
  }

  dimension: rpm_today {
    type: string
    label: "RPM Today"
    sql: ${TABLE}.RPM_TODAY ;;
  }

  dimension: rpm_today_ly {
    type: string
    label: "RPM Today LY"
    sql: ${TABLE}.RPM_TODAY_LY ;;
  }

  dimension: rpm_tomorrow {
    type: string
    label: "RPM Tomorrow"
    sql: ${TABLE}.RPM_TOMORROW ;;
  }

  dimension: rpm_tomorrow_ly {
    type: string
    label: "RPM Tomorrow LY"
    sql: ${TABLE}.RPM_TOMORROW_LY ;;
  }

  dimension: rpm_yesterday {
    type: string
    label: "RPM Yesterday"
    sql: ${TABLE}.RPM_YESTERDAY ;;
  }

  dimension: rpm_yesterday_ly {
    type: string
    label: "RPM Yesterday LY"
    sql: ${TABLE}.RPM_YESTERDAY_LY ;;
  }

  dimension_group: start_12_months_ago {
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
    label: "Start 12 Months Ago"
    sql: ${TABLE}.START_12_MONTHS_AGO ;;
  }

  dimension_group: start {
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
    label: "Start"
    sql: ${TABLE}."Start Date" ;;
  }

  dimension_group: sttenweeksago {
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
    label: "Start 10 Weeks Ago"
    sql: ${TABLE}.STTENWEEKSAGO ;;
  }

  dimension_group: sttwelveweeksago {
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
    label: "Start 12 Weeks Ago"
    sql: ${TABLE}.STTWELVEWEEKSAGO ;;
  }

  dimension_group: week_start {
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
    label: "Week Start"
    sql: ${TABLE}.WEEK_START_DATE ;;
  }

  dimension: yest_day_num {
    type: number
    label: "Yesterday Day Number"
    sql: ${TABLE}.YEST_DAY_NUM ;;
  }

  dimension_group: ytd_start {
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
    label: "YTD Start"
    sql: ${TABLE}.YTD_START ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

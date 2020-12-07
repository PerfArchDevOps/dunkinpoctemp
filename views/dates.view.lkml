view: dates {
  label: "Dim - Dates"
  sql_table_name: BAL.DATES ;;
  drill_fields: [dates_id]


  dimension: dates_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.DATES_ID ;;
  }

  dimension: date_vars_join {
    type: string
    sql: 'X' ;;
  }

  dimension_group: actual_date {
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
    hidden: no
    label: "Fiscal Date MM/DD/YYYY"
    datatype: datetime
    sql: ${TABLE}.ACTUAL_DATE ;;
  }

  dimension_group: cal_month_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    hidden: yes
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CAL_MONTH_END_DATE ;;
  }

  dimension: calendar_date {
    type: string
    hidden: yes
    sql: ${TABLE}.CALENDAR_DATE ;;
  }

  dimension: calendar_month {
    type: string
    hidden: yes
    sql: ${TABLE}.CALENDAR_MONTH ;;
  }

  dimension: calendar_week {
    type: string
    hidden: yes
    sql: ${TABLE}.CALENDAR_WEEK ;;
  }

  dimension: calendar_year {
    type: number
    hidden: yes
    sql: ${TABLE}.CALENDAR_YEAR ;;
  }

  dimension: calendar_year_in_char {
    type: string
    hidden: yes
    sql: ${TABLE}.CALENDAR_YEAR_IN_CHAR ;;
  }

  dimension: cur_fis_year {
    type: string
    hidden: yes
    sql: ${TABLE}.CUR_FIS_YEAR ;;
  }

  dimension: day_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DAY_NAME ;;
  }

  dimension: day_of_month {
    type: number
    hidden: yes
    sql: ${TABLE}.DAY_OF_MONTH ;;
  }

  dimension: day_of_week {
    type: number
    hidden: no
    label: "Fiscal Day of Week Number"
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_year {
    type: number
    hidden: yes
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension: day_short_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DAY_SHORT_NAME ;;
  }

  dimension: daytype {
    type: string
    label: "Day Type"
    hidden: yes
    sql: ${TABLE}.DAYTYPE ;;
  }

  dimension_group: fiscal_cal_me {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    hidden: yes
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FISCAL_CAL_ME_DATE ;;
  }

  dimension: fiscal_date {
    type: string
    label: "Fiscal Date"
    sql: ${TABLE}.FISCAL_DATE ;;
  }

  dimension: fiscal_month {
    type: string
    label: "Fiscal Month"
    sql: ${TABLE}.FISCAL_MONTH ;;
  }

  dimension: fiscal_week {
    type: string
    label: "Fiscal Week"
    sql: ${TABLE}.FISCAL_WEEK ;;
  }

  dimension: fiscal_year {
    type: string
    label: "Fiscal Year"
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: fiscal_year_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.FISCAL_YEAR_NBR ;;
  }

  dimension_group: load {
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
    hidden: yes
    datatype: date
    sql: ${TABLE}.LOAD_DATE ;;
  }

  dimension_group: ly {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    label: "Fiscal Date LY MM/DD/YYYY"
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LY_DATE ;;
  }

  dimension_group: ly_week_ending {
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
    label: "Fiscal Week LY MM/DD/YYYY"
    sql: ${TABLE}.LY_WEEK_ENDING_DATE ;;
  }

  dimension: month_disp_name {
    type: string
    hidden: yes
    sql: ${TABLE}.MONTH_DISP_NAME ;;
  }

  dimension_group: month_ending {
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
    hidden: yes
    sql: ${TABLE}.MONTH_ENDING_DATE ;;
  }

  dimension: month_name {
    type: string
    hidden: yes
    sql: ${TABLE}.MONTH_NAME ;;
  }

  dimension: month_numeric_name {
    type: number
    label: "Fiscal Month of Year"
    sql: ${TABLE}.MONTH_NUMERIC_NAME ;;
  }

  dimension: month_of_year {
    type: string
    hidden: yes
    sql: ${TABLE}.MONTH_OF_YEAR ;;
  }

  dimension: month_short_name {
    type: string
    hidden: yes
    sql: ${TABLE}.MONTH_SHORT_NAME ;;
  }

  dimension: prior_fis_year {
    type: string
    hidden: yes
    sql: ${TABLE}.PRIOR_FIS_YEAR ;;
  }

  dimension: quarter_of_year {
    type: string
    label: "Fiscal Quarter"
    sql: ${TABLE}.QUARTER_OF_YEAR ;;
  }

  dimension: quarter_of_year_name {
    type: string
    hidden: yes
    sql: ${TABLE}.QUARTER_OF_YEAR_NAME ;;
  }

  dimension_group: todays_date {
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
    hidden: yes
    sql: ${TABLE}.TODAYS_DATE ;;
  }

  dimension_group: update_date {
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
    hidden: yes
    sql: ${TABLE}.UPDATE_DATE ;;
  }

  dimension_group: week_ending {
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
    label: "Fiscal Week MM/DD/YYYY"
    datatype: date
    sql: ${TABLE}.WEEK_ENDING_DATE ;;
  }

  dimension: week_of_month {
    type: number
    hidden: yes
    sql: ${TABLE}.WEEK_OF_MONTH ;;
  }

  dimension: week_of_month_name {
    type: string
    hidden: yes
    sql: ${TABLE}.WEEK_OF_MONTH_NAME ;;
  }

  dimension: week_of_year {
    type: number
    hidden: yes
    sql: ${TABLE}.WEEK_OF_YEAR ;;
  }

  dimension: week_of_year_name {
    type: string
    hidden: yes
    sql: ${TABLE}.WEEK_OF_YEAR_NAME ;;
  }

  dimension: year_name {
    type: string
    hidden: yes
    sql: ${TABLE}.YEAR_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dates_id,
      day_short_name,
      day_name,
      month_short_name,
      month_name,
      month_numeric_name,
      quarter_of_year_name,
      year_name,
      week_of_month_name,
      week_of_year_name,
      month_disp_name
    ]
  }
}

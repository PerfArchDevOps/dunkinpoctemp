view: dates {
  sql_table_name: FIVETRAN.DATES ;;
  drill_fields: [dates_id]

  dimension: dates_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DATES_ID ;;
  }

  dimension_group: actual {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CAL_MONTH_END_DATE ;;
  }

  dimension: calendar_date {
    type: string
    sql: ${TABLE}.CALENDAR_DATE ;;
  }

  dimension: calendar_month {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH ;;
  }

  dimension: calendar_week {
    type: string
    sql: ${TABLE}.CALENDAR_WEEK ;;
  }

  dimension: calendar_year {
    type: number
    sql: ${TABLE}.CALENDAR_YEAR ;;
  }

  dimension: calendar_year_in_char {
    type: string
    sql: ${TABLE}.CALENDAR_YEAR_IN_CHAR ;;
  }

  dimension: cur_fis_year {
    type: string
    sql: ${TABLE}.CUR_FIS_YEAR ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.DAY_NAME ;;
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}.DAY_OF_MONTH ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension: day_short_name {
    type: string
    sql: ${TABLE}.DAY_SHORT_NAME ;;
  }

  dimension: daytype {
    type: string
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FISCAL_CAL_ME_DATE ;;
  }

  dimension: fiscal_date {
    type: string
    sql: ${TABLE}.FISCAL_DATE ;;
  }

  dimension: fiscal_month {
    type: string
    sql: ${TABLE}.FISCAL_MONTH ;;
  }

  dimension: fiscal_week {
    type: string
    sql: ${TABLE}.FISCAL_WEEK ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: fiscal_year_nbr {
    type: number
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
    sql: ${TABLE}.LY_WEEK_ENDING_DATE ;;
  }

  dimension: month_disp_name {
    type: string
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
    sql: ${TABLE}.MONTH_ENDING_DATE ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.MONTH_NAME ;;
  }

  dimension: month_numeric_name {
    type: number
    sql: ${TABLE}.MONTH_NUMERIC_NAME ;;
  }

  dimension: month_of_year {
    type: string
    sql: ${TABLE}.MONTH_OF_YEAR ;;
  }

  dimension: month_short_name {
    type: string
    sql: ${TABLE}.MONTH_SHORT_NAME ;;
  }

  dimension: prior_fis_year {
    type: string
    sql: ${TABLE}.PRIOR_FIS_YEAR ;;
  }

  dimension: quarter_of_year {
    type: string
    sql: ${TABLE}.QUARTER_OF_YEAR ;;
  }

  dimension: quarter_of_year_name {
    type: string
    sql: ${TABLE}.QUARTER_OF_YEAR_NAME ;;
  }

  dimension_group: todays {
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
    sql: ${TABLE}.TODAYS_DATE ;;
  }

  dimension_group: update {
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
    datatype: date
    sql: ${TABLE}.WEEK_ENDING_DATE ;;
  }

  dimension: week_of_month {
    type: number
    sql: ${TABLE}.WEEK_OF_MONTH ;;
  }

  dimension: week_of_month_name {
    type: string
    sql: ${TABLE}.WEEK_OF_MONTH_NAME ;;
  }

  dimension: week_of_year {
    type: number
    sql: ${TABLE}.WEEK_OF_YEAR ;;
  }

  dimension: week_of_year_name {
    type: string
    sql: ${TABLE}.WEEK_OF_YEAR_NAME ;;
  }

  dimension: year_name {
    type: string
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

view: init_block_dates_view {

  derived_table: {
    sql: SELECT TRUNC (sysdate) todays_date,
      TRUNC (sysdate, 'YEAR') ytd_start
           ,
          TRUNC (sysdate) - 1 br_yesterday,
           ly_date
           , (week_ending_date) - 28 start_date
      FROM bal.dates d1
       WHERE d1.actual_date = TRUNC (sysdate)
       ;;
  }

  dimension: date_vars_join {
    type: string
    sql: 'X' ;;
  }

  dimension: todays_date {
    type: date
    primary_key: yes
    sql: ${TABLE}.todays_date ;;
  }

  dimension: ytd_start {
    type: date
    sql: ${TABLE}.YTD_START ;;
  }

  dimension: br_yesterday {
    type: date
    sql: ${TABLE}.br_yesterday ;;
  }

  dimension: ly_date {
    type: date
    sql: ${TABLE}.ly_date ;;
  }

  dimension: start_date {
    type: date
    sql: ${TABLE}.start_date ;;
  }

  set: detail {
    fields: [
      todays_date, ytd_start, br_yesterday,ly_date
    ]
  }
}

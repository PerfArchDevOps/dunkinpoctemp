view: init_block_dates_view {
    derived_table: {
      sql: SELECT TRUNC (sysdate) "Date", TRUNC (sysdate, 'YEAR') "YTD_START"
           , TRUNC (sysdate) - 1 "BR_Yesterday",
           ly_date "Date_LY"
           , (week_ending_date) - 28 "Start Date"
           , CASE
                WHEN day_short_name IN ('SUN', 'MON')
                   THEN (week_ending_date) - 14
                ELSE (week_ending_date) - 7
             END "End Date"
           , CASE
                WHEN day_short_name IN ('SUN', 'MON')
                   THEN (week_ending_date) - 35
                ELSE (week_ending_date) - 28
             END "4W Prior"
           , CASE
                WHEN day_short_name IN ('SUN', 'MON')
                   THEN (week_ending_date) - 21
                ELSE (week_ending_date) - 14
             END "2W Prior"
           , CASE
                WHEN TO_CHAR (actual_date, 'DY') IN ('SUN', 'MON')
                   THEN (week_ending_date) - 77
                ELSE (week_ending_date) - 70
             END sttenweeksago
           , CASE
                WHEN TO_CHAR (actual_date, 'DY') IN ('SUN', 'MON')
                   THEN (week_ending_date) - 14
                ELSE (week_ending_date) - 7
             END endtenweeksago
           , CASE
                WHEN TO_CHAR (actual_date, 'DY') IN ('SUN', 'MON')
                   THEN (week_ending_date) - 7
                ELSE (week_ending_date)
             END nextweek
           , CASE
                WHEN TO_CHAR (actual_date, 'DY') IN ('SUN', 'MON')
                   THEN (week_ending_date) + 70
                ELSE (week_ending_date) + 77
             END nexttwelveweeks
           , CASE
                WHEN TO_CHAR (actual_date, 'DY') IN
                                                   ('SUN', 'MON')
                   THEN (week_ending_date) - 91
                ELSE (week_ending_date) - 84
             END sttwelveweeksago
           , CASE
                WHEN TO_CHAR (actual_date, 'DY') IN ('SUN', 'MON')
                   THEN (week_ending_date)
                ELSE (week_ending_date)
             END current_we
           , week_ending_date - 7 last_week, cur_fis_year "Cyear"
           , TRUNC (LAST_DAY (sysdate - 45 - 30)) "FPS LDate"
           , month_short_name || ' '
             || SUBSTR (month_of_year, 4, 4) "Current_Month"
           , month_ending_date "Me_Date"
           , month_short_name || '-' || SUBSTR (month_of_year, 4, 4) "Cmonth"
      ,TO_CHAR (sysdate - 1, 'YYYY-mm-dd') rpm_yesterday
           , TO_CHAR (sysdate - TO_NUMBER (TO_CHAR (sysdate, 'D'))
                    , 'YYYY-MM-DD'
                     ) rpm_last_we
           , SUBSTR (d1.cur_fis_year, 4) rpm_curr_year
           ,    SUBSTR (d1.month_of_year, 4, 4)
             || '-'
             || SUBSTR (d1.month_of_year, 8, 2)
             || ' ('
             || d1.month_name
             || ')' rpm_curr_month
           ,    TO_CHAR (ADD_MONTHS (d1.month_ending_date-15, -1)
                       , 'YYYY-MM ('
                        )
             || TRIM (TO_CHAR (ADD_MONTHS (d1.month_ending_date-15, -1), 'MONTH'))
             || ')' rpm_prior_1_mth
           ,    TO_CHAR (ADD_MONTHS (d1.month_ending_date-15, -2)
                       , 'YYYY-MM ('
                        )
             || TRIM (TO_CHAR (ADD_MONTHS (d1.month_ending_date-15, -2), 'MONTH'))
             || ')' rpm_prior_2_mth
           , DECODE (LEAST (7
                          , (  d1.actual_date
                             - (SELECT MIN (d2.actual_date)
                                  FROM bal.dates d2
                                 WHERE d2.month_of_year = d1.month_of_year)
                            )
                           )
                   , 7, '99'
                   , 1
                    ) rpm_curr_wk_mth
           , TO_CHAR (sysdate - TO_NUMBER (TO_CHAR (sysdate, 'D'))
                    , 'YYYY-MM-DD'
                     ) rpm_last_week
           , TO_CHAR (sysdate, 'YYYY-mm-dd') rpm_today
           , TO_CHAR (d1.week_ending_date, 'YYYY-mm-dd') rpm_current_we
           , TO_CHAR (d1.week_ending_date, 'YYYY-MM-DD') rpm_current_week
           , TO_CHAR ((d1.week_ending_date - 14), 'yyyy-mm-dd') rpm_2w_back
           , TO_CHAR ((d1.ly_week_ending_date - 14), 'yyyy-mm-dd') rpm_2w_back_ly
           , TO_CHAR (d1.ly_week_ending_date, 'YYYY-MM-DD') rpm_curr_wk_ly
           , TO_CHAR (d1.ly_week_ending_date - 7, 'YYYY-MM-DD') rpm_last_wk_ly
           , TO_CHAR (d1.ly_week_ending_date + 7, 'YYYY-MM-DD') rpm_next_wk_ly
           , TO_CHAR (d1.ly_date - 1, 'YYYY-mm-dd') rpm_yesterday_ly
           , TO_CHAR (d1.ly_date, 'YYYY-mm-dd') rpm_today_ly
           , TO_CHAR (d1.actual_date + 1, 'YYYY-mm-dd') rpm_tomorrow
           , TO_CHAR (d1.ly_date + 1, 'YYYY-mm-dd') rpm_tomorrow_ly
           , TO_CHAR ((d1.week_ending_date - 161), 'yyyy-mm-dd') rpm_23w_back
           , TO_CHAR ((d1.week_ending_date - 28), 'yyyy-mm-dd') rpm_4w_back
           , DECODE (LEAST (7
                          , (  d1.actual_date
                             - (SELECT MIN (d2.actual_date)
                                  FROM bal.dates d2
                                 WHERE d2.quarter_of_year = d1.quarter_of_year)
                            )
                           )
                   , 7, '99'
                   , 1
                    ) rpm_curr_wk_qtr,
      Quarter_of_year   RPM_FIS_QTR,
      TO_CHAR (sysdate - 2, 'YYYY-mm-dd') rpm_2d_back,
      TO_CHAR ((d1.week_ending_date - 399), 'yyyy-mm-dd') rpm_57w_back,
      TO_CHAR (ADD_MONTHS (d1.month_ending_date-15, -13)
                       , 'YYYY-MM ('
                        )
             || TRIM (TO_CHAR (ADD_MONTHS (d1.month_ending_date-15, -13), 'MONTH'))
             || ')' rpm_prior_13_mth,
      CASE WHEN quarter_of_year_name = '01'
                   THEN 'FY_'||to_char(cast(substr(quarter_of_year,4,4) as int)-1)||'04'
                ELSE 'FY_'||(substr(quarter_of_year,4,4))||'0'||(quarter_of_year_name-1)
             END rpm_prior_1_qtr,
       (SELECT 'FY_'||(d3.fiscal_year)||quarter_of_year_name
                                  FROM bal.dates d3
                                 WHERE d3.actual_date = trunc(sysdate-7)) rpm_prior_wk_qtr,
               ( SELECT (d3.fiscal_month)
                                  FROM bal.dates d3
                                 WHERE d3.actual_date = trunc(sysdate-7)) as rpm_prior_wk_mth,
      TO_CHAR ((d1.week_ending_date - 7), 'YYYY') rpm_prior_wk_yr,
      (week_ending_date) - 84 "12W Prior",
      case when TO_NUMBER(TO_CHAR(sysdate,'MM')) < 3 THEN TRUNC (sysdate-365, 'YEAR') ELSE TRUNC (sysdate, 'YEAR')  END "Ops_Prompt_Variable",
      case when week_of_year = 1 then to_char(TRUNC(WEEK_ENDING_DATE) - (WEEK_OF_YEAR * 7), 'YYYY-MM-DD') else to_char(TRUNC(WEEK_ENDING_DATE) - (WEEK_OF_YEAR * 7 - 7), 'YYYY-MM-DD') end "rpm_first_week_yr",
      case when week_of_year = 1 then to_char(TRUNC(ly_WEEK_ENDING_DATE) - (WEEK_OF_YEAR * 7), 'YYYY-MM-DD') else to_char (TRUNC(ly_WEEK_ENDING_DATE) - (WEEK_OF_YEAR * 7 - 7), 'YYYY-MM-DD') END "rpm_first_week_ly",
      'FY_'||TO_CHAR ((d1.week_ending_date - 7), 'YYYY') as edw_prior_wk_year,
       (SELECT 'FQ'||(d3.fiscal_year)||' '||quarter_of_year_name
                                  FROM bal.dates d3
                                 WHERE d3.actual_date = trunc(sysdate-7)) as edw_prior_wk_quarter,
      prior_fis_year  "LastFiscalYear",
      (SELECT day_of_week from bal.dates d5 where d5.actual_date = trunc(sysdate-1)) YEST_DAY_NUM,
      (SELECT fiscal_date FROM bal.dates d4 WHERE d4.actual_date = trunc(sysdate-3)) RPM_3D_BACK,
      (SELECT fiscal_date FROM bal.dates d4 WHERE d4.actual_date = trunc(sysdate-14)) RPM_14D_BACK,
      TO_CHAR ((d1.week_ending_date - 63), 'yyyy-mm-dd') rpm_9w_back,
      TO_CHAR ((d1.week_ending_date - 21), 'yyyy-mm-dd') rpm_3w_back,
      (ly_week_ending_Date-7)-364 as last_week_lly,
      TO_CHAR (((ly_week_ending_Date-7)-364), 'yyyy-mm-dd') as rpm_last_week_lly,
      week_ending_Date-6 as week_start_date,
      (select min(actual_date) from bal.dates where fiscal_year = (select fiscal_year from bal.dates where actual_date = trunc(d1.actual_date-7))) lw_fiscal_ytd_start,
      (select min(actual_date) from bal.dates where quarter_of_year = (select quarter_of_year from bal.dates where actual_date = trunc(d1.actual_date-7))) lw_fiscal_qtd_start,
      (select min(actual_date) from bal.dates where fiscal_month = (select fiscal_month from bal.dates where actual_date = trunc(d1.actual_date-7))) lw_fiscal_mtd_start,
      (week_ending_Date-7)-364 as last_week_ly,
      (week_ending_Date)-364 as current_week_ly,
      (SELECT
          MIN(week_ending_date) as lm_week_start_date
      FROM
          bal.dates_week
      WHERE
          fiscal_month IN (
              SELECT
                  ( TO_CHAR(add_months(d4.month_ending_date - 15,-1),'YYYY-MM (')
                  || TRIM(TO_CHAR(add_months(d4.month_ending_date - 15,-1),'MONTH') )
                  || ')' )
              FROM
                  bal.dates d4
              WHERE
                  actual_date = trunc(SYSDATE)
              GROUP BY (
                  TO_CHAR(add_months(d4.month_ending_date - 15,-1),'YYYY-MM (')
                  || TRIM(TO_CHAR(add_months(d4.month_ending_date - 15,-1),'MONTH') )
                  || ')'
              )
          )) as lm_week_Start_Date,
          (SELECT
          MAX(week_ending_date) as lm_week_end_date
      FROM
          bal.dates_week
      WHERE
          fiscal_month IN (
              SELECT
                  ( TO_CHAR(add_months(d4.month_ending_date - 15,-1),'YYYY-MM (')
                  || TRIM(TO_CHAR(add_months(d4.month_ending_date - 15,-1),'MONTH') )
                  || ')' )
              FROM
                  bal.dates d4
              WHERE
                  actual_date = trunc(SYSDATE)
              GROUP BY (
                  TO_CHAR(add_months(d4.month_ending_date - 15,-1),'YYYY-MM (')
                  || TRIM(TO_CHAR(add_months(d4.month_ending_date - 15,-1),'MONTH') )
                  || ')'
              )
          )) as lm_week_End_Date,
          week_ending_date-14 as last_two_week,
          week_ending_Date-13 as lw_start_date,
      (trunc(sysdate, 'D') - 182) DATE_182_DAYS_BACK,
      (SELECT
          min_date
      FROM
          (
              SELECT
                  fiscal_month,
                  MIN(actual_date) AS min_date,
                  ROW_NUMBER() OVER(
                      PARTITION BY NULL
                      ORDER BY
                          fiscal_month DESC
                  ) AS row_number
              FROM
                  bal.dates d5
              WHERE
                  actual_date BETWEEN trunc(SYSDATE,'D') - 400 AND trunc(SYSDATE,'D') - 1
              GROUP BY
                  fiscal_month
              ORDER BY
                  1 DESC
          )
      WHERE
          row_number = 12) as start_12_months_ago
      FROM bal.dates d1
       WHERE d1.actual_date = TRUNC (sysdate)
       ;;
    }

  dimension: date_vars_join {
    type: string
    sql: 'X' ;;
  }
    dimension: date {
      type: date
      primary_key: yes
      sql: ${TABLE}."Date" ;;
    }

    dimension: ytd_start {
      type: date
      sql: ${TABLE}.YTD_START ;;
    }

    dimension: br_yesterday {
      type: date
      sql: ${TABLE}."br_yesterday" ;;
    }

    dimension: date_ly {
      type: date
      sql: ${TABLE}."date_ly" ;;
    }

    dimension: start_date {
      type: date
      label: "Start Date"
      sql: ${TABLE}."Start Date" ;;
    }

    dimension: end_date {
      type: date
      label: "End Date"
      sql: ${TABLE}."End Date" ;;
    }

    dimension: 4_w_prior {
      type: date
      label: "4W Prior"
      sql: ${TABLE}."4W Prior" ;;
    }

    dimension: 2_w_prior {
      type: date
      label: "2W Prior"
      sql: ${TABLE}."2W Prior" ;;
    }

    dimension: sttenweeksago {
      type: date
      sql: ${TABLE}."sttenweeksago";;
    }

    dimension: endtenweeksago {
      type: date
      sql: ${TABLE}.ENDTENWEEKSAGO ;;
    }

    dimension: nextweek {
      type: date
      sql: ${TABLE}.NEXTWEEK ;;
    }

    dimension: nexttwelveweeks {
      type: date
      sql: ${TABLE}.NEXTTWELVEWEEKS ;;
    }

    dimension: sttwelveweeksago {
      type: date
      sql: ${TABLE}.STTWELVEWEEKSAGO ;;
    }

    dimension: current_we {
      type: date
      sql: ${TABLE}.CURRENT_WE ;;
    }

    dimension: last_week {
      type: date
      sql: ${TABLE}.LAST_WEEK ;;
    }

    dimension: cyear {
      type: string
      sql: ${TABLE}.Cyear ;;
    }

    dimension: fps_ldate {
      type: date
      label: "FPS LDate"
      sql: ${TABLE}."FPS LDate" ;;
    }

    dimension: current_month {
      type: string
      sql: ${TABLE}.Current_Month ;;
    }

    dimension: me_date {
      type: date
      sql: ${TABLE}.Me_Date ;;
    }

    dimension: cmonth {
      type: string
      sql: ${TABLE}.Cmonth ;;
    }

    dimension: rpm_yesterday {
      type: string
      sql: ${TABLE}.RPM_YESTERDAY ;;
    }

    dimension: rpm_last_we {
      type: string
      sql: ${TABLE}.RPM_LAST_WE ;;
    }

    dimension: rpm_curr_year {
      type: string
      sql: ${TABLE}.RPM_CURR_YEAR ;;
    }

    dimension: rpm_curr_month {
      type: string
      sql: ${TABLE}.RPM_CURR_MONTH ;;
    }

    dimension: rpm_prior_1_mth {
      type: string
      sql: ${TABLE}.RPM_PRIOR_1_MTH ;;
    }

    dimension: rpm_prior_2_mth {
      type: string
      sql: ${TABLE}.RPM_PRIOR_2_MTH ;;
    }

    dimension: rpm_curr_wk_mth {
      type: string
      sql: ${TABLE}.RPM_CURR_WK_MTH ;;
    }

    dimension: rpm_last_week {
      type: string
      sql: ${TABLE}.RPM_LAST_WEEK ;;
    }

    dimension: rpm_today {
      type: string
      sql: ${TABLE}.RPM_TODAY ;;
    }

    dimension: rpm_current_we {
      type: string
      sql: ${TABLE}.RPM_CURRENT_WE ;;
    }

    dimension: rpm_current_week {
      type: string
      sql: ${TABLE}.RPM_CURRENT_WEEK ;;
    }

    dimension: rpm_2_w_back {
      type: string
      sql: ${TABLE}.RPM_2W_BACK ;;
    }

    dimension: rpm_2_w_back_ly {
      type: string
      sql: ${TABLE}.RPM_2W_BACK_LY ;;
    }

    dimension: rpm_curr_wk_ly {
      type: string
      sql: ${TABLE}.RPM_CURR_WK_LY ;;
    }

    dimension: rpm_last_wk_ly {
      type: string
      sql: ${TABLE}.RPM_LAST_WK_LY ;;
    }

    dimension: rpm_next_wk_ly {
      type: string
      sql: ${TABLE}.RPM_NEXT_WK_LY ;;
    }

    dimension: rpm_yesterday_ly {
      type: string
      sql: ${TABLE}.RPM_YESTERDAY_LY ;;
    }

    dimension: rpm_today_ly {
      type: string
      sql: ${TABLE}.RPM_TODAY_LY ;;
    }

    dimension: rpm_tomorrow {
      type: string
      sql: ${TABLE}.RPM_TOMORROW ;;
    }

    dimension: rpm_tomorrow_ly {
      type: string
      sql: ${TABLE}.RPM_TOMORROW_LY ;;
    }

    dimension: rpm_23_w_back {
      type: string
      sql: ${TABLE}.RPM_23W_BACK ;;
    }

    dimension: rpm_4_w_back {
      type: string
      sql: ${TABLE}.RPM_4W_BACK ;;
    }

    dimension: rpm_curr_wk_qtr {
      type: string
      sql: ${TABLE}.RPM_CURR_WK_QTR ;;
    }

    dimension: rpm_fis_qtr {
      type: string
      sql: ${TABLE}.RPM_FIS_QTR ;;
    }

    dimension: rpm_2_d_back {
      type: string
      sql: ${TABLE}.RPM_2D_BACK ;;
    }

    dimension: rpm_57_w_back {
      type: string
      sql: ${TABLE}.RPM_57W_BACK ;;
    }

    dimension: rpm_prior_13_mth {
      type: string
      sql: ${TABLE}.RPM_PRIOR_13_MTH ;;
    }

    dimension: rpm_prior_1_qtr {
      type: string
      sql: ${TABLE}.RPM_PRIOR_1_QTR ;;
    }

    dimension: rpm_prior_wk_qtr {
      type: string
      sql: ${TABLE}.RPM_PRIOR_WK_QTR ;;
    }

    dimension: rpm_prior_wk_mth {
      type: string
      sql: ${TABLE}.RPM_PRIOR_WK_MTH ;;
    }

    dimension: rpm_prior_wk_yr {
      type: string
      sql: ${TABLE}.RPM_PRIOR_WK_YR ;;
    }

    dimension: 12_w_prior {
      type: date
      label: "12W Prior"
      sql: ${TABLE}."12W Prior" ;;
    }

    dimension: ops_prompt_variable {
      type: date
      sql: ${TABLE}.Ops_Prompt_Variable ;;
    }

    dimension: rpm_first_week_yr {
      type: string
      sql: ${TABLE}.rpm_first_week_yr ;;
    }

    dimension: rpm_first_week_ly {
      type: string
      sql: ${TABLE}.rpm_first_week_ly ;;
    }

    dimension: edw_prior_wk_year {
      type: string
      sql: ${TABLE}.EDW_PRIOR_WK_YEAR ;;
    }

    dimension: edw_prior_wk_quarter {
      type: string
      sql: ${TABLE}.EDW_PRIOR_WK_QUARTER ;;
    }

    dimension: last_fiscal_year {
      type: string
      sql: ${TABLE}.LastFiscalYear ;;
    }

    dimension: yest_day_num {
      type: number
      sql: ${TABLE}.YEST_DAY_NUM ;;
    }

    dimension: rpm_3_d_back {
      type: string
      sql: ${TABLE}.RPM_3D_BACK ;;
    }

    dimension: rpm_14_d_back {
      type: string
      sql: ${TABLE}.RPM_14D_BACK ;;
    }

    dimension: rpm_9_w_back {
      type: string
      sql: ${TABLE}.RPM_9W_BACK ;;
    }

    dimension: rpm_3_w_back {
      type: string
      sql: ${TABLE}.RPM_3W_BACK ;;
    }

    dimension: last_week_lly {
      type: date
      sql: ${TABLE}.LAST_WEEK_LLY ;;
    }

    dimension: rpm_last_week_lly {
      type: string
      sql: ${TABLE}.RPM_LAST_WEEK_LLY ;;
    }

    dimension: week_start_date {
      type: date
      sql: ${TABLE}.WEEK_START_DATE ;;
    }

    dimension: lw_fiscal_ytd_start {
      type: date
      sql: ${TABLE}.LW_FISCAL_YTD_START ;;
    }

    dimension: lw_fiscal_qtd_start {
      type: date
      sql: ${TABLE}.LW_FISCAL_QTD_START ;;
    }

    dimension: lw_fiscal_mtd_start {
      type: date
      sql: ${TABLE}.LW_FISCAL_MTD_START ;;
    }

    dimension: last_week_ly {
      type: date
      sql: ${TABLE}.LAST_WEEK_LY ;;
    }

    dimension: current_week_ly {
      type: date
      sql: ${TABLE}.CURRENT_WEEK_LY ;;
    }

    dimension: lm_week_start_date {
      type: date
      sql: ${TABLE}.LM_WEEK_START_DATE ;;
    }

    dimension: lm_week_end_date {
      type: date
      sql: ${TABLE}.LM_WEEK_END_DATE ;;
    }

    dimension: last_two_week {
      type: date
      sql: ${TABLE}.LAST_TWO_WEEK ;;
    }

    dimension: lw_start_date {
      type: date
      sql: ${TABLE}.LW_START_DATE ;;
    }

    dimension: date_182_days_back {
      type: date
      sql: ${TABLE}.DATE_182_DAYS_BACK ;;
    }

    dimension: start_12_months_ago {
      type: date
      sql: ${TABLE}.START_12_MONTHS_AGO ;;
    }

    set: detail {
      fields: [
        date,
        ytd_start,
        br_yesterday,
        date_ly,
        start_date,
        end_date,
        4_w_prior,
        2_w_prior,
        sttenweeksago,
        endtenweeksago,
        nextweek,
        nexttwelveweeks,
        sttwelveweeksago,
        current_we,
        last_week,
        cyear,
        fps_ldate,
        current_month,
        me_date,
        cmonth,
        rpm_yesterday,
        rpm_last_we,
        rpm_curr_year,
        rpm_curr_month,
        rpm_prior_1_mth,
        rpm_prior_2_mth,
        rpm_curr_wk_mth,
        rpm_last_week,
        rpm_today,
        rpm_current_we,
        rpm_current_week,
        rpm_2_w_back,
        rpm_2_w_back_ly,
        rpm_curr_wk_ly,
        rpm_last_wk_ly,
        rpm_next_wk_ly,
        rpm_yesterday_ly,
        rpm_today_ly,
        rpm_tomorrow,
        rpm_tomorrow_ly,
        rpm_23_w_back,
        rpm_4_w_back,
        rpm_curr_wk_qtr,
        rpm_fis_qtr,
        rpm_2_d_back,
        rpm_57_w_back,
        rpm_prior_13_mth,
        rpm_prior_1_qtr,
        rpm_prior_wk_qtr,
        rpm_prior_wk_mth,
        rpm_prior_wk_yr,
        12_w_prior,
        ops_prompt_variable,
        rpm_first_week_yr,
        rpm_first_week_ly,
        edw_prior_wk_year,
        edw_prior_wk_quarter,
        last_fiscal_year,
        yest_day_num,
        rpm_3_d_back,
        rpm_14_d_back,
        rpm_9_w_back,
        rpm_3_w_back,
        last_week_lly,
        rpm_last_week_lly,
        week_start_date,
        lw_fiscal_ytd_start,
        lw_fiscal_qtd_start,
        lw_fiscal_mtd_start,
        last_week_ly,
        current_week_ly,
        lm_week_start_date,
        lm_week_end_date,
        last_two_week,
        lw_start_date,
        date_182_days_back,
        start_12_months_ago
      ]
    }
  }

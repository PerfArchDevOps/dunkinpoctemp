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

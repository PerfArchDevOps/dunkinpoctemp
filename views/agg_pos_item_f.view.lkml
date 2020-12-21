view: agg_pos_item

{
  label: "Aggregate Aware - Fact - POS Sales"

  sql_table_name:
  {% if    pos_item_brand_d.item_brand_name._in_query
    and    (dayprt_grp_d.dayprt_grp_code._in_query or dayprt_grp_d.dayprt_grp_desc._in_query)
    and    (dates.fiscal_week._in_query or dates_week.fiscal_week._in_query)  %}
    BAL3.POS_BRAND_BY_WEEK_DAYPRT_GRP_F
  {% elsif    pos_item_brand_d.item_brand_name._in_query
    and    (dayprt_grp_d.dayprt_grp_code._in_query or dayprt_grp_d.dayprt_grp_desc._in_query)
    and    dates.fiscal_date._in_query %}
    BAL3.POS_BRAND_BY_DAY_DAYPRT_GRP_F
  {% elsif
           (pos_item_sub_catgry_d.dbi_item_brand_name._in_query or
           pos_item_sub_catgry_d.dbi_item_catgry_name._in_query or
           pos_item_sub_catgry_d.dbi_item_sub_catgry_name._in_query)
    and    (dayprt_grp_d.dayprt_grp_code._in_query or dayprt_grp_d.dayprt_grp_desc._in_query)
    and    (dates.fiscal_week._in_query or dates_week.fiscal_week._in_query) %}
    BAL3.POS_SUBCAT_BY_WK_DAYPRT_GRP_F
  {% elsif
      (pos_item_sub_catgry_d.dbi_item_brand_name._in_query or
       pos_item_sub_catgry_d.dbi_item_catgry_name._in_query or
       pos_item_sub_catgry_d.dbi_item_sub_catgry_name._in_query)
    and    (dayprt_grp_d.dayprt_grp_code._in_query or dayprt_grp_d.dayprt_grp_desc._in_query)
    and    dates.fiscal_date._in_query
  %}
    BAL3.POS_SUBCAT_BY_DAY_DAYPRT_GRP_F
  {% elsif pos_item_brand_d.item_brand_name._in_query
    and    (dayprt_grp_d.dayprt_grp_code._in_query or dayprt_grp_d.dayprt_grp_desc._in_query)
    and    (dates.fiscal_week._in_query or dates_week.fiscal_week._in_query) %}
    BAL3.POS_ITEM_BY_WEEK_DAYPRT_F
  {% elsif    (dayprt_grp_d.dayprt_grp_code._in_query or dayprt_grp_d.dayprt_grp_desc._in_query)
    and    (dates.fiscal_date._in_query)
    %}
    BAL3.POS_ITEM_BY_DAYPRT_F
  {% elsif  (dates.fiscal_week._in_query or dates_week.fiscal_week._in_query) %}
    BAL3.POS_ITEM_BY_WEEK_F
  {% else %}
    BAL3.POS_ITEM_BY_DAY_F
  {% endif %}
  ;;


# Foreign key dimensions

    dimension: dwh_dayprt_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_DAYPRT_ID ;;
    }
    dimension: dwh_dayprt_grp_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_DAYPRT_GRP_ID ;;
    }

    dimension: dwh_item_brand_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_ITEM_BRAND_ID ;;
    }

    dimension: dwh_item_sub_catgry_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_ITEM_SUB_CATGRY_ID ;;
    }

    dimension: dwh_pos_menu_item_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_POS_MENU_ITEM_ID ;;
    }

    dimension: dwh_pos_ordr_type_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
    }

    dimension: dwh_shop_brand_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
    }

    dimension: dwh_shop_rooftp_id {
      type: number
      hidden: yes  sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
    }

# Measures

    dimension: net_sales_amt_base {
      type: number
      hidden: no
      sql: ${TABLE}.NET_SALES_AMT ;;
    }

    dimension: net_sales_amt_ly_base {
      type: number
      hidden: no
      sql: ${TABLE}.NET_SALES_AMT_LY ;;
    }

    measure: net_sales_amt {
      type: sum
      hidden: no
      value_format: "$#,##0.00"
      sql: ${TABLE}.NET_SALES_AMT ;;
    }

    measure: net_sales_amt_ly {
      type: sum
      hidden: no
      value_format: "$#,##0.00"
      sql: ${TABLE}.NET_SALES_AMT_LY ;;
    }

    dimension_group: transctn_bus {
      type: time
      hidden: no
      timeframes: [
        raw,
        date
      ]
      convert_tz: no
      datatype: datetime
      sql: ${TABLE}.TRANSCTN_BUS_DATE ;;
    }

    dimension_group: transctn_bus_week {
      type: time
      hidden: no
      timeframes: [
        raw,
        date
      ]
      convert_tz: no
      datatype: datetime
      sql: ${TABLE}.TRANSCTN_BUS_DATE ;;
    }

    dimension: yoy_sales_day_ind {
      type: number
      hidden: no
      sql: ${TABLE}.YOY_SALES_DAY_IND ;;
    }

    measure: net_sales_growth {
      label: "Net Sales Growth"
      type: sum
      value_format: "$#,##0.00"
      sql: NVL(${net_sales_amt_base},0)-NVL(${net_sales_amt_ly_base},0) ;;
    }

    measure: net_sales_growth_pct_sssd {
      label: "Net Sales Growth %"
      type: sum
      value_format: "0.00%"
      sql: ((NVL(${net_sales_amt_base},0)/(NVL(${net_sales_amt_ly_base},0))-1)*100 ;;
    }

  }

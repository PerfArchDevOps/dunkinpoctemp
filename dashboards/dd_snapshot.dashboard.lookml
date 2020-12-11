- dashboard: dd_sales_snapshot
  title: DD Sales Snapshot
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: QTD
    title: QTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name,
        pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: looker_column
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
        source_field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name, pos_check_by_week_f.transaction_count_sssw,
        pos_check_by_week_f.transaction_count_ly_sssw]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
        source_field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name,
      pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, sales, gwth, tc, tc_gwth, tkt_avg]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      gwth:
        bg_color: "#cfffff"
      sales:
        bg_color: "#cfffff"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#cfffff"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#cfffff",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 2
    col: 16
    width: 4
    height: 4
  - name: QTD (2)
    title: QTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    show_sql_query_menu_options: false
    column_order: [shop_rooftp_mastr_d.dma_desc, sales, gwth, tc, tc_gwth, tkt_avg,
      tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
      gwth:
        is_active: false
    series_text_format:
      gwth:
        bg_color: "#cfffff"
      sales:
        bg_color: "#cfffff"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#cfffff"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#cfffff",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, shop_rooftp_mastr_d.dma_desc]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 6
    col: 16
    width: 4
    height: 9
  - name: QTD (3)
    title: QTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [shop_rooftp_mastr_d.dma_desc, pos_brand_by_week_dayprt_grp_f.net_sales_amt,
        pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    show_sql_query_menu_options: false
    column_order: [shop_rooftp_mastr_d.dma_desc, sales, gwth, tc, tc_gwth, tkt_avg,
      tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      gwth:
        bg_color: "#cfffff"
      sales:
        bg_color: "#cfffff"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#cfffff"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#cfffff",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, shop_rooftp_mastr_d.dma_desc]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 15
    col: 16
    width: 4
    height: 5
  - name: Focus DMAs
    title: Focus DMAs
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [shop_rooftp_mastr_d.dma_desc, pos_brand_by_week_dayprt_grp_f.net_sales_amt,
        pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: before 2020/11/29
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: before 2020/11/29
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: before 2020/11/29
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    show_sql_query_menu_options: false
    column_order: [shop_rooftp_mastr_d.dma_desc, sales, gwth, tc, tc_gwth, tkt_avg,
      tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
      shop_rooftp_mastr_d.dma_desc: 500
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      shop_rooftp_mastr_d.dma_desc:
        bg_color: "#fcd1b8"
      gwth:
        bg_color: "#fcd1b8"
      tc_gwth:
        bg_color: "#fcd1b8"
      sales:
        bg_color: "#fcd1b8"
      tc:
        bg_color: "#fcd1b8"
      tkt_avg:
        bg_color: "#fcd1b8"
      tkt_avg_ly:
        bg_color: "#FCA973"
      tkt:
        bg_color: "#fcd1b8"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fcd1b8"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fcd1b8",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth, tc_gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tkt_avg_ly]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: tc, label: TC,
        expression: "${pos_check_by_week_f.transaction_count_sssw} / ${pos_yoy_week_sales_f.site_count_sssd}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: tkt_avg, label: Tkt Avg, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt_avg_ly,
        label: Tkt Avg LY, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt,
        label: Tkt %, expression: "((${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ) - \n(${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )) / (${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    row: 6
    col: 0
    width: 16
    height: 9
  - name: National
    title: National
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: before 2020/12/13
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: national, label: National, expression: '"National"', value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd]
      filters:
        dates_week.fiscal_week: before 2020/12/13
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      dynamic_fields: [{table_calculation: national, label: National, expression: '"National"',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: national
        source_field_name: national
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw]
      filters:
        dates_week.fiscal_week: before 2020/12/13
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: national, label: National, expression: '"National"', value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: national
        source_field_name: national
    show_sql_query_menu_options: false
    pinned_columns:
      national: left
    column_order: [national, sales, gwth, tc, tc_gwth, tkt_avg, tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
      national: 500
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      gwth:
        bg_color: "#fcd1b8"
      tc_gwth:
        bg_color: "#fcd1b8"
      tc:
        bg_color: "#fcd1b8"
      sales:
        bg_color: "#fcd1b8"
      tkt_avg:
        bg_color: "#fcd1b8"
      tkt_avg_ly:
        bg_color: "#fcd1b8"
      tkt:
        bg_color: "#fcd1b8"
      national:
        bg_color: "#fcd1b8"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fcd1b8"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fcd1b8",
        font_color: "#ff1010", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth, tc_gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tkt_avg_ly]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: tc, label: TC,
        expression: "${pos_check_by_week_f.transaction_count_sssw} / ${pos_yoy_week_sales_f.site_count_sssd}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: tkt_avg, label: Tkt Avg, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt_avg_ly,
        label: Tkt Avg LY, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} ", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: tkt, label: Tkt %, expression: "((${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ) - \n(${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )) / (${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    row: 0
    col: 0
    width: 16
    height: 2
  - name: DD Ops Vice President
    title: DD Ops Vice President
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name,
        pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: before 2020/12/13
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: looker_column
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name]
      filters:
        dates_week.fiscal_week: before 2020/12/13
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
        source_field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name, pos_check_by_week_f.transaction_count_sssw,
        pos_check_by_week_f.transaction_count_ly_sssw]
      filters:
        dates_week.fiscal_week: before 2020/12/13
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
        source_field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name,
      pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, sales, gwth, tc, tc_gwth, tkt_avg]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 500
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name:
        bg_color: "#fcd1b8"
      gwth:
        bg_color: "#fcd1b8"
      tc_gwth:
        bg_color: "#fcd1b8"
      sales:
        bg_color: "#fcd1b8"
      tc:
        bg_color: "#fcd1b8"
      tkt_avg:
        bg_color: "#fcd1b8"
      tkt_avg_ly:
        bg_color: "#fcd1b8"
      tkt:
        bg_color: "#fcd1b8"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fcd1b8"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fcd1b8",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth, tc_gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tkt_avg_ly]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: tc, label: TC,
        expression: "${pos_check_by_week_f.transaction_count_sssw} / ${pos_yoy_week_sales_f.site_count_sssd}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: tkt_avg, label: Tkt Avg, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt_avg_ly,
        label: Tkt Avg LY, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt,
        label: Tkt %, expression: "((${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ) - \n(${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )) / (${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    row: 2
    col: 0
    width: 16
    height: 4
  - name: Tim Hortons Blunting DMAs
    title: Tim Hortons Blunting DMAs
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: before 2020/11/29
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: before 2020/11/29
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: before 2020/11/29
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    show_sql_query_menu_options: false
    column_order: [shop_rooftp_mastr_d.dma_desc, sales, gwth, tc, tc_gwth, tkt_avg,
      tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
      shop_rooftp_mastr_d.dma_desc: 500
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      shop_rooftp_mastr_d.dma_desc:
        bg_color: "#fcd1b8"
      gwth:
        bg_color: "#fcd1b8"
      tc_gwth:
        bg_color: "#fcd1b8"
      sales:
        bg_color: "#fcd1b8"
      tc:
        bg_color: "#fcd1b8"
      tkt_avg:
        bg_color: "#fcd1b8"
      tkt_avg_ly:
        bg_color: "#FCA973"
      tkt:
        bg_color: "#fcd1b8"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fcd1b8"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fcd1b8",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth, tc_gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tkt_avg_ly]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: tc, label: TC,
        expression: "${pos_check_by_week_f.transaction_count_sssw} / ${pos_yoy_week_sales_f.site_count_sssd}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: tkt_avg, label: Tkt Avg, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt_avg_ly,
        label: Tkt Avg LY, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} ", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}, {table_calculation: tkt,
        label: Tkt %, expression: "((${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_check_by_week_f.transaction_count_sssw} ) - \n(${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )) / (${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}\
          \ / ${pos_check_by_week_f.transaction_count_ly_sssw} )", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    row: 15
    col: 0
    width: 16
    height: 5
  - name: QTD (4)
    title: QTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: national, label: National, expression: '"National"', value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      dynamic_fields: [{table_calculation: national, label: National, expression: '"National"',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: national
        source_field_name: national
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw]
      filters:
        dates_week.fiscal_week: after 2020/10/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number},
        {table_calculation: national, label: National, expression: '"National"', value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: national
        source_field_name: national
    show_sql_query_menu_options: false
    pinned_columns:
      national: left
    column_order: [national, sales, gwth, tc, tc_gwth, tkt_avg, tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      gwth:
        bg_color: "#cfffff"
        align: right
      sales:
        bg_color: "#cfffff"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#cfffff"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#cfffff",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, national]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 0
    col: 16
    width: 4
    height: 2
  - name: MTD
    title: MTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name,
        pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: looker_column
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
        source_field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name, pos_check_by_week_f.transaction_count_sssw,
        pos_check_by_week_f.transaction_count_ly_sssw]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
        source_field_name: shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name,
      pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, sales, gwth, tc, tc_gwth, tkt_avg]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
      sales:
        is_active: false
    series_text_format:
      gwth:
        bg_color: "#fffeae"
      sales:
        bg_color: "#fffeae"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fffeae"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fffeae",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name]
    sorts: [shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name desc]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 2
    col: 20
    width: 4
    height: 4
  - name: MTD (2)
    title: MTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: national, label: National, expression: '"National"', value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      join_fields: []
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      dynamic_fields: [{table_calculation: national, label: National, expression: '"National"',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: national
        source_field_name: national
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number},
        {table_calculation: national, label: National, expression: '"National"', value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: national
        source_field_name: national
    show_sql_query_menu_options: false
    pinned_columns:
      national: left
    column_order: [national, sales, gwth, tc, tc_gwth, tkt_avg, tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
      gwth:
        is_active: false
    series_text_format:
      gwth:
        bg_color: "#fffeae"
      sales:
        bg_color: "#fffeae"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fffeae"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fffeae",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, national]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 0
    col: 20
    width: 4
    height: 2
  - name: MTD (3)
    title: MTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
        shop_rooftp_mastr_d.dma_nbr: '501,506,602,528,504,511,512,517,521,524,527,533,534,539,548,623,659,753,839,567'
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    show_sql_query_menu_options: false
    column_order: [shop_rooftp_mastr_d.dma_desc, sales, gwth, tc, tc_gwth, tkt_avg,
      tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      gwth:
        bg_color: "#fffeae"
      sales:
        bg_color: "#fffeae"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fffeae"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fffeae",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, shop_rooftp_mastr_d.dma_desc]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 6
    col: 20
    width: 4
    height: 9
  - name: MTD (4)
    title: MTD
    merged_queries:
    - model: dunkin_poc
      explore: pos_brand_by_week_dayprt_grp_f
      type: table
      fields: [shop_rooftp_mastr_d.dma_desc, pos_brand_by_week_dayprt_grp_f.net_sales_amt,
        pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        pos_item_brand_d.item_brand_name: Dunkin
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_brand_by_week_dayprt_grp_f.net_sales_amt desc]
      limit: 500
      dynamic_fields: [{table_calculation: gwth, label: "$Gwth", expression: "(( ${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
            \ / ${pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly}) - 1 )", value_format: !!null '',
          value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: dunkin_poc
      explore: pos_yoy_week_sales_f
      type: table
      fields: [pos_yoy_week_sales_f.site_count_sssd, shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_yoy_week_sales_f.site_count_sssd desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    - model: dunkin_poc
      explore: pos_check_by_week_f
      type: table
      fields: [pos_check_by_week_f.transaction_count_sssw, pos_check_by_week_f.transaction_count_ly_sssw,
        shop_rooftp_mastr_d.dma_desc]
      filters:
        dates_week.fiscal_week: after 2020/12/01
        dates_week.fiscal_year: '2020'
        shop_brand_mastr_d.brand_code: DD
        shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: -"-1 UNASSIGNED"
        pos_transctn_grpng_d.transctn_grpng_desc: Dunkin
        shop_rooftp_mastr_d.dma_nbr: '500,505,510,514,515,537,538,555'
      sorts: [pos_check_by_week_f.transaction_count_sssw desc]
      limit: 500
      dynamic_fields: [{table_calculation: tc_gwth, label: TC Gwth, expression: "(${pos_check_by_week_f.transaction_count_sssw}\
            \ / ${pos_check_by_week_f.transaction_count_ly_sssw}) - 1.00", value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: shop_rooftp_mastr_d.dma_desc
        source_field_name: shop_rooftp_mastr_d.dma_desc
    show_sql_query_menu_options: false
    column_order: [shop_rooftp_mastr_d.dma_desc, sales, gwth, tc, tc_gwth, tkt_avg,
      tkt_avg_ly, tkt]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_column_widths:
      shop_rooftp_mastr_d.dd_sl_vp_pyrmd_name: 180
      gwth: 85
      sales: 78
    series_cell_visualizations:
      pos_brand_by_week_dayprt_grp_f.net_sales_amt:
        is_active: true
    series_text_format:
      gwth:
        bg_color: "#fffeae"
      sales:
        bg_color: "#fffeae"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#fffeae"
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting: [{type: less than, value: 0, background_color: "#fffeae",
        font_color: "#ff2320", color_application: {collection_id: dunkin, palette_id: dunkin-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [gwth]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [pos_brand_by_week_dayprt_grp_f.net_sales_amt, pos_brand_by_week_dayprt_grp_f.net_sales_amt_ly,
      pos_yoy_week_sales_f.site_count_sssd, pos_check_by_week_f.transaction_count_sssw,
      pos_check_by_week_f.transaction_count_ly_sssw, tc_gwth, shop_rooftp_mastr_d.dma_desc]
    dynamic_fields: [{table_calculation: sales, label: Sales, expression: "${pos_brand_by_week_dayprt_grp_f.net_sales_amt}\
          \ / ${pos_yoy_week_sales_f.site_count_sssd}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    row: 15
    col: 20
    width: 4
    height: 5

resource "newrelic_one_dashboard" "dynamicDashboard" {
  for_each    = var.dashboard
  name        = each.value.name
  permissions = each.value.permissions

  dynamic "page" {
    for_each = var.page
    content {
      name = page.value.name

      dynamic "widget_table" {
        for_each = page.value.widget_table == true? page.value.table:{}
        # for_each = page.value.table
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
        }
      }

      dynamic "widget_bar" {
        for_each = page.value.widget_bar == true? page.value.bar:{}
        # for_each = page.value.bar
        iterator = widget

        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
        }

      }

      dynamic "widget_line" {
        for_each = page.value.widget_line == true? page.value.line:{}
        # for_each = page.value.line
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
        }

      }


      dynamic "widget_pie" {
        for_each = page.value.widget_pie == true? page.value.pie:{}
        # for_each = page.value.pie
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query

          }
        }



      }

    }

  }

}

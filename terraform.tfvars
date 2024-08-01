newrelic_account_id = "4438264"

dashboard = {
  "0" = {
    name        = "Dynamic-Dashboard-for-Monitoring"
    permissions = "public_read_only"
} }
page = {
  "0" = {
    name = "frontend"
    table = {
      "key1" = {
        title  = "Average duration, by application"
        row    = 1
        column = 1
        width  = 6
        height = 3

        query = "SELECT average(duration) FROM BrowserInteraction FACET appName since 1 month ago"
      }
    }

    bar = {
      "key1" = {
        title  = "Session count"
        row    = 1
        column = 7
        width  = 6
        height = 3

        query = "SELECT count(session) FROM BrowserInteraction FACET appName since 1 month ago"
      }
    }
    line = {
      "key1" = {
        title  = "Largest Contentful Paint"
        row    = 2
        column = 1
        width  = 6
        height = 3

        query = "SELECT average(largestContentfulPaint) FROM PageViewTiming FACET appName TIMESERIES since 1 month ago"
      },
      "key2" = {
        title  = "User Time on this website"
        row    = 2
        column = 7
        width  = 6
        height = 3

        query = "SELECT percentile(pageHide, 75), percentile(windowUnload, 75) FROM PageViewTiming FACET appName since 1 month ago TIMESERIES "
      }
    }
    pie = {
      "key1" = {
        title  = "Page View Load Time"
        row    = 3
        column = 1
        width  = 6
        height = 3

        query = "SELECT average(queueDuration) AS 'Request queueing', average(webAppDuration) AS 'Web application', average(networkDuration) AS 'Network duration', average(domProcessingDuration) AS 'DOM processing', average(pageRenderingDuration) AS 'Page rendering' FROM PageView FACET appName since 1 month ago"
      }

    }


  }
  "1" = {
    name = "Backend"
    table = {
      "key1" = {
        title  = "Average Duration of APM Transactions"
        row    = 1
        column = 1
        width  = 6
        height = 3

        query = "SELECT average(duration) FROM Transaction WHERE appName = 'Backend-App' SINCE 1 month ago"
      }
    }

    bar = {
      "key1" = {
        title  = "CPU Utilisation"
        row    = 1
        column = 7
        width  = 6
        height = 3

        query = "SELECT average(cpuPercent) FROM SystemSample SINCE 1 month ago TIMESERIES"
      }
    }
    line = {
      "key1" = {
        title  = "Number of Transactions"
        row    = 2
        column = 1
        width  = 6
        height = 3

        query = "SELECT count(*) FROM Transaction facet appName SINCE 1 month ago TIMESERIES"
      }
    }
    pie = {
      "key1" = {
        title  = "APM Response Time"
        row    = 2
        column = 7
        width  = 6
        height = 3

        query = "SELECT average(duration) from Transaction facet appName since 1 month ago TIMESERIES"
      }

    }


  }
}




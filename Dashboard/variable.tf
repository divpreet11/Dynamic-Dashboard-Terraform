variable "newrelic_account_id" {
  description = "New relic account id"
  type        = string
}

variable "dashboard" {

  type = map(object({
    name        = string
    permissions = string}
  ))
  }

  variable "page" {
    type = any
  }
  #    variable "page"{
  #    type = map(object({

  #     name = string

  # # Chart types
  #   widget_table = bool
  #   widget_bar = bool
  #   widget_line   = bool
  #   widget_pie  = bool

  #     table = map(object({
  #       title  = string
  #       row    = number
  #       column = number
  #       width  = number
  #       height = number
  #       query  = string
  #     }))

  #     bar = map(object({
  #       title  = string
  #       row    = number
  #       column = number
  #       width  = number
  #       height = number
  #       query  = string
  #     }))

  #     line = map(object({
  #       title  = string
  #       row    = number
  #       column = number
  #       width  = number
  #       height = number
  #       query  = string
  #     }))

  #     pie = map(object({
  #       title  = string
  #       row    = number
  #       column = number
  #       width  = number
  #       height = number
  #       query  = string
  #     }))
  #   }))
  #   }
  


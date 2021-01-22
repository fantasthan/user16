resource "azurerm_monitor_autoscale_setting" "user16vm-autoscale1" {
  name                        = "user16AutoscaleSetting1"
  resource_group_name = azurerm_resource_group.user16-rg.name
  location                    = azurerm_resource_group.user16-rg.location
  target_resource_id      = azurerm_virtual_machine_scale_set.user16vmss1.id

  profile {
    name = "defaultProfile"

    capacity {
      default = 2
      minimum = 1
      maximum = 3
    }

    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_virtual_machine_scale_set.user16vmss1.id
        time_grain         = "PT1M"
        statistic          = "Average"
        time_window        = "PT5M"
        time_aggregation   = "Average"
        operator           = "GreaterThan"
        threshold          = 75
      }

      scale_action {
        direction = "Increase"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }

    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_virtual_machine_scale_set.user16vmss1.id
        time_grain         = "PT1M"
        statistic          = "Average"
        time_window        = "PT5M"
        time_aggregation   = "Average"
        operator           = "LessThan"
        threshold          = 25
      }

      scale_action {
        direction = "Decrease"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }
  }

 # notification {
 #  email {
 #    send_to_subscription_administrator    = true
 #     send_to_subscription_co_administrator = true
 #     custom_emails                         = ["admin@contoso.com"]
 #  }
 # }
}

resource "azurerm_monitor_autoscale_setting" "user16vm-autoscale2" {
  name                       = "user16AutoscaleSetting2"
  resource_group_name = azurerm_resource_group.user16-rg.name
  location                    = azurerm_resource_group.user16-rg.location
  target_resource_id     = azurerm_virtual_machine_scale_set.user16vmss2.id

  profile {
    name = "defaultProfile"

    capacity {
      default = 2
      minimum = 1
      maximum = 3
    }

    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_virtual_machine_scale_set.user16vmss2.id
        time_grain         = "PT1M"
        statistic          = "Average"
        time_window        = "PT5M"
        time_aggregation   = "Average"
        operator           = "GreaterThan"
        threshold          = 75
      }

      scale_action {
        direction = "Increase"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }

    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_virtual_machine_scale_set.user16vmss2.id
        time_grain         = "PT1M"
        statistic          = "Average"
        time_window        = "PT5M"
        time_aggregation   = "Average"
        operator           = "LessThan"
        threshold          = 25
      }

      scale_action {
        direction = "Decrease"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }
  }

 # notification {
 #  email {
 #    send_to_subscription_administrator    = true
 #     send_to_subscription_co_administrator = true
 #     custom_emails                         = ["admin@contoso.com"]
 #  }
 # }
}

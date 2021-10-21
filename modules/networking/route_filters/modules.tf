resource "azurerm_route_filter" "rtfilter" {
  name                = var.settings.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = local.tags

  dynamic "rule" {
 
  for_each =  try(var.settings.rule, null) == null ? [] : [1]
   content {
     name        = rule.value.rule_name
     access      = "Allow"       # The access type of the rule. The only possible value is Allow
     rule_type   = "Community"   # The rule type of the rule. The only possible value is Community.
     communities = rule.value.rule_communities
   }
  }
}

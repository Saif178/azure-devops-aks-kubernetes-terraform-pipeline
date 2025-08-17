resource "azurerm_kubernetes_cluster_node_pool" "windows101" {
  zones                 = [1, 3]
  auto_scaling_enabled  = true
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  max_count             = 3
  min_count             = 1
  mode                  = "User"
  name                  = "win101"
  orchestrator_version  = data.azurerm_kubernetes_service_versions.current.latest_version
  os_disk_size_gb       = 60
  os_type               = "Windows"
  vm_size               = "Standard_D2_v3"
  priority              = "Regular"
  vnet_subnet_id        = azurerm_subnet.aks-default.id 
  node_labels = {
    "nodepool-type" = "user"
    "environment"   = var.environment
    "nodepoolos"    = "windows"
    "app"           = "dotnet-apps"
  }
  tags = {
    "nodepool-type" = "user"
    "environment"   = var.environment
    "nodepoolos"    = "windows"
    "app"           = "dotnet-apps"
  }
}
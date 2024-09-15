# 建立一個 Google Cloud 專案資源。
resource "google_project" "create" {
  # 不要自動建立網路，預設值為 true。
  auto_create_network = false
  # 專案的標籤，預設為空字典。
  labels              = {}
  # 專案顯示名稱，使用變數 project_name 的值。
  name                = var.gcp_project_name
  # 專案 ID，使用變數 project_name 的值。
  project_id          = var.gcp_project_id
  # 組織 ID，註解掉表示不設定。
##org_id              = var.gcp_organization_id
  # 專案的計費帳戶，使用變數 billing_account 的值。
  billing_account     = var.gcp_billing_account_id
  # 設定資源操作的逾時時間，目前為空字典，表示使用預設值。
  timeouts {}
}

# 定義變數 "gcp_project_id"，預設值為 "sakana-20240915-2"。
# 這個變數通常用來指定 Google Cloud 專案的 ID。
variable "gcp_project_id" {
  default = "sakana-20240915-2" 
}

# 定義變數 "gcp_project_name"，預設值為 "sakana-20240915-2"。
# 這個變數通常用來指定 Google Cloud 專案的顯示名稱。
variable "gcp_project_name" {
  default = "sakana-20240915-2" 
}

# 定義變數 "gcp_billing_account_id"，預設值為 "YOUR-BILLING-ACCOUNT"。
# 這個變數通常用來指定 Google Cloud 專案的計費帳戶 ID。
variable "gcp_billing_account_id" {
  default = "YOUR-BILLING-ACCOUNT" 
}

# 以下是一個定義變數 "gcp_organization_id" 的區塊，但被註解掉了。
# 這個變數通常用來指定 Google Cloud 專案所屬的組織 ID。
# 如果需要設定組織 ID，可以移除註解符號並設定預設值。
#variable "gcp_organization_id" {
#  default = "" 
#}

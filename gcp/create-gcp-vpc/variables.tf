# 定義變數 "gcp_project_id"，預設值為 "sakana-20240915-2"。
# 這個變數通常用來指定 Google Cloud 專案的 ID。
variable "gcp_project_id" {
  default = "sakana-20240926"
}

# 定義變數 "gcp_project_name"，預設值為 "sakana-20240915-2"。
# 這個變數通常用來指定 Google Cloud 專案的顯示名稱。
variable "gcp_project_name" {
  default = "sakana-20240926"
}

# 定義變數 "ip_cidr_range"，預設值為 "10.12.115.0/24"。
# 這個變數通常用來指定子網路的 IP 地址範圍。
variable "ip_cidr_range" {
  default = "10.12.115.0/24"
}

# 定義變數 "subnet_name"，預設值為 "sakana-20240926-10-12-115"。
# 這個變數通常用來指定子網路的名稱。
variable "subnet_name" {
  default = "sakana-20240926-10-12-115"
}

# 定義變數 "subnet_region"，預設值為 "asia-east1"。
# 這個變數通常用來指定子網路所在的區域。
variable "subnet_region" {
  default = "asia-east1"
}

# 以下是一個定義變數 "gcp_organization_id" 的區塊，但被註解掉了。
# 這個變數通常用來指定 Google Cloud 專案所屬的組織 ID。
# 如果需要設定組織 ID，可以移除註解符號並設定預設值。
#variable "gcp_organization_id" {
#  default = "" 
#}

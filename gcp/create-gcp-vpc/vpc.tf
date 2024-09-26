# 這個資源區塊定義了一個 Google Compute Network，表示一個 VPC 網路。
resource "google_compute_network" "project-vpc" {
  # 是否自動創建子網路，這裡設定為 false，表示不自動創建。
  auto_create_subnetworks = false
  # 是否在創建 VPC 時刪除預設路由，這裡設定為 false，表示保留預設路由。
  delete_default_routes_on_create = false
  # 是否啟用 ULA 內部 IPv6 地址，這裡設定為 false，表示不啟用。
  enable_ula_internal_ipv6 = false
  # 最大傳輸單元（MTU），這裡設定為 0，表示使用預設值。
  mtu = 0
  # VPC 網路的名称，這裡使用變數 "gcp_project_name" 的值。
  name = var.gcp_project_name
  # VPC 網路所屬的 Google Cloud 專案 ID，這裡使用變數 "gcp_project_id" 的值。
  project = var.gcp_project_id
  # VPC 網路的路由模式，這裡設定為 "REGIONAL"，表示區域模式。
  routing_mode = "REGIONAL"
  # 超時設定，這裡使用預設值。
  timeouts {}
}

# 這個資源區塊定義了一個 Google Compute Subnetwork，表示一個子網路。
resource "google_compute_subnetwork" "subnet" {
  # 子網路的 IP 地址範圍，這裡使用變數 "ip_cidr_range" 的值。
  ip_cidr_range = var.ip_cidr_range
  # 子網路的名稱，這裡使用變數 "subnet_name" 的值。
  name = var.subnet_name
  # 是否允許從網際網路訪問私有 IP 地址，這裡設定為 false，表示不允許。
  private_ip_google_access = false
  # 是否允許從網際網路訪問私有 IPv6 地址，這裡設定為 "DISABLE_GOOGLE_ACCESS"，表示不允許。
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  # 子網路所屬的 Google Cloud 專案 ID，這裡使用變數 "gcp_project_id" 的值。
  project = var.gcp_project_id
  # 子網路的用途，這裡設定為 "PRIVATE"，表示私有子網路。
  purpose = "PRIVATE"
  # 子網路所在的區域，這裡使用變數 "subnet_region" 的值。
  region = var.subnet_region
  # 子網路的堆疊類型，這裡設定為 "IPV4_ONLY"，表示僅支持 IPv4。
  stack_type = "IPV4_ONLY"
  # 子網路所屬的 VPC 網路名稱，這裡使用資源 "google_compute_network.project-vpc" 的 "name" 屬性值。
  network = google_compute_network.project-vpc.name
  # 超時設定，這裡使用預設值。
  timeouts {}
}

# 配置 Terraform 使用 Google 提供者。
terraform {
  required_providers {
    # 定義 Google 提供者及其來源。
    google = {
      source = "hashicorp/google"
    }
  }
}

# 設定 Google 提供者。
provider "google" {
#  credentials = file("${credentials}") # 註解掉設定憑證的方式，可以透過環境變數或其他方式設定。
#  region      = "asia-east1"           # 註解掉設定預設區域，可以根據需要設定。
}

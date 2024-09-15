# edit by Max 2024/9/15

目前使用 ADCs (Application Default Credentials), 故不需要 Service Account JSON 檔案, 可以參考 https://sakananote2.blogspot.com/2024/01/gcp-authentication-with-terraform-adcs.html

建立方式

修改 variables.tf 內的 billing account id / project name / project id

初始化 terraform
> terraform  init

確認執行內容
> terraform plan

使用 terrafom 執行建立專案
> terraform  apply

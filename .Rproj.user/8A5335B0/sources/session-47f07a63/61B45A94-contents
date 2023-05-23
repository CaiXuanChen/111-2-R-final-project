# Final project----
## set up environment ----
source("R/helpers.R")

library(tidyverse)
library(readxl)
library(tidyr)
library(tidyselect)
install.packages("rlang")
install.packages("readxl")

# save progress----
saveRDS(final,file="final.Rds")

## progress saving object資料匯入 ----
final<-list()

### 各區----

final$各類別<- read.csv(
  "C:/Users/caisyuan/OneDrive/桌面/111-2-R-final-project/R/臺南市各區各類別之診所、醫院.csv")
final$各類別<- final$各類別[, -c(2,4)]

library(stringr)
library(tidyr)

library(stringr)
library(reshape2)

# 提取區域名稱----
final$各類別 <- str_extract(final$地址, "([^縣市區]+[縣市區])")

# 將資料轉為長資料格式----
final_long <- melt(final, id.vars = "區域", variable.name = "欄位名稱", value.name = "值")


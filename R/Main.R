# Final project----
## set up environment ----
Source("R/helpers.R")

# save progress----
saveRDS(final,file="final.Rds")

## progress saving object資料匯入 ----
final<-list()


library(tidyverse)
library(readxl)
library(tidyr)
library(tidyselect)

### 各區----

final$各類別<- read.csv(
  "C:/Users/caisyuan/OneDrive/桌面/111-2-R-final-project/R/臺南市各區各類別之診所、醫院.csv")
final$各類別<- final$各類別[, -c(2,4)]

### 藥局----

final$藥局<- read.csv(
  "C:/Users/caisyuan/OneDrive/桌面/111-2-R-final-project/R/臺南市健保特約藥局.csv")
final$藥局<- final$藥局[, -c(3)]
final$醫療院所<- read.csv(
  "C:/Users/caisyuan/OneDrive/桌面/111-2-R-final-project/R/臺南市醫療院所.csv")
final$醫療院所<- final$醫療院所[, -c(3)]

final$藥局 |> 
  dplyr::glimpse()





#-----------------------------------
# 1.  Install packages
#-----------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(RSelenium, tidyverse, foreign, rstudioapi,
               hrbrthemes, readr, rvest, xml2, janitor)

#-----------------------------------
# 2.  Folders
#-----------------------------------
# 2.1  Set Working Directory
if(Sys.info()["user"]=="") {
  setwd("")
}

#-----------------------------------
# 3.  Download all the data
#-----------------------------------

#-- Open Google chrome
#-- Remote driver: Opens google chrome
rD <- rsDriver(browser = 'chrome', port = 4242L, chromever = '77.0.3865.40')
remDr <- rD[["client"]]

#-- Navigate to the website of interest
remDr$navigate("https://www.bcn.gob.ni/estadisticas/anuario_estadistico/index.php")

#-- Datasets
#-- Principales indicadores macroeconómicos
webElement <- remDr$findElement("xpath","/html/body/div[3]/div/div[3]/table/tbody/tr[1]/td[1]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Sector real
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[1]/td[3]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Precios
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[1]/td[5]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Empleo y salarios
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[2]/td[1]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Sector monetario
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[2]/td[3]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Sector financiero
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[2]/td[5]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Sector público
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[3]/td[1]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Sector externo
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[3]/td[3]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

#-- Deuda pública 
webElement <- remDr$findElement("xpath", "/html/body/div[3]/div/div[3]/table/tbody/tr[3]/td[5]/ul/li/a")
webElement$clickElement()

Sys.sleep(3)

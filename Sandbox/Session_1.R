install.packages("tictoc") 
x <- 12
y <- 4
x/y


this_year <- "2020"
is.character(this_year)
is.numeric(this_year)
this_year == 2020


library(readr)
library(tibble)
library(here)
library(tictoc)


here("Data","PVD_2020_Property_Tax_Roll.csv") %>%
  read.csv() %>%
  head()


base_read <- here("Data", "PVD_2020_Property_Tax_Roll.csv") %>%
  read.csv()


base_read %>%
  str()


tic()
base_read <- here("Data", "PVD_2020_Property_Tax_Roll.csv") %>%
  read.csv()
toc()


tic()
tidy_read <- here("Data", "PVD_2020_Property_Tax_Roll.csv") %>%
  read_csv()
toc()


tidy_read %>%
  str()


tidy_read_mod <- here("Data", "PVD_2020_Property_Tax_Roll.csv") %>%
  read_csv(col_types = cols(ZIP_POSTAL = col_character(), plat = col_character()))


#Exercise 1
tidy_read_mod %>%
  str()


#Exercise 2
covid_usa <- read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv")


#Exercise 3
bank_branches <- here("Data", "BankBranchesData.txt") %>%
  read_csv()
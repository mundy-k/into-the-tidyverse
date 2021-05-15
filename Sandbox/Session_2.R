2 + 6
sum(2,6)
mean(2,6)
?mean

library(readr)
library(tibble)
library(here)
library(tictoc)
library(dplyr)

custom_mean <- function(this_vector) {
  sum(this_vector) / length(this_vector)
}
custom_mean(c(2,6))
my_vector <- c(2,6)
custom_mean(my_vector)
custom_mean(this_vector = c(2,6))
custom_mean(this_vector = my_vector)


covid <- here("Data", "time_series_covid19_confirmed_US.csv") %>%
  read_csv()


covid %>%
  slice(1:10)
covid %>%
  filter(Province_State == "California") %>%
  select(fips = FIPS, county = Admin2, `9/18/20`:`9/24/20`)
covid %>%
  filter(Province_State == "California") %>%
  select(fips = FIPS, county = Admin2, `9/18/20`:`9/24/20`)%>%
  filter("9/24/20" >= 1000)


covid %>%
  filter(Province_State == "California") %>%
  filter (Admin2 == "Yolo") %>%
  select(FIPS, Admin2, `9/18/20`:`9/24/20`) %>%
  rename(fips = FIPS, county = Admin2)


covid %>%
  filter(Province_State == "California") %>%
  filter(Admin2 == "Yolo") %>%
  select(state = Province_State, fips = FIPS, county = Admin2, latest_cases = `9/24/20`) %>%
  select(-state)


covid %>%
  filter(Province_State == "California") %>%
  slice(1:20) %>%
  select(fips = FIPS, county = Admin2, latest_cases = `9/24/20`) %>%
  mutate(latest_cases_log = log(latest_cases))


covid %>%
  filter(Province_State == "California") %>%
  slice(1:20) %>%
  select(fips = FIPS, county = Admin2, latest_cases = `9/24/20`) %>%
  mutate(latest_cases = log(latest_cases))


covid %>%
  filter(Province_State == "California") %>%
  slice(1:20) %>%
  select(fips = FIPS, county = Admin2, latest_cases = `9/24/20`) %>%
  mutate(fips = log(latest_cases))


covid %>%
  filter(Province_State == "California") %>%
  slice(1:5) %>%
  select(fips = FIPS, county = Admin2, latest_cases = `9/24/20`) %>%
  mutate(state = "California")



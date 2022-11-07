library(tidyverse)
library(magrittr)
library(readxl)

strawb <- read_xlsx("strawberries-2022oct30-a.xlsx", col_names = T)

cnames <- colnames(strawb)

strawb %<>% separate(col=`Data Item`,
                     into = c("Strawberries", "type", "items", "units"),
                     sep = ",",
                     fill = "right")
type_organic <- grep("organic", 
                     strawb$type, 
                     ignore.case = T)
Domain_organic <- grep("organic", 
                       strawb$Domain, 
                       ignore.case = T)
org_rows <- intersect(type_organic, Domain_organic)

# Q2 + Q3
strawb_type <- tibble(
  Year = strawb$Year,
  State = strawb$State,
  Type = strawb$type,
  CV = strawb$`CV (%)`,
  Sales = as.integer(strawb$Value))

strawb_ca_2016 <- strawb_type %>%
  filter(Year == 2016, State == "CALIFORNIA")
strawb_ca_2016 <- drop_na(strawb_ca_2016)
strawb_ca_2016$CV <- as.numeric(strawb_ca_2016$CV)
strawb_ca_2016 <- data.frame(strawb_ca_2016)
strawb_ca_2016

# Q4
unique(strawb$`Domain Category`)
chems <- length(unique(strawb$`Domain Category`))
chems-2

# Q5
strawb_state <- strawb %>%
  group_by(State, `Domain Category`) %>%
  summarise(`Count` = n_distinct(chems)) %>%
  filter(State == "CALIFORNIA" | State =="FLORIDA")

chem_count <- aggregate(strawb_state$Count, by=list(strawb_state$State), FUN=sum)
chem_count <- data.frame(chem_count)
chem_count
chem_diff <- chem_count$x[1]-chem_count$x[2]
chem_diff






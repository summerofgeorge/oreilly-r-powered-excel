# dplyr can be found in the tidyverse
library(tidyverse)

# Use Lahman datasets again
library(Lahman)

# Let's use teams
data("Teams")

# for ease of coding
teams <- Teams

head(teams)
names(teams)

#### mutate() ####
# Creates new columns based on exsiting columns

# calculate new columns

teams <- mutate(teams, Wpct = W / (W + L))

head(teams)

# use existing functions
teams <- mutate(teams, logR = log(R),
                logAB = log(AB),
                logH = log(H))


# you can change data types as well. 

is.character(teams$teamID)

teams <- mutate(teams, teamIDchar = as.character(teamID))

names(teams)
is.character(teams$teamIDchar)

#### select() ####
# Creates new columns based on exsiting columns


modern <- select(teams,yearID, teamID, W, L)
dim(modern)

winners <- select(teams, ends_with("ID"), ends_with("Win"))
dim(winners)

winners2 <- select(teams, ends_with("Win"))
dim(winners2)


#### rename() ####
# Renames selected columns

rename <- rename(teams, year = yearID, DivisionID = divID)
names(rename)

# Enclose in quotations if you want more than one word. 
rename <- rename(teams, year = yearID, "Division ID" = divID)
names(rename)

#### arrange() ####
# Reorders rows


# Arrange by team ID
teams <- arrange(teams, teamID)
head(teams)

# Sort by year descending
teams <- arrange(teams, desc(yearID))
head(teams)

# You can sort by multiple criteria
resort <- arrange(teams, teamID, desc(yearID))
head(resort)

resort2 <- arrange(teams, desc(yearID), lgID, teamID)
head(resort2)


#### filter() ####
# Reorders rows

modern <- filter(teams, yearID >= 2000)

dim(teams)
dim(modern)

wc_winners <- filter(teams, WSWin == "Y")
dim(wc_winners)


ohio <- filter(teams, teamID == "CLE" | teamID == "CIN")
dim(ohio)


ohio_modern <- filter(teams, teamID == "CLE" | teamID == "CIN",
                     yearID >= 2000)
dim(ohio_modern)


ohio_modern_wc <- filter(teams, teamID == "CLE" | teamID == "CIN",
                     yearID >= 2000, WSWin == "Y")
dim(ohio_modern_wc)

#### group_by() and summarise() ####
# Groups records by selected columns
# Aggregates values for each group

teams_ID <- group_by(teams, teamID)

summarise(teams_ID, mean = mean(W),
          min = min(W),
          max = max(W))


teams_year <- group_by(teams, yearID)

summarise(teams_year, mean = mean(W),
          sd = sd(W))




library(tidyverse)

library(Lahman)

# Players table is stored as Master
data("Master")
data("HallOfFame")

# Inner -- only records meeting each

lahman_inner <- inner_join(Master, HallOfFame)
dim(lahman_inner)

# Spreadsheet viewing environment
View(lahman_inner)

# What if we just want some records
inner_join(select(Master, nameFirst, nameLast), HallOfFame)

# Need to keep playerID in the running!
inner_join(select(Master, nameFirst, nameLast, playerID), HallOfFame)

# Compare to left join
lahman_left <- left_join(Master, HallOfFame)
dim(lahman_left)

# Compare to inner join
dim(lahman_inner)

# See the NULLs
View(lahman_left)

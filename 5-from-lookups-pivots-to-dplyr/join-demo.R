library(tidyverse)

library(Lahman)

# Players table is stored as Master
data("Master")
data("HallOfFame")

# Inner -- only records meeting each

lahman_inner <- inner_join(Master, HallOfFame)

dim(lahman_inner)

dim(Master)
dim(HallOfFame)

# Spreadsheet viewing environment
View(lahman_inner)

# What if we just want some fields
# this will bring an error -- 
inner_join(select(Master, nameFirst, nameLast), HallOfFame)

# Need to keep playerID in the running!
inner_join(select(Master, nameFirst, nameLast, playerID), HallOfFame)

# Ordering doesn't matter in inner join
dim(inner_join(HallOfFame, Master))

# Compare to left join
lahman_left <- left_join(Master, HallOfFame)
dim(lahman_left)

# Compare to inner join
dim(lahman_inner)

# See the NULLs
View(lahman_left)

# What about the other way?
lahman_left_other <- left_join(HallOfFame, Master)
dim(lahman_left_other)

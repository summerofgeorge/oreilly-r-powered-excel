library(tidyverse)

library(Lahman)

data("Managers")
data("AwardsManagers")

# Return the join of records found in both tables. Keep all fields.

inner_join(Managers, AwardsManagers)


# Return the join of records found in both tables. 
# Keep all fields except Managers$rank.
inner_join(select(Managers, -rank), HallOfFame)


# Return the join of records for all found in Managers.
left_join(Master, HallOfFame)

# How many more rows does this have than the results of 1?
nrow(left_join(Master, HallOfFame)) - nrow(inner_join(Managers, AwardsManagers))

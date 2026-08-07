#> delay : api/check
# main

# return schedule if {in -> in_ticks} is >0
scoreboard players set *x _delay 0
execute store result score *x _delay run data get storage delay:in check.in_ticks
execute if score *x _delay matches 1.. run return run function delay:_/impl/api/check/schedule with storage delay:in check

function delay:_/main/task/trigger

return run time query gametime
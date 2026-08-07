#> delay : api/check

execute store result score *x _delay run function delay:_/impl/api/check/main

data remove storage delay:in check

return run scoreboard players get *x _delay
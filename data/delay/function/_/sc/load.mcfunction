#> delay:_/sc/load
# @ LOAD

scoreboard objectives add _delay dummy



# DEBUG
scoreboard players reset *init _delay

execute unless score *init _delay matches 1 run function delay:_/sc/init
#> delay : cancel

data remove storage delay:out cancel

execute store result score *x _delay run function delay:_/impl/cancel/main with storage delay:in cancel

data remove storage delay:in cancel

return run scoreboard players get *x _delay
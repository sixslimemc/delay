#> delay : delay

data merge storage delay:in {delay:{targets:[{}]}}
data modify storage delay:in delay.targets[0].uuid set from entity @s UUID
return run function delay:targets/delay
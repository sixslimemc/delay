#> delay : delay

data merge storage delay:in {delay:{uuids:[{}]}}
data modify storage delay:in delay.uuids[0].uuid set from entity @s UUID
return run function delay:uuids/delay
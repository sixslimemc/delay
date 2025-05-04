#> later:_/impl/selector/delay/append_self
#--------------------
# ./main
#--------------------

data modify storage later:data tasks[-1].targets append value {}
data modify storage later:data tasks[-1].targets[-1].uuid set from entity @s UUID
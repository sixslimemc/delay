# IMPL > delay:selector/delay
# main

# just a wrapper for uuid/delay:
data merge storage delay:in {delay:{targets:[]}}
$execute as $(selector) run function delay:_/impl/selector/delay/append_self
return run function delay:targets/delay
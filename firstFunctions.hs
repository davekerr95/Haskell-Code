-- Takes in One input and outputs x doubled
doubleMe x = x * 2

-- Takes in Two inputs and outputs doubleMe(x) + doubleMe(y)
doubleUs x y = doubleMe x + doubleMe y

-- Takes in One input and if x < 100 output = doubleMe(x), else output = x
doubleSmallNumber x = if x > 100 then x else doubleMe x

-- STRICT doubleSmallNumber -> doubleSmallNumber if x < 100 ADD 1
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

'use strict'

QUnit.module \ES6

eq = strictEqual

test 'String#repeat' !->
  {repeat} = core.String
  ok typeof! repeat is \Function, 'Is function'
  eq repeat('qwe' 3), \qweqweqwe
  eq repeat('qwe' 2.5), \qweqwe
  throws (-> repeat 'qwe' -1), RangeError
  throws (-> repeat 'qwe' Infinity), RangeError
  if !(-> @)!
    throws (-> repeat null, 1), TypeError
    throws (-> repeat void, 1), TypeError
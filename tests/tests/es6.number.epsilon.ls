QUnit.module \ES6
eq = strictEqual
test 'Number.EPSILON' !->
  {EPSILON} = Number
  ok \EPSILON of Number, 'EPSILON in Number'
  eq EPSILON, 2^-52, 'Is 2^-52'
  ok 1 isnt 1 + EPSILON, '1 isnt 1 + EPSILON'
  eq 1, 1 + EPSILON / 2, '1 is 1 + EPSILON / 2'
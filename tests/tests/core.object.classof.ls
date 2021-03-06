QUnit.module \core-js
test 'Object.classof' !->
  {classof} = Object
  ok typeof! classof is \Function, 'Is function'
  ok classof(void) is \Undefined, 'classof undefined is `Undefined`'
  ok classof(null) is \Null, 'classof null is `Null`'
  ok classof(true) is \Boolean, 'classof bool is `Boolean`'
  ok classof('string') is \String, 'classof string is `String`'
  ok classof(7) is \Number, 'classof number is `Number`'
  ok classof(Symbol!) is \Symbol, 'classof symbol is `Symbol`'
  ok classof(new Boolean no) is \Boolean, 'classof new Boolean is `Boolean`'
  ok classof(new String '') is \String, 'classof new String is `String`'
  ok classof(new Number 7) is \Number, 'classof new Number is `Number`'
  ok classof({}) is \Object, 'classof {} is `Object`'
  ok classof([]) is \Array, 'classof array is `Array`'
  ok classof(->) is \Function, 'classof function is `Function`'
  ok classof(/./) is \RegExp, 'classof regexp is `Undefined`'
  ok classof(TypeError!) is \Error, 'classof new TypeError is `RegExp`'
  ok classof((->&)!) is \Arguments, 'classof arguments list is `Arguments`'
  ok classof(new Set) is \Set, 'classof undefined is `Map`'
  ok classof(new Map) is \Map, 'classof map is `Undefined`'
  ok classof(new WeakSet) is \WeakSet, 'classof weakset is `WeakSet`'
  ok classof(new WeakMap) is \WeakMap, 'classof weakmap is `WeakMap`'
  ok classof(new Promise ->) is \Promise, 'classof promise is `Promise`'
  ok classof(''[Symbol.iterator]!) is 'String Iterator', 'classof String Iterator is `String Iterator`'
  ok classof([]entries!) is 'Array Iterator', 'classof Array Iterator is `Array Iterator`'
  ok classof(new Set!entries!) is 'Set Iterator', 'classof Set Iterator is `Set Iterator`'
  ok classof(new Map!entries!) is 'Map Iterator', 'classof Map Iterator is `Map Iterator`'
  ok classof(Math) is \Math, 'classof Math is `Math`'
  if JSON?
    ok classof(JSON) is \JSON, 'classof JSON is `JSON`'
  class Class
    @::[Symbol.toStringTag] = \Class
  ok classof(new Class) is \Class, 'classof user class is [Symbol.toStringTag]'
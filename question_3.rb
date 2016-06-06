def add(x, y)
  x + y
end

def assert(x, y, res)
  p add(x, y) == res ? 'test pass!' : "test didn't pass: '#{x} + #{y}' is not expected #{res}"
rescue => e
  p e.is_a?(res) ? 'test pass!' : "test didn't pass: '#{x} + #{y}' is not expected #{res.to_s}"
end

def tests_for_add
  assert(1, 1, 2)
  assert(1, -1, 0)
  assert(1, nil, TypeError)
  assert(1.5, 1, 2.5)
  assert('a', 'b', 'ab')
  assert(1, 'a', TypeError)
  assert([1], [2], [1, 2])
  assert(1, [1], TypeError)
  assert({}, {}, NoMethodError)
  assert(Struct.new(:a), Struct.new(:b), NoMethodError)
end
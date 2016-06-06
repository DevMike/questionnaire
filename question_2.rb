class Foo
  def self.method_missing(method_name)
    p method_name.to_s
  end
end
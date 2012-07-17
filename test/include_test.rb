require 'test_helper'

class IncludeTest < MiniTest::Unit::TestCase
  def setup
    @klass = Class.new
    @klass.send(:include, Array.to_module)
    @klass.send(:include, MyClass.to_m)
  end

  def test_initialize
    assert @klass.new, Array.new
  end

  def test_my_class_method
    assert @klass.new.my_method, :my_method
  end
end
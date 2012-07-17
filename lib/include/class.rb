class Class
  def to_module
    result = self.clone
    o = RubyInternal::RObject.new(result.internal_ptr)
    o.flags &= ~ RubyInternal::FL_SINGLETON
    o.flags &= ~ RubyInternal::T_MASK
    o.flags |= RubyInternal::T_MODULE
    o.klass = Module.internal_ptr.to_i
    return result
  end
end

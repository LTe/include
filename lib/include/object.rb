class Object
  def internal_ptr(*args)
    pos = self.object_id * 2
    DL::CPtr.new(pos, *args)
  end
end
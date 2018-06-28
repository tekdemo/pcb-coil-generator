class Mil
  def initialize value
    @self = value
  end

  def to_mil
    @self
  end

  def to_in
    @self/1000.0
  end

  def to_mm
    @self*0.0254
  end

  def to_s
    @self.to_s
  end
end

class Numeric
  def mil
    Mil.new self
  end
end


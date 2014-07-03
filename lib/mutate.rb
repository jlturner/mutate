class Object
  def mutate
    yield self
  end

  def keep
    if yield self ; self ; else ; nil ; end
  end

  def toss
    if yield self ; nil ; else ; self ; end
  end

  def impart object
    yield object, self
  end

  def perform
    yield self
    self
  end
end

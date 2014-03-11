class Oven

  attr_reader :temp, :on, :full, :bake_time


  def initialize(options)
    @temp = options[:temp]
    @on = options[:on]
    @full = options[:full]
    @bake_time = options[:bake_time]
  end

  def turn_on
    @on = true
  end

  def turn_off
    @on = false
  end

  def bake
      @bake_time += 1
  end

  def full?
    @full
  end
end
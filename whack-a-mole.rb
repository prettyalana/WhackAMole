require 'gosu'

class WhackAMole < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = "Whack the Mole!"
    @image = Gosu::Image.new('assets/Mole.png')
    @x = 500
    @y = 500
    @width = 50
    @height = 43
    @velocity_x = 5
    @velocity_y = 5
  end

  def draw
    @image.draw(@x - width / 2, @y - @height / 2, 1)
  end

  def update
    @x += @velocity_x
    @y += @velocity_y
    @velocity_x *= -1 if @x + @width / 2 > 800 || @x - @width / 2 < 0
    @velocity_y *= -1 if @y + @height / 2 > 600 || @y - @height / 2 < 0
  end
end

window = WhackAMole.new
window.show

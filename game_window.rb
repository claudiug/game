require 'gosu'
class GameWindow < Gosu::Window

  def initialize(width = 500, height = 200, fullscreen = false)
    super
    self.caption = "hello #{Time.now}"
    @message = Gosu::Image.from_text(
        self, "
        Hello Claudiu time is: #{Time.now}",
        Gosu.default_font_name, 30)
  end

  def draw
    @message.draw(10, 10, 0)
  end
end

window = GameWindow.new
window.show

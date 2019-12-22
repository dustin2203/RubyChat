require 'tk'

class Window

  def initialize(title)
    @title = title
    @root = 0
  end

  def create
    @root = TkRoot.new { title @title }
    true
  end

  def create_label(root)
    TkLabel.new(root) do

    end
  end




end

root = TkRoot.new
TkLabel.new(root) do
  text 'Hello, World!'
  pack { padx 15 ; pady 15; side 'left' }
end
Tk.mainloop
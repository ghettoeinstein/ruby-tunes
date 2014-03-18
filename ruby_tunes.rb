require 'win32ole'
require 'tk'

@app = WIN32OLE.new('iTunes.Application')

 $currentTrackvar = TkVariable.new
 def pause
    
 @app = WIN32OLE.new('iTunes.Application')
    @app.Pause
    @app.BrowserWindow.MiniPlayer = true
  end
  
 def play
   @app = WIN32OLE.new('iTunes.Application')
  @app.Play
  @app.BrowserWindow.MiniPlayer = false
 end


root = TkRoot.new { title "Ruby Tunes" }
play_button = TkButton.new(root) do
    text "Play"
    borderwidth 5
    underline 0
    state "normal"
    cursor "sailboat"
    font TkFont.new( 'times 20 bold')
    foreground "red"
    activebackground "blue"
    relief "groove"
    command (proc  {play})
    pack("side"=> "right", "padx"=> "5", "pady"=>"5")
   end
   
   
#Pause the current playing track
 pause_button = TkButton.new(root) do
    text "Pause"
    borderwidth 5
    underline 0
    state "normal"
    cursor "umbrella"
    font TkFont.new( 'times 20 bold')
    foreground "red"
    activebackground "blue"
    relief "groove"
    command (proc  {pause})
    pack("side"=> "left", "padx"=> "5", "pady"=>"5")
   end
 Tk.mainloop


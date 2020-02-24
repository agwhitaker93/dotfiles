local obj = {}

function obj:init()
  hs.hotkey.bind({"cmd","ctrl","alt","shift"},"z", function()
      sound = hs.sound.getByFile("/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/finder/empty trash.aif")
      sound:play()
  end)
end

return obj

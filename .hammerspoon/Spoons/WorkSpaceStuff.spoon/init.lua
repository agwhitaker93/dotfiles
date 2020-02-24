--[[
This is config from aaaages ago to navigate virtual desktops with a gaming mouse.
I have no idea what the "help" key is on a mac, let alone on windows to actually set it
--]]
osDiffTime = 1
helpDownStart = 0

helpPressed = false
homeOrEndPressed = false

mCtrlLeft = hs.hotkey.new({},"home", function()
  if helpPressed then
    homeOrEndPressed = true
    hs.eventtap.keyStroke({"cmd,alt"},"left")
  else
    this:disable()
    hs.eventtap.keyStroke({},"home")
    this:enable()
  end
end,
function()
end)

mCtrlRight = hs.hotkey.new({},"end", function()
  if helpPressed then
    homeOrEndPressed = true
    hs.eventtap.keyStroke({"cmd,alt"},"right")
  else
    this:disable()
    hs.eventtap.keyStroke({},"end")
    this:enable()
  end
end,
function()
end)

hs.hotkey.bind({},"help",
function()
  helpPressed = true
  mCtrlLeft:enable()
  mCtrlRight:enable()
  helpDownStart = os.time()
  if homeKeyDown then
    hs.eventtap.keyStroke({"cmd, ctrl", "right"})
  elseif endKeyDown then
    hs.eventtap.keyStroke({"cmd, ctrl", "left"})
  end
end,
function()
  helpPressed = false
  helpDownDuration = os.time() - helpDownStart
  if not homeOrEndPressed and helpDownDuration < osDiffTime then
    hs.eventtap.keyStroke({"cmd, alt"},"up")
  end
  mCtrlLeft:disable()
  mCtrlRight:disable()
  homeOrEndPressed = false
end)

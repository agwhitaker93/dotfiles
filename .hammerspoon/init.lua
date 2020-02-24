hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hs.loadSpoon("RubbishCrinkler")

hs.loadSpoon("AppFocus")
spoon.AppFocus:start({"cmd", "ctrl"}, "E", "Emacs")
spoon.AppFocus:start({"cmd", "ctrl"}, "V", "nvim-qt", "Neovim")


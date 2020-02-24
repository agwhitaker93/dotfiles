local obj = {}

function exit_status_cb(exitCode, stdOut, stdErr)
    hs.console.printStyledtext("exitCode: "..exitCode)
    hs.console.printStyledtext("stdOut: "..stdOut)
    hs.console.printStyledtext("stdErr: "..stdErr)
end

local function handle_app(app)
    if app:isFrontmost() then
        app:hide()
    else
        if app:isHidden() then

            -- move window to cursor screen
            local appWindow = app:focusedWindow()
            local mouseScreen = hs.mouse.getCurrentScreen()
            appWindow:moveToScreen(mouseScreen, false, true, 0)

            -- resize window to screen size
            local appFrame = appWindow:frame()
            local mouseFrame = mouseScreen:frame()
            appFrame.x = mouseFrame.x
            appFrame.y = mouseFrame.y
            appFrame.w = mouseFrame.w
            appFrame.h = mouseFrame.h
            appWindow:setFrame(appFrame, 0)
        end

        app:activate()
    end
end

function obj:start(modifiers, key, appName, backupAppName)
    backupAppName = backupAppName or nil

    hs.hotkey.bind(modifiers, key, function()
        local app = hs.appfinder.appFromName(appName)

        if app == nil then
            app = hs.appfinder.appFromName(backupAppName)
        end

        if app ~= nil then
            handle_app(app)
        else
            hs.application.open(appName)
        end
    end)
end

function obj:start_term(modifiers, key, termCommand, appName, termEnv)
    hs.hotkey.bind(modifiers, key, function()
        local app = hs.appfinder.appFromName(appName)

        if app ~= nil then
            if app:isFrontmost() then
                app:hide()
            else
                if app:isHidden() then

                    -- move window to cursor screen
                    local appWindow = app:focusedWindow()
                    local mouseScreen = hs.mouse.getCurrentScreen()
                    appWindow:moveToScreen(mouseScreen, false, true)

                    -- resize window to screen size
                    local appFrame = appWindow:frame()
                    local mouseFrame = mouseScreen:frame()
                    appFrame.x = mouseFrame.x
                    appFrame.y = mouseFrame.y
                    appFrame.w = mouseFrame.w
                    appFrame.h = mouseFrame.h
                    appWindow:setFrame(appFrame)
                end

                app:activate()
            end
        else
            local task = hs.task.new(termCommand, exit_status_cb)
            local currEnv = task:environment()
            for k,v in pairs(currEnv) do
                if termEnv[k] == nil then
                    termEnv[k] = v
                end
            end
            task:setEnvironment(termEnv)
            task:start()
        end
    end)
end

return obj

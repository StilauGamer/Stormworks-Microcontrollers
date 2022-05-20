---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")


-- Variables
forceGps = false
zoom = 1
zoomSlider = 2

-- Doing stuff on screen
ticks = 0
function onTick()
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()

    -- Variables
    w = input.getNumber(1)
    h = input.getNumber(2)
    wUser = input.getNumber(3)
    hUser = input.getNumber(4)
    gpsX = input.getNumber(5)
    gpsY = input.getNumber(6)
    ticks = ticks + 1

    -- Buttons
    if ticks < 5 then
        buttons = {
            LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(w-13, 2, 10, 10, "!"),
            LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 1, 10, h-1, "!")
        }
    end

    if toggleButtonClick_toggle(buttons[1], 1) then
        forceGps = not forceGps
    end
    if toggleButtonClick_click(buttons[2], 2) then
        if IsPointInRectangle(wUser, hUser, 1, 1, 9, h-3) then
            zoomSlider = hUser
            zoom = hUser / h * 100
            output.setNumber(5, zoom)
        end
    end

    -- Force Map values to the GPS
    if forceGps then
        mapX = gpsX
        mapY = gpsY
    end
end

function IsPointInRectangle(userX, userY, rectX, rectY, rectW, rectH)
    return (userX > rectX) and (userY > rectY) and (userX < rectX+rectW) and (userY < rectY+rectH)
end

-- Drawing on screen
function onDraw()
    -- Variables
    h = screen.getHeight()
    w = screen.getWidth()

    -- Map
    screen.drawMap(mapX, mapY, zoom)

    -- outline and zoom
    screen.setColor(255, 255, 0)
    screen.drawRect(0, 0, w-1, h-1)
    screen.drawLine(10, 0, 10, h-1)
    screen.setColor(63, 63, 63)
    screen.drawRectF(1, 1, 9, h-2)

    -- Zoom
    screen.setColor(0, 0, 0)
    screen.drawLine(2, zoomSlider, 9, zoomSlider)
    -- Buttons
    toggleButtonUI(buttons[1], buttons[1].text, "000000", "FFFFFF", "FFFFFF", "000000")
end
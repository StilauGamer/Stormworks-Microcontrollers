---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")


-- Variables
forceGps = false
zoom = 0.2 
lastZoom = 0.2
zoomTimer = 0
targetZoom = 0
zoomSlider = 1
zoomDuration = 30
gpsTimer = 0
si = math.sin
co = math.cos
pi = math.pi

-- Buttons
buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(0, 2, 10, 10, "!"),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(0, 0, 10, 0, "!")
}

-- Doing stuff on screen
ticks = 0
startTicks = 0
function onTick()
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()

    -- Variables
    w = input.getNumber(1)
    h = input.getNumber(2)
    wUser = input.getNumber(3)
    hUser = input.getNumber(4)
    gpsX = input.getNumber(5)
    gpsY = input.getNumber(6)
    compass = input.getNumber(7)
    ticks = ticks + 1

    -- Assigning the map values to the GPS cordinates.
    if ticks == 5 then
        mapX = gpsX
        mapY = gpsY
    end

    -- Buttons
    buttons[1].x = w-13
    buttons[2].height = h-1

    -- Register the clicks
    if toggleButtonClick_toggle(buttons[1], 1) then
        gpsTimer = ticks
        forceGps = not forceGps
    end
    if toggleButtonClick_click(buttons[2], 2) then
        if IsPointInRectangle(wUser, hUser, 0, 0, 9, h-1) then
            zoomSlider = hUser
            lastZoom = zoom
            targetZoom = hUser / h * 20
            zoomTimer = ticks
        end
    end

    -- Force Map values to the GPS
    if forceGps then
        mapX = lerp(gpsX, mapX, math.min(1, (ticks - gpsTimer) / zoomDuration))
        mapY = lerp(gpsY, mapY, math.min(1, (ticks - gpsTimer) / zoomDuration))
    end

    -- Making the zoom with a animation
    zoom = lerp(targetZoom, lastZoom, math.min(1, (ticks - zoomTimer) / zoomDuration))
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
    screen.setColor(63, 63, 63, 165)
    screen.drawRectF(0, 0, 9, h)
    screen.setColor(63, 63, 63, 200)
    screen.drawLine(9, 0, 9, h)

    -- Boat Location
    screen.setColor(255, 0, 0)
    boatX, boatY = map.mapToScreen(mapX, mapY, zoom, w, h, gpsX, gpsY)
    boatY = h - boatY
    drawPtr(boatX, boatY, compass, 11, 6, h)

    -- Zoom
    screen.setColor(0, 0, 0)
    screen.drawLine(1, zoomSlider, 8, zoomSlider)
    -- Buttons
    toggleButtonUI(buttons[1], buttons[1].text, "000000", "FFFFFF", "FFFFFF", "000000")
end

function lerp(z, oz, t)
    return oz + (z - oz) * t
end

function drawPtr(x, y, z, r1, r2, h)
    -- Get angle in radians, also correct offset
    a = z * 2*math.pi

    -- Get angles for the points
    a1 = a + math.pi/2
    a2 = a - math.pi/6
    a3 = a - math.pi*5/6

    -- Get coords for the points
    p1 = {x,y}
    p2 = {x+math.cos(a1)*r1,y+math.sin(a1)*r1}
    p3 = {x+math.cos(a2)*r2,y+math.sin(a2)*r2}
    p4 = {x+math.cos(a3)*r2,y+math.sin(a3)*r2}

    -- Draw the triangles
    screen.setColor(255,0,0)
    screen.drawTriangleF(p1[1],h-p1[2],p2[1],h-p2[2],p4[1],h-p4[2])
    screen.setColor(255,0,0)
    screen.drawTriangleF(p1[1],h-p1[2],p2[1],h-p2[2],p3[1],h-p3[2])
end
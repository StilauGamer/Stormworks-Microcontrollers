
-- Author: StilauGamer
-- GitHub: https://github.com/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

--- Note: code wrapped in ---@section <Identifier> <number> <Name> ... ---@endsection <Name>
---  Is only included in the final output if <Identifier> is seen <number> of times or more
---  This means the code below will not be included in the final, minimized version
---  And you can do the same to wrap library code; so that it's there if you use it, and deleted if you don't!
---  No more manual cutting/pasting code out!

---@section __SIMULATORONLY__ 1 _MAIN_SIMSECTION_INIT


-- When running the simulator, the global variable __simulator is created
-- Make sure to do any configuration before the the start of your main file
---@param simulator Simulator
---@param config SimulatorConfig
---@param helpers SimulatorInputHelpers
__simulator.config:configureScreen(1, "3x3", true, false)

-- Properties
__simulator.config:setProperty("Text Color (Hex)", "0000FF")
__simulator.config:setProperty("Outline Color (Hex)", "FFFFFF")
__simulator.config:setProperty("Background Color (Hex)", "FFFFFF")
__simulator.config:setProperty("Default Button Color (Hex)", "FFFFFF")


-- Increasing Number
_ticks = 0

---@param simulator Simulator
function onLBSimulatorTick(simulator)
   _ticks = _ticks + 1
   simulator:setInputNumber(5,  _ticks // 30)
end



--- runs every tick, prior to onTick and onDraw
--- Usually not needed, can allow you to do some custom manipulation
--- Or set breakpoints based on simulator state
---@param simulator Simulator
function onLBSimulatorTick(simulator)end

--- For easier debugging, called when an output value is changed
function onLBSimulatorOutputBoolChanged(index, oldValue, newValue)end
function onLBSimulatorOutputNumberChanged(index, oldValue, newValue)end

---@endsection _MAIN_SIMSECTION_INIT



 -- LifeBoatAPI allows you to use lua's "require" keyword. see the /build/_simulator_config.lua file for how to configure the simulator
---@section LIFEBOATAPI_MC_REQUIREALL_BOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
--- "Require All" file to make life easier on the end-user
---@endsection
---@section LBCOPYBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@diagnostic disable: undefined-doc-name

---@section LifeBoatAPI 1 LIFEBOATAPICLASS
LifeBoatAPI = LifeBoatAPI or {}

---@section lb_copy
--- Copies data from (from) to (to)
--- underwrites values copied (leaves original if it exists)
--- Can be used to instantiate classes, or inherit from classes
--- @generic T
--- @param from T source to copy from
--- @param to any destination to copy into
--- @param overwrite boolean true if all keys should be overwritten
--- @overload fun(from:T):T
--- @return T true if the current instance, is a type that inherits from the given class
LifeBoatAPI.lb_copy = function(from,to,overwrite)
    to=to or {}
    for k,v in pairs(from) do
        to[k] = not overwrite and to[k] or v  --underwrites, so the original values are kept if they existed
    end
    return to
end;
---@endsection

---@section lb_doNothing
--- An empty function for any stubs, but also reducing the code needed for 
---   "if onHoverFunction ~= nil then onHoverFunction end -> (onHoverFunction or LBEmptyFunction)()"
LifeBoatAPI.lb_doNothing = function()end;
---@endsection

---@endsection LIFEBOATAPICLASS
---@section LBTABLEUTILSBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBTableUtils 1 LBTABLECLASS
---@class LBTableUtils
LifeBoatAPI.LBTableUtils = {

    ---@section lbtable_containsValue
    --- Returns whether this collection contains the given value or not
    ---@param tbl table
    ---@param value any value to check for
    ---@return boolean exists whether this value exists in the collection or not
    lbtable_containsValue = function(tbl, value)
        for _,v in pairs(tbl) do
            if(v == value) then return true end
        end
        return false
    end;
    ---@endsection

    ---@section lbtable_countKeys
    --- Counts the number of elements in the table
    --- Differs from length, which counts numberical keys; ending at first nil
    ---@param tbl table table to act on
    ---@return number
    lbtable_countKeys = function(tbl)
        local i = 0
        for _, v in pairs(tbl) do
            i = i + 1
        end
        return i
    end;
    ---@endsection

    ---@section lbtable_remove
    --- safely removes the specified index from the table, ensuring that if it's a numerical key - we keep the values contiguous
    --- just using this.lb_data[key] = nil, for all keys, would mean we end up with arrays like {a,b,c,nil,nil,f,g,h} which ipairs and #length will only read up to c
    ---@param tbl table table to act on
    ---@param key any index to remove, or key to delete
    lbtable_remove = function(tbl, key)
        if(type(key) == "number") then
            table.remove(tbl, key)
        else
            tbl[key] = nil
        end
    end;
    ---@endsection

    ---@section lbtable_addRange
    --- simple addRange, used far too commonly not to include
    --- @param tbl table table to act on
    --- @param from table list of values to append to lhs table
    lbtable_addRange = function(tbl, from)
        LifeBoatAPI.lb_copy(from, tbl)
    end;
    ---@endsection

    ---@section lbtable_iaddRange
    --- simple addRange, used far too commonly not to include
    --- @param tbl table table to act on
    --- @param from table list of values to append to lhs table
    lbtable_iaddRange = function(tbl, from)
        for i,v in ipairs(from) do
            table.insert(tbl, v)
        end
    end;
    ---@endsection

    ---@section lbtable_keys_and_values
    --- Flattens a key:value pair table into a list of values
    --- @generic K,V
    --- @param tbl table<K,V> table to act on
    --- @return K[],V[] transformed keys table, values table
    lbtable_keys_and_values = function(tbl, _keys, _values)
        _keys, _values = {}, {}
        for k,v in pairs(tbl) do
            table.insert(_keys, k)
            table.insert(_values, v)
        end
        return _keys, _values
    end;
    ---@endsection

    ---@section lbtable_ifillHoles
    --- Fills a holey array into an array starting at 1, contiguous upto #length
    --- Preserves non-numerical keys
    --- @generic T
    --- @param tbl T table to act on
    --- @return T transformed table
    lbtable_ifillHoles = function(tbl)
        local result = {}
        for k,v in pairs(tbl) do
            if(type(k) == "number") then
                table.insert(result, v)
            else
                result[k] = v
            end
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_islice
    --- Slices the given list, returning the sub-list tbl[startIndex ... endIndex]
    --- Indices can be negative to count from the end of the table, e.g. -1 is the last element, and -2 is the second last element
    --- @generic T
    --- @param tbl T table to act on
    --- @param startIndex number
    --- @param endIndex number
    --- @return T slice
    lbtable_islice = function(tbl, startIndex, endIndex)
        local result  = {}
        for i=(startIndex and startIndex < 0 and #tbl-startIndex+1) or startIndex or 1,
            (endIndex and endIndex < 0 and #tbl-endIndex+1) or endIndex or #tbl,
            1 do
            table.insert(result, tbl[i])
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_where
    --- Filters out values by the callable function
    --- @generic T
    --- @param tbl T table to act on
    --- @param callable fun(value:any, key:any):boolean
    --- @return T filtered table
    lbtable_where = function(tbl, callable)
        local result = {}
        for k,v in pairs(tbl) do
            result[k] = callable(v,k) and v or nil
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_iwhere
    --- Filters out values by the callable function
    --- @generic T
    --- @param tbl T table to act on
    --- @param callable fun(value:any, key:number):boolean
    --- @return T filtered table
    lbtable_iwhere = function(tbl, callable)
        local result = {}
        for k,v in ipairs(tbl) do
            table.insert(result, callable(v,k) and v or nil)
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_select
    --- Transforms values from one format to another
    --- Note, returned value from callable is VALUE, KEY
    ---    This allows for shorter functions where the key is unchanged; and re-use with lb_iselect
    --- Select and Where functionality can be combined by returning nil as the value
    --- If the key is returned as nil, the original key is used
    --- @generic T
    --- @param tbl T table to act on
    --- @param callable fun(value:any, key:any):any,any func(value, key) => value',key' - an altered key and value to go into the result
    --- @return T transformed table
    lbtable_select = function(tbl, callable)
        local result = {}
        for k,v in pairs(tbl) do
            local dv, dk = callable(v,k)
            result[dk or k] = dv
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_iselect
    --- Transforms values from one format to another
    --- Note, returned value from callable is VALUE
    --- Select and Where functionality can be combined by returning nil as the value
    --- @generic T
    --- @param tbl T table to act on
    --- @param callable fun(value:any, i:number):any func(value,index) => v' - an altered value to go into the result
    --- @return T transformed table
    lbtable_iselect = function(tbl, callable)
        local result = {}
        for k,v in ipairs(tbl) do
            table.insert(result, callable(v,k))
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_groupBy
    --- Groups values by a common key, selected by the callable, into a dictionary of lists
    --- @generic T,G
    --- @param tbl T table to act on
    --- @param callable fun(value:any, key:any):G func(k,v) => groupingValue - a value on which to group the results
    --- @return table<G,T> groups with lists of values, grouped by a commmon key
    lbtable_groupBy = function(tbl, callable)
        local result = {}
        for k,v in pairs(tbl) do
            local groupableValue = callable(v,k)
            result[groupableValue] = result[groupableValue] or {}
            result[groupableValue][k] = v
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_igroupBy
    --- Groups values by a common function, into a list of lists
    --- @generic T,G
    --- @param tbl T table to act on
    --- @param callable fun(v:any, k:number):any func(k,v) => groupingValue - a value on which to group the results
    --- @return table<G,T> table with lists of values, grouped by a commmon key
    lbtable_igroupBy = function(tbl, callable)
        local result = {}
        for k,v in ipairs(tbl) do
            local groupableValue = callable(v, k)
            result[groupableValue] = result[groupableValue] or {}
            table.insert(result[groupableValue], v)
        end
        return result
    end;
    ---@endsection

    ---@section lbtable_iorderBy
    --- Orders the table using the given comparison into a new table
    --- Assumes numerical keys, otherwise it does nothing useful
    --- Does not change existing table, returns a new table that is ordered
    --- @generic T
    --- @param tbl T table to act on
    --- @param comparison fun(a:any,b:any):boolean function returning strictly true, if a is before b
    --- @return T ordered table
    lbtable_iorderBy = function(tbl, comparison)
        local result = LifeBoatAPI.lb_copy(tbl, {}, true)
        table.sort(result, comparison)
        return result
    end;
    ---@endsection

    ---@section lbtable_recurse
    ---Recursively runs through every value in a table
    ---Defends against circular references; so safe to use even with self-linking tables
    --- @overload fun(callable:function)
    --- @overload fun(callable:function, maxDepth:number)
    --- @param tbl table self instance
    --- @param callable fun(k:any,v:any,tbl:table,path:string[]) function to call per value found, callable(key, value, parentTable, pathToThisElement)
    --- @param maxDepth number max depth to recurse into, 0 or 1 are equal; neither go into any tables. -1 infinite recurse
    --- @param depth number
    --- @param path string[]
    --- @param seen table<any,boolean>
    lbtable_recurse = function(tbl, callable, maxDepth, depth, path, seen)
        path = path or {}
        depth = depth or 1
        seen = seen or {[tbl] = 1} -- track tables we've seen, avoid recursing into them
        for k,v in pairs(tbl) do
            -- track the current path
            local newPath = LifeBoatAPI.lb_copy(path)
            table.insert(newPath, k)

            -- function to be called on every value
            callable(k, v, tbl, newPath)

            -- recurse into any other tables
            if(type(v) == "table" and not seen[v]) then
                seen[v] = 1
                if(not maxDepth or depth < maxDepth) then
                    LifeBoatAPI.LBTable.lbtable_recurse(v, callable, maxDepth, depth+1, newPath, seen)
                end
            end
        end
    end;
    ---@endsection
}
---@endsection LBTABLECLASS
---@section LBMATHSBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBMaths 1 LBMATHSCLASS
---@class LBMaths
LifeBoatAPI.LBMaths = {
    ---@section lbmaths_2pi
    lbmaths_2pi = math.pi * 2;
    ---@endsection

    ---@section lbmaths_degsToRads
    lbmaths_degsToRads = math.pi / 180;
    ---@endsection

    ---@section lbmaths_turnsToRads
    ---alias for 2pi
    lbmaths_turnsToRads = math.pi * 2;
    ---@endsection

    ---@section lbmaths_radsToDegrees
    lbmaths_radsToDegrees = 180 / math.pi;
    ---@endsection

    ---@section lbmaths_radsToTurns
    lbmaths_radsToTurns = 1 / math.pi * 2;
    ---@endsection

    ---@section lbmaths_ticksToSeconds
    lbmaths_ticksToSeconds = 1 / 60;
    ---@endsection

    ---@section lbmaths_secondsToTicks
    lbmaths_secondsToTicks = 60;
    ---@endsection

    ---@section lbmaths_angularSubtract
    --- Finds the difference between two angles, wrapped across the boundary
    --- Defaults to [0 -> 2pi], but range can be specified
    ---@overload fun(a:number, b:number):number
    ---@param a number
    ---@param b number
    ---@param minRange number (optional) minimum range value or 0
    ---@param maxRange number (optional) maximum range value or 2pi
    ---@return number difference
    lbmaths_angularSubtract = function(a, b, minRange, maxRange, _rangeDiff, _half)
        minRange = minRange or 0
        maxRange = maxRange or math.pi * 2
        _rangeDiff = maxRange - minRange
        _half = _rangeDiff / 2
        return ((a - b + _half) % _rangeDiff - _half)
    end;
    ---@endsection

    ---@section lbmaths_compassToAzimuth
    ---Converts a compass value into the range [0 North => 2pi radians, clockwise]
    ---@param compass number compass value from the sensor
    lbmaths_compassToAzimuth = function(compass)
        return -compass % 1 * math.pi * 2
    end;
    ---@endsection

    ---@section lbmaths_tiltSensorToElevation
    ---Converts a tilt sensor value into the range [-pi/2 radians vertically down => 0 horizontal => +pi/2 radians vertically up ]
    ---@param tiltSensor number tilt value from the tilt sensor
    ---@return number elevation tilt as an angle in radians
    lbmaths_tiltSensorToElevation = function (tiltSensor)
        return tiltSensor * math.pi * 2
    end;
    ---@endsection

    ---@section lbmaths_isPointInRectangle
    ---Tests whether a point is in the given rectangle or not
    ---@param x number x position to test
    ---@param y number y position to test
    ---@param rectX number topLeft corner of the rectangle
    ---@param rectY number topLeft corner of the rectangle
    ---@param rectWidth number width of the rectangle
    ---@param rectHeight number height of the rectangle
    ---@return boolean isInRectangle true if the point is within the given rectangle
    lbmaths_isPointInRectangle = function(x, y, rectX, rectY, rectWidth, rectHeight)
        return x > rectX and x < rectX+rectWidth and y > rectY and y < rectY+rectHeight; 
    end;
    ---@endsection

    ---@section lbmaths_isPointInRectangle
    ---@param startValue number number to lerp from
    ---@param endValue number number to lerp to
    ---@param t number lerp parameter, between 0->1
    lbmaths_lerp = function(startValue, endValue, t)
        return (1-t) * startValue + t * endValue
    end;
    ---@endsection

    ---@section lbmaths_updateAverage
    ---Updated an existing average
    ---See LBRollingAverage for a "last x values" average
    ---Can be useful when you do not know the number of values you are averaging
    ---Example: myAverage, numValuesAveraged = LBMaths.lbmaths_updateAverage(123, myAverage, numValuesAveraged)
    ---@param currentAverage number last calculated average value
    ---@param newValue number value to add into the average
    ---@param numberOfValues number number of times this average has been run up till now. First run should be 0
    ---@return number,number newAverage newAverage, numberOfValues updated average and next numberOfValues to pass in 
    lbmaths_updateAverage = function (newValue, currentAverage, numberOfValues)
        currentAverage = currentAverage or 0
        numberOfValues = numberOfValues or 0
        return (currentAverage * numberOfValues + newValue) / (numberOfValues + 1), numberOfValues + 1
    end;
    ---@endsection
}
---@endsection LBMATHSCLASS
---@section LBVECBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBVec 1 LBVECCLASS
---@class LBVec
---@field x number for viewspace coordinates: (0 => leftmost, 1=>rightmost) x position to convert
---@field y number for viewspace coordinates: (0 => topmost, 1=> bottommost) y position to convert
---@field z number only used in 3D calculations
LifeBoatAPI.LBVec = {
    ---@param cls LBVec
    ---@param x number x component
    ---@param y number y component
    ---@param z number z component; conventially represents the altitude
    ---@overload fun(cls:LBVec, x:number, y:number):LBVec creates a vector2 (z-component is 0)
    ---@overload fun(cls:LBVec):LBVec creates a new zero-initialized vector3
    ---@return LBVec
    new = function(cls,x,y,z)
        return LifeBoatAPI.lb_copy(cls, {x=x or 0,y=y or 0,z=z or 0})
    end;

    ---@section newFromAzimuthElevation
    --- from: https://www.mathworks.com/help/phased/ug/spherical-coordinates.html
    --- x=Rcos(el)cos(az)
    --- y=Rcos(el)sin(az)
    --- z=Rsin(el)
    ---@param azimuth number azimuth angle, 0 north -> 2pi north
    ---@param elevation number elevation +/- pi/2 radians from horizon
    ---@param distance number
    ---@return LBVec
    newFromAzimuthElevation = function(cls, azimuth, elevation, distance)
        return cls:new(
            distance * math.cos(elevation) * math.sin(azimuth),
            distance * math.cos(elevation) * math.cos(azimuth),
            distance * math.sin(elevation))
    end;
    ---@endsection

    ---@section lbvec_add
    ---Adds the two vectors together
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return LBVec result
    lbvec_add = function(this,rhs)
        return this:new(this.x+rhs.x,this.y+rhs.y,this.z+rhs.z)
    end;
    ---@endsection

    ---@section lbvec_sub
    ---Subtracts the given vector from this one
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return LBVec result
    lbvec_sub = function (this,rhs)
        return this:new(this.x-rhs.x, this.y-rhs.y, this.z-rhs.z)
    end;
    ---@endsection

    ---@section lbvec_lerp
    ---Lerp (linear interpolation) between the this vector and the given vector
    ---@param this LBVec
    ---@param rhs LBVec
    ---@param t number 0->1 expected
    ---@return LBVec result
    lbvec_lerp = function (this,rhs, t)
        oneMinusT = 1 - t
        return this:new(oneMinusT*this.x + t*rhs.x,
                        oneMinusT*this.y + t*rhs.y,
                        oneMinusT*this.z + t*rhs.z)
    end;
    ---@endsection

    ---@section lbvec_multiply
    ---Multiplies the components of each vector together
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return LBVec result
    lbvec_multiply = function (this,rhs)
        return this:new(this.x*rhs.x, this.y*rhs.y, this.z*rhs.z)
    end;
    ---@endsection

    ---@section lbvec_scale
    ---Scales each component of this vector by the given quantity
    ---If you take a normalized LBVec3 as a direction, and scale it by a distance; you'll have a position
    ---@param this LBVec
    ---@param scalar number factor to scale by
    ---@return LBVec result
    lbvec_scale = function (this,scalar)
        return this:new(this.x*scalar, this.y*scalar, this.z*scalar)
    end;
    ---@endsection

    ---@section lbvec_sum
    ---Sums the individual components of this vector
    ---@param this LBVec
    ---@return number sum of the component parts
    lbvec_sum = function (this)
        return this.x + this.y + this.z
    end;
    ---@endsection

    ---@section lbvec_dot
    ---Calculates the Dot Product of the vectors
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return number
    lbvec_dot = function (this,rhs)
        return this:lbvec_multiply(rhs):lbvec_sum()
    end;
    ---@endsection

    ---@section lbvec_length
    ---Gets the length (magnitude) of this vector
    ---i.e. gets the distance from this point; to the origin
    ---@param this LBVec
    ---@return number length
    lbvec_length = function (this)
        return math.sqrt(this.x*this.x + this.y*this.y + this.z*this.z)
    end;
    ---@endsection

    ---@section lbvec_distance
    ---Gets the distance between two points represented as Vecs
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return number distance
    lbvec_distance = function(this,rhs)
        return this:lbvec_sub(rhs):lbvec_length()
    end;
    ---@endsection

    ---@section lbvec_normalize
    ---Normalizes the vector so the magnitude is 1
    ---Ideal for directions; as they can then be multipled by a scalar distance to get a position
    ---@param this LBVec
    ---@return LBVec result
    lbvec_normalize = function(this)
        return this:lbvec_scale(1/this:lbvec_length())
    end;
    ---@endsection

    ---@section lbvec_cross
    --- Cross product of two 3d vectors
    --- Direction determined by left-hand-rule; thumb is result, middle finger is "lhs", index finger is "rhs"
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return LBVec
    lbvec_cross = function(this, rhs)
        return this:new(this.y*rhs.z - this.z*rhs.y,
                        this.z*rhs.x - this.x*rhs.z,
                        this.x*rhs.y - this.y*rhs.x)
    end;
    ---@endsection

    ---@section lbvec_reflect
    --- Reflects this vector about the given normal
    --- Normal is expected to be in the same direction as this vector, and will return the reflection circularly about that vector
    ---@param this LBVec
    ---@param normal LBVec
    ---@return LBVec
    lbvec_reflect = function(this, normal)
        -- r=d−2(d⋅n)n where r is the reflection, d is the vector, v is the normal to reflect over
        -- normally expects rays to be like light, coming into the mirror and bouncing off. We negate the parts to make this work in our favour
        normal = normal:lbvec_normalize() -- ensure the vectors are the right direction
        this = this:lbvec_scale(-1)
        return this:lbvec_sub(normal:lbvec_scale(2 * this:lbvec_dot(normal)))
    end;
    ---@endsection

    ---@section lbvec_anglebetween
    ---Calculates the shortest angle between two vectors
    ---Note, angle is NOT signed
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return number
    lbvec_anglebetween = function(this, rhs)
        return math.acos(this:lbvec_dot(rhs) / (this:lbvec_length() * rhs:lbvec_length()))
    end;
    ---@endsection

    ---@section lbvec_azimuthElevation
    ---Converts the vector into spatial coordinates as an azimuth, elevation, distance triplet
    ---Formula from mathworks: https://www.mathworks.com/help/phased/ug/spherical-coordinates.html
    ---R=sqrt(x2+y2+z2)
    ---az=tan−1(y/x)
    ---el=tan−1(z/sqrt(x2+y2))
    ---@param this LBVec
    ---@return number,number,number components azimuth (North is 0), elevation (Horizon is 0), distance
    lbvec_azimuthElevation= function(this)
        normalized = this:lbvec_normalize()
        return  math.atan(normalized.x, normalized.y),
                math.atan(normalized.z, math.sqrt(normalized.x*normalized.x + normalized.y*normalized.y)),
                this:lbvec_length()
    end;
    ---@endsection

    ---@section lbvec_rotate2D
    ---Rotates the clockwise around the origin
    ---@param this LBVec
    ---@param radians number radians to rotate this vector by, clockwise about the origin
    ---@return LBVec rotated vector rotated about the origin by the given radians
    lbvec_rotate2D = function (this, radians)
        return this:new(this.x * math.cos(radians) - this.y * math.sin(radians),
                        this.x * math.sin(radians) + this.y * math.cos(radians),
                        this.z)
    end;
    ---@endsection

    ---@section lbvec_rotateAround2D
    ---Rotates clockwise around the given point, by the given number of radians
    ---@param this LBVec
    ---@param radians number radians to rotate, clockwise around
    ---@param point LBVec point to rotate around
    ---@return LBVec rotated
    lbvec_rotateAround2D = function(this, radians, point)
        return this:lbvec_sub(point):lbvec_rotate2D(radians):lbvec_add(point)
    end;
    ---@endsection

    ---@section lbvec_cross2D
    --- Cross product of two 2D vectors
    --- Returned result is the magnitude of a vector on the "z" plane (which doesn't exist for these vectors)
    --- As such, returns a scalar; even though this should technically be a vector3
    --- Direction determined by left-hand-rule; thumb is result, middle finger is "this", index finger is "rhs"
    ---@param this LBVec
    ---@param rhs LBVec
    ---@return number 2D cross product, as a scalar (Note cross product is poorly defined for Vec2 - but has some uses)
    lbvec_cross2D = function(this, rhs)
        return this.x*rhs.y - this.y*rhs.x
    end;
    ---@endsection

    ---@section lbvec_angle2D
    --- Calculates the angle between this vector and the vertical (0,1)
    --- If this is a position vector; the line is between this vector (x,y) to the origin (0,0)
    ---@param this LBVec
    ---@return number radians the positive clockwise angle between this vector and the vertical (0,1)
    lbvec_angle2D = function(this)
        local angle = math.atan(this.x, this.y) -- intentionally using atan the "wrong" way around so that (0,1) is 0*; and +degrees is clockwise, which is easier for most people to conceptualize
        return angle >= 0 and angle or math.pi * 2 + angle
    end;
    ---@endsection

    ---@section lbvec_angleAround2D
    ---Gets the clockwise angle from vertical (0,1), of this point around the given point
    ---@param this LBVec
    ---@return number radians
    lbvec_angleAround2D = function(this, point)
        return this:lbvec_sub(point):lbvec_angle2D()
    end;
    ---@endsection
}
---@endsection LBVECCLASS
---@section LBROLLINGAVERAGEBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBRollingAverage 1 LBROLLINGAVERAGECLASS
---A rolling average across a given number of values
---Useful for filtering noisey values
---@class LBRollingAverage
---@field maxValues number number of values this rolling average holds
---@field values number[] list of values to be averaged
---@field average number current average of the values that have been added
---@field count number number of values currently being averaged
---@field sum number total of the currently tracked values
LifeBoatAPI.LBRollingAverage = {

    ---@param this LBRollingAverage
    ---@param maxValues number number of values this rolling average holds
    ---@return LBRollingAverage
    new = function (this, maxValues)
        return LifeBoatAPI.lb_copy(this,
        {
            values = {},
            maxValues = maxValues or math.maxinteger,
            index = 1
        })
    end;

    ---@section lbrollingaverage_addValue 
    ---Add a value to the rolling average
    ---@param this LBRollingAverage
    ---@param value number value to add into the rolling average
    ---@return number average the current rolling average (also accessible via .average)
    lbrollingaverage_addValue = function (this, value)
        this.values[(this.index % this.maxValues) + 1] = value
        this.index = this.index + 1
        this.count = math.min(this.index, this.maxValues)
        this.sum = 0
        for _,v in ipairs(this.values) do
            this.sum = this.sum + v
        end
        this.average = this.sum / this.count
        return this.average
    end;
    ---@endsection
}
---@endsection LBROLLINGAVERAGECLASS
---@section LBANIMATIONBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBAnimation 1 LBANIMATIONCLASS
---Table format for each of the animation steps
---@class LBAnimationStep
---@field length number length of the step in ticks
---@field callback fun(t:number, ticks:number) callback to run

---An animation that runs per tick, for handling simple state based things such as simple UI animations, landing gear stages, etc.
---@class LBAnimation
---@field steps LBAnimationStep[]
---@field index number index of the current playing animation step
---@field currentStep LBAnimationStep currently playing animation step
---@field lastStep LBAnimationStep last animation step to have played
LifeBoatAPI.LBAnimation = {

    ---@param this LBAnimation
    ---@param startPlayingStraightAway boolean (optional) if True, will begin the animation immediately. Otherwise only starts when playFromStart is called
    ---@param steps LBAnimationStep[] (optional) list of steps to initialize with, otherwise use lbanimation_addStep
    ---@return LBAnimation
    new = function (this, startPlayingStraightAway, steps)
        return LifeBoatAPI.lb_copy(this, {
            steps = steps or {},
            index = startPlayingStraightAway and 1 or 0
        })
    end;

    ---@section lbanimation_playFromStart
    ---Begin playing this animation from the start (restarts if currently playing)
    ---@param this LBAnimation
    lbanimation_playFromStart = function (this)
        this.lastStep = nil
        this.index = 1
    end;
    ---@endsection

    ---@section lbanimation_stop
    ---Stop playing the current animation#
    ---Once called, can only be restarted using playFromStart
    ---@param this LBAnimation
    lbanimation_stop = function (this)
        this.index = 0
    end;
    ---@endsection

    ---@section lbanimation_onTick
    ---Call during the onTick function for this animation to play
    ---@param this LBAnimation
    lbanimation_onTick = function (this)
        this.lastStep = this.currentStep
        this.currentStep = this.steps[this.index]
        if this.currentStep then
            this.currentStep.ticks = this.lastStep == this.currentStep and this.currentStep.ticks + 1 or 0 -- reset ticks to 0 if we've changed step
            this.currentStep.callback(this.currentStep.ticks / this.currentStep.length, this.currentStep.ticks)
            this.index = this.index + (this.currentStep.ticks > this.currentStep.length) and 1 or 0
        end
    end;
    ---@endsection

    ---@section lbanimation_addStep
    ---Add a step to this animation
    ---@param this LBAnimation
    ---@param length number number of ticks this will play for
    ---@param callback fun(t:number, ticks:number) animation function that takes a parameter t between 0->1, and a parameter ticks for the raw tick count
    lbanimation_addStep = function (this, length, callback)
        this.steps[#this.steps + 1] = {
            length = length,
            callback = callback
        }
    end;
    ---@endsection
}
---@endsection LBANIMATIONCLASS
---@section LBSTATEMACHINEBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBStateMachine 1 LBSTATEMACHINECLASS
---Basic state machine
---Each state is a function that returns the name of the state to transition into, or nil to stay in the current state
---Can make life easier for handling basic mechanics like landing gear, or radar that goes between sweep and track modes, etc.
---Can also be using in onDraw to handle e.g. different menus/screens in a fairly straight forward way
---@class LBStateMachine
---@field states table
---@field currentState string name of the current state to run
---@field ticks number number of ticks that have been spent in the current state
LifeBoatAPI.LBStateMachine = {
    ---@param this LBStateMachine
    ---@param defaultStateCallback fun(ticks:number, statemachine:LBStateMachine):string default state function
    ---@return LBStateMachine
    new = function (this, defaultStateCallback)
        return LifeBoatAPI.lb_copy(this, {
            states = {
                [0] = defaultStateCallback
            },
            ticks = 0,
            currentState = 0
        })
    end;

    ---@section lbstatemachine_onTick
    ---Call during the onTick function for this state machine to function
    ---@param this LBStateMachine
    lbstatemachine_onTick = function (this)
        this._currentStateFunc = this.states[this.currentState]
        if this._currentStateFunc then
            this._nextState = this._currentStateFunc(this.ticks, this) or this.currentState -- nil preserves the current state
            this.ticks = this._nextState == this.currentState and this.ticks + 1 or 0 -- reset ticks when the stateName changes
        else
            this.currentState = 0
        end
    end;
    ---@endsection

    ---@section lbstatemachine_setState
    ---Recommended to just do myStatemachine.states["MyStateName"] = function() ... end,
    ---But let this act as active code documentation
    ---@param this LBStateMachine
    ---@param stateName string name of the state
    ---@param callback fun(ticks:number, statemachine:LBStateMachine):string state callback that will be run while in the given state. Returns the name of the next state to move into or nil
    lbstatemachine_addState = function (this, stateName, callback)
        this.states[stateName] = callback
    end;
    ---@endsection
}
---@endsection LBSTATEMACHINECLASS
---@section LBTOUCHSCREENBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@class LBTouchScreen
---@field screenWidth number
---@field screenHeight number
---@field touchX number
---@field touchY number
---@field wasPressed boolean if the screen was being touched last tick
---@field isPressed boolean if the screen is being touched this frame
---@section LBTouchScreen 1 LBTOUCHSCREENCLASS
LifeBoatAPI.LBTouchScreen = {

    ---@section lbtouchscreen_onTick
    --- If using the button functionality, it is expected that you call this at the start of onTick
    --- Handles the touchscreen state for whether things are pressed or not
    ---@param this LBTouchScreen
    ---@param compositeOffset number default composite for touches is 1,2,3,4; offset if composite has been re-routed
    lbtouchscreen_onTick = function(this, compositeOffset)
        compositeOffset = compositeOffset or 0
        this.screenWidth    = input.getNumber(compositeOffset + 1)
        this.screenHeight   = input.getNumber(compositeOffset + 2)
        this.touchX         = input.getNumber(compositeOffset + 3)
        this.touchY         = input.getNumber(compositeOffset + 4)
        this.wasPressed     = this.isPressed or false
        this.isPressed      = input.getBool(compositeOffset + 1)
    end;
    ---@endsection

    ---@section lbtouchscreen_newButton 1 LBTOUCHSCREEN_NEWBASICBUTTON
    --- Create a new button that works with the LBTouchScreen
    --- Note, you must call LBTouchScreen.lbtouchscreen_ontick() at the start of onTick to make these buttons work
    ---@param this LBTouchScreen
    ---@param x         number topleft x position of the button
    ---@param y         number topleft y position of the button
    ---@param width     number width of the button
    ---@param height    number height of the button
    ---@param text      string text to display in the button
    ---@return LBTouchScreenButton button button object to check for touches
    lbtouchscreen_newButton = function (this, x, y, width, height, text)
        ---@class LBTouchScreenButton
        ---@field touchScreenRef LBTouchScreen reference to the touchscreen, needed for tracking click state
        ---@field x number topLeft x position of the button
        ---@field y number topLeft y position of the button
        ---@field width number width of the button rect
        ---@field height number height of the button rect
        local button = {
            touchScreenRef = this,
            x = x,
            y = y,
            width = width,
            height = height,
            text = text,

            ---@section lbbutton_isClicked
            --- Checks if this button was clicked; triggers ONLY on the frame it's being clicked
            ---@param this LBTouchScreenButton
            lbbutton_isClicked = function(this)
                return this.touchScreenRef.isPressed
                        and not this.touchScreenRef.wasPressed 
                        and LifeBoatAPI.LBMaths.lbmaths_isPointInRectangle(this.touchScreenRef.touchX, this.touchScreenRef.touchY, this.x, this.y, this.width, this.height)
            end;
            ---@endsection

            ---@section lbbutton_isHeld
            --- Checks if this button is being pressed (i.e. HELD down), returns true on every frame it is being held
            ---@param this LBTouchScreenButton
            lbbutton_isHeld = function(this)
                return this.touchScreenRef.isPressed
                        and LifeBoatAPI.LBMaths.lbmaths_isPointInRectangle(this.touchScreenRef.touchX, this.touchScreenRef.touchY, this.x, this.y, this.width, this.height)
            end;
            ---@endsection

            ---@section lbbutton_isReleased
            --- Checks for the user lifting the mouse button, like a "on mouse up" event. Note; this is actually how most buttons work on your computer.
            ---@param this LBTouchScreenButton
            lbbutton_isReleased = function(this)
                return not this.touchScreenRef.isPressed
                        and this.touchScreenRef.wasPressed 
                        and LifeBoatAPI.LBMaths.lbmaths_isPointInRectangle(this.touchScreenRef.touchX, this.touchScreenRef.touchY, this.x, this.y, this.width, this.height)
            end;
            ---@endsection

            ---@section lbbutton_draw
            --- Simple drawing function, can make life easier while prototyping things
            ---@param this LBTouchScreenButton
            lbbutton_draw = function(this)
                screen.drawRect(this.x, this.y, this.width, this.height)
                screen.drawTextBox(this.x+1, this.y+1, this.width-1, this.height-1, this.text, 0, 0)
            end;
            ---@endsection

            ---@section lbbutton_drawRect
            ---@deprecated
            --- DEPRECATED please use lbbutton_draw instead, and set text value in :new()
            --- This function will be removed in a future version, please update your code.
            ---@param this LBTouchScreenButton
            lbbutton_drawRect = function(this, text)
                screen.drawRect(this.x, this.y, this.width, this.height)
                screen.drawTextBox(this.x+1, this.y+1, this.width-1, this.height-1, this.text or text, 0, 0)
            end;
            ---@endsection
        }
        return button
    end;
    ---@endsection LBTOUCHSCREEN_NEWBASICBUTTON

    ---@section lbtouchscreen_newStyledButton 1 LBTOUCHSCREEN_NEWSTYLEDBUTTON
    --- PLEASE BE AWARE, FANCY STYLED BUTTONS HAVE A RELATIVELY HIGH CHARACTER COST
    --- Create a new button that works with the LBTouchScreen
    --- Note, you must call LBTouchScreen.lbtouchscreen_ontick() at the start of onTick to make these buttons work
    ---@param this LBTouchScreen
    ---@param x number topleft x position of the button
    ---@param y number topleft y position of the button
    ---@param width number width of the button
    ---@param height number height of the button
    ---@param borderColor LBColorRGBA color for the border
    ---@param fillColor LBColorRGBA color for the fill, when not clicked
    ---@param fillPushColor LBColorRGBA color when pushed
    ---@param textColor LBColorRGBA color for the text
    ---@param textPushColor LBColorRGBA color for the text when clicked
    ---@return LBTouchScreenButtonStyled button button object to check for touches
    lbtouchscreen_newStyledButton = function (this, x, y, width, height,
                                                        text,
                                                        textColor,
                                                        fillColor,
                                                        borderColor,
                                                        fillPushColor,
                                                        textPushColor)
        ---@class LBTouchScreenButtonStyled
        ---@field touchScreenRef LBTouchScreen reference to the touchscreen, needed for tracking click state
        ---@field x number topLeft x position of the button
        ---@field y number topLeft y position of the button
        ---@field width number width of the button rect
        ---@field height number height of the button rect
        ---@field text string text to display in the button
        ---@field borderColor LBColorRGBA height of the button rect
        ---@field fillColor LBColorRGBA height of the button rect
        ---@field fillPushColor LBColorRGBA height of the button rect
        ---@field textColor LBColorRGBA height of the button rect
        ---@field textPushColor LBColorRGBA height of the button rect
        local button = {
            touchScreenRef = this,
            x = x,
            y = y,
            width = width,
            height = height,
            text = text,
            borderColor     = borderColor or textColor,
            fillColor       = fillColor,
            fillPushColor   = fillPushColor or fillColor,
            textColor       = textColor,
            textPushColor   = textPushColor or textColor,

            ---@section lbstyledbutton_isClicked
            --- Checks if this button was clicked; triggers ONLY on the frame it's being clicked
            ---@param this LBTouchScreenButtonStyled
            lbstyledbutton_isClicked = function(this)
                return this.touchScreenRef.isPressed
                        and not this.touchScreenRef.wasPressed 
                        and LifeBoatAPI.LBMaths.lbmaths_isPointInRectangle(this.touchScreenRef.touchX, this.touchScreenRef.touchY, this.x, this.y, this.width, this.height)
            end;
            ---@endsection

            ---@section lbstyledbutton_isHeld
            --- Checks if this button is being pressed (i.e. HELD down), returns true on every frame it is being held
            ---@param this LBTouchScreenButtonStyled
            lbstyledbutton_isHeld = function(this)
                return this.touchScreenRef.isPressed
                        and LifeBoatAPI.LBMaths.lbmaths_isPointInRectangle(this.touchScreenRef.touchX, this.touchScreenRef.touchY, this.x, this.y, this.width, this.height)
            end;
            ---@endsection

            ---@section lbstyledbutton_isReleased
            --- Checks for the user lifting the mouse button, like a "on mouse up" event. Note; this is actually how most buttons work on your computer.
            ---@param this LBTouchScreenButtonStyled
            lbstyledbutton_isReleased = function(this)
                return not this.touchScreenRef.isPressed
                        and this.touchScreenRef.wasPressed 
                        and LifeBoatAPI.LBMaths.lbmaths_isPointInRectangle(this.touchScreenRef.touchX, this.touchScreenRef.touchY, this.x, this.y, this.width, this.height)
            end;
            ---@endsection

            ---@section lbstyledbutton_draw
            --- Simple drawing function, can make life easier while prototyping things
            ---@param this LBTouchScreenButtonStyled
            lbstyledbutton_draw = function(this)
                (this:lbstyledbutton_isHeld() and this.fillPushColor or this.fillColor):lbcolorrgba_setColor()
                screen.drawRectF(this.x, this.y, this.width, this.height);

                (this:lbstyledbutton_isHeld() and this.textPushColor or this.textColor):lbcolorrgba_setColor()
                screen.drawTextBox(this.x+2, this.y+1, this.width-1, this.height-1, this.text, 0, 0)

                this.borderColor:lbcolorrgba_setColor()
                screen.drawRect(this.x, this.y, this.width, this.height)
            end;
            ---@endsection
        }
        return button
    end;
    ---@endsection LBTOUCHSCREEN_NEWSTYLEDBUTTON
}
---@endsection LBTOUCHSCREENCLASS
---@section LBMATHSBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBColorSpace 1 LBCOLORSPACECLASS
---@class LBColorSpace
LifeBoatAPI.LBColorSpace = {
    ---@section lbcolorspace_setColorGammaCorrected
    --- Sets the screen colour, correcting for the game's gamma factor
    --- Allows for colours that are closer to the expected HTML values
    ---@param r number red 0->255
    ---@param g number green 0->255
    ---@param b number blue 0->255
    ---@param a number alpha 0->255
    ---@param constantCorrection number (default 0.8) constant factor, as K in the equation (K*color) ^ gamma
    ---@param gamma number (default 2.6) gamma factor, in the equation (K*color) ^ gamma
    --- see explanation of Stormworks gamma here: https://steamcommunity.com/sharedfiles/filedetails/?id=2273112890
    lbcolorspace_setColorGammaCorrected = function (r,g,b,a, gamma, constantCorrection)
        constantCorrection = constantCorrection or 0.85
        gamma = gamma or 2.4

        screen.setColor(
             255*(constantCorrection*r/255)^gamma
            ,255*(constantCorrection*g/255)^gamma
            ,255*(constantCorrection*b/255)^gamma
            ,a or 255)
    end;
    ---@endsection
}
---@endsection LBCOLORSPACECLASS
---@section LBMATHSBOILERPLATE
-- Author: Nameous Changey
-- GitHub: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension
-- Workshop: https://steamcommunity.com/id/Bilkokuya/myworkshopfiles/?appid=573090
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
---@endsection

---@section LBColorRGBA 1 LBCOLORRGBACLASS
---@class LBColorRGBA
---@field r number red   0->255
---@field g number green 0->255
---@field b number blue  0->255
---@field a number alpha 255->0 (0 is transparent)
LifeBoatAPI.LBColorRGBA = {
    ---@section lbcolorrgba_newRGBA
    --- Creates a new LBColorRGBA from simple RGBA values
    ---@param this LBColorRGBA
    ---@param r number red 0->255
    ---@param g number green 0->255
    ---@param b number blue 0->255
    ---@param a number alpha 0->255
    lbcolorrgba_newRGBA = function (this, r,g,b,a)
        return LifeBoatAPI.lb_copy(this, {r=r, g=g, b=b, a=a or 255})
    end;
    ---@endsection

    ---@section lbcolorrgba_newGammaCorrected
    --- Creates a new LBColorRGBA, correcting for the game's gamma factor
    --- Allows for colours that are closer to the expected HTML values
    ---@param this LBColorRGBA
    ---@param r number red 0->255
    ---@param g number green 0->255
    ---@param b number blue 0->255
    ---@param a number alpha 0->255
    ---@param constantCorrection number (default 0.8) constant factor, as K in the equation (K*color) ^ gamma
    ---@param gamma number (default 2.6) gamma factor, in the equation (K*color) ^ gamma
    --- see explanation of Stormworks gamma here: https://steamcommunity.com/sharedfiles/filedetails/?id=2273112890
    lbcolorrgba_newGammaCorrected = function (this, r,g,b,a, gamma, constantCorrection)
        constantCorrection = constantCorrection or 0.85
        gamma = gamma or 2.4

        return LifeBoatAPI.lb_copy(this,
                                    {r=255*(constantCorrection*r/255)^gamma,
                                     g=255*(constantCorrection*g/255)^gamma,
                                     b=255*(constantCorrection*b/255)^gamma,
                                     a=a or 255})
    end;
    ---@endsection

    ---@section lbcolorrgba_setColor
    --- Set the screen color with the current values of this LBColorRGBA
    ---@param this LBColorRGBA
    lbcolorrgba_setColor = function (this)
        screen.setColor(this.r, this.g, this.b, this.a)
    end;
    ---@endsection
}
---@endsection LBCOLORRGBACLASS

 -- Type 'LifeBoatAPI.' and use intellisense to checkout the new LifeBoatAPI library functions; such as the LBVec vector maths library
-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey
__simulator.config:configureScreen(1, "9x5", true, false)

drf=screen.drawRectF
pgt=property.getText

FONT = "00019209B400AAAA793CA54A555690015244449415500BA0004903800009254956D4592EC54EC51C53A4F31C5354E52455545594104110490A201C7008A04504FFFE57DAD75C7246D6DCF34EF3487256B7DAE92E64D4975A924EBEDAF6DAF6DED74856B2D75A711CE924B6D4B6A4B6FAB55AB524E54ED24C911264965400000E"
FONT_D={}
FONT_S=0
for n in FONT:gmatch("....")do FONT_D[FONT_S+1]=tonumber(n,16)FONT_S=FONT_S+1 end
function dst(x,y,t,s,r,m)s=s or 1
r=r or 1
if r>2 then t=t:reverse()end
t=t:upper()for c in t:gmatch(".")do
ci=c:byte()-31 if 0<ci and ci<=FONT_S then
for i=1,15 do
if r>2 then p=2^i else p=2^(16-i)end
if FONT_D[ci]&p==p then
xx,yy=((i-1)%3)*s,((i-1)//3)*s
if r%2==1 then drf(x+xx,y+yy,s,s)else drf(x+5-yy,y+xx,s,s)end
end
end
if FONT_D[ci]&1==1 and not m then
i=2*s
else
i=4*s
end
if r%2==1 then x=x+i else y=y+i end
end
end
end

function onDraw()
    dst(10, 10, "Hello, World!", 5)
end
 -- For the resizable API

startButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 1, 29, 8)
lightButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 11, 29, 8)
clutchButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 21, 29, 8)

function onTick()
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()

  -- Starter
  if startButton:lbbutton_isHeld() then
    output.setBool(1, true)
    startOn = true
  else
    output.setBool(1, false)
    startOn = false
  end

  -- Pumos
  if lightButton:lbbutton_isClicked() then
    pumpsOn = not pumpsOn
  end
  if pumpsOn then
    output.setBool(2, true)
    pumpsOn = true
  else
    output.setBool(2, false)
    pumpsOn = false
  end

  -- Clutch
  if clutchButton:lbbutton_isClicked() then
      clutchOn = not clutchOn
  end
  if clutchOn then
      output.setBool(3, true)
      clutchOn = true
  else
    output.setBool(3, false)
    clutchOn = false
  end

end

function onDraw()
  screen.setColor(240, 240, 240) -- Setting the default color

  -- Text
  dst(6, 3, "Start")    -- Start Text
  dst(6, 13, "Pumps")   -- Fluid Pump Text
  dst(4, 23, "Clutch")  -- Clutch Text

  -- Starter
  if startOn then
    screen.drawRectF(1, 1, 29, 8)   -- Draw Rectangle Filled
    screen.setColor(0, 0, 0)        -- Setting the color of the text
    dst(6, 3, "Start")              -- Changing the text
    screen.setColor(240, 240, 240)  -- Setting the color of the text
  else
    screen.drawRect(1, 1, 29, 8)    -- Draw rectangle Not Filled
  end

  -- Fluid Pumps
  if pumpsOn then
    screen.drawRectF(1, 11, 29, 8)  -- Draw Rectangle Filled
    screen.setColor(0, 0, 0)        -- Setting the color of the text
    dst(6, 13, "Pumps")             -- Changing the text
    screen.setColor(240, 240, 240)  -- Setting the color of the text
  else
    screen.drawRect(1, 11, 29, 8)   -- Draw rectangle Not Filled
  end

  -- Clutch
  if clutchOn then
    screen.drawRectF(1, 21, 29, 8)  -- Draw Rectangle Filled
    screen.setColor(0, 0, 0)        -- Setting the color of the text
    dst(4, 23, "Clutch")            -- Changing the text
    screen.setColor(240, 240, 240)  -- Setting the color of the text
  else
    screen.drawRect(1, 21, 29, 8)   -- Draw Rectangle Not Filled
  end

  boxes()

end

function boxes()
    screen.drawRect(1, 1, 29, 8)     -- Top box

    screen.drawRect(1, 11, 29, 8)    -- Middle box

    screen.drawRect(1, 21, 29, 8)    -- Bottom left
end
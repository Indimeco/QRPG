--Config
lift = 40 -- [Y] Pos of QRolling Dice
ttl = 100 -- Time to Live - Amount of 'time' that the system will wait before starting slowing down the dice


interruptFlag = false -- flag to control interruptable section
iCounter = ttl -- sets inverse counter to amount specified by config
rollLock = 0 -- rollingCheck Lock, handles rollingCheck coroutine
dPrevious = {0,0,0,0,0,0} -- Previous Set of Dice rolled: setDice()
currentDice = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil} --[[ Array of Objects containing all the dice currently spawned: destroyDice() setDice() rollingCheck() setDrag() reRoll() ]]--
initiativeDice = {} -- Array of Objects containing all iniative dice if spawned: destroyInitiativeDice() initiativeCall()
posGrid={-- Table containing all positions for QRolling. Cheats I know.
    {{0,lift,0}},{{-18,lift,0},{18,lift,0}},{{-15.67878,lift,-9.13887},{-0.20838,lift,17.70067},{15.17177,lift,-9.16619}},{{-0.27689,lift,-20.62091},{20.24785,lift,-0.27013},{-0.20467,lift,20.18483},{-20.5339,lift,-0.27782}},{{11.8484,lift,-16.6986},{-12.21591,lift,-16.70528},{-19.63337,lift,6.05653},{-0.27338,lift,20.11673},{19.24771,lift,6.17477}},{{-0.37955,lift,-20.61667},{17.56261,lift,-10.3749},{17.64423,lift,9.95801},{-0.27296,lift,20.24756},{-17.96814,lift,10.01956},{-17.78879,lift,-10.38765}},{{8.77773,lift,-18.39166},{-8.84787,lift,-18.66869},{-20.11749,lift,-4.86390},{-16.27980,lift,12.44114},{-0.2638,lift,20.03792},{15.61196,lift,12.55677},{19.78199,lift,-4.5354}},{{14.25397,lift,-14.71861},{-0.31518,lift,-20.55265},{-14.41074,lift,-14.72374},{-20.65871,lift,-0.35772},{-14.50865,lift,14.32336},{-0.21673,lift,20.13566},{14.14026,lift,14.19021},{20.23036,lift,-0.17272}},{{8,lift,-21.51677},{19.97625,lift,-11.54691},{22.74963,lift,3.76074},{14.81664,lift,17.37248},{0.13497,lift,22.77172},{-14.51947,lift,17.41367},{-22.36603,lift,3.94422},{-19.67291,lift,-11.43067},{-7.62902,lift,-21.48296}},{{0.06596,lift,-25.47547},{15.20148,lift,-20.61911},{24.21102,lift,-7.96546},{24.31835,lift,7.63307},{15.06679,lift,20.40102},{0.22486,lift,25.27697},{-14.65681,lift,20.301054},{-24.09642,lift,7.90372},{-24.14909,lift,-7.99817},{-14.80229,lift,-20.63317}}}
presetGrid={ -- Default presets
    {0,0,0,0,0,10},
    {0,0,0,0,10,0},
    {0,0,0,10,0,0},
    {0,0,10,0,0,0},
    {0,10,0,0,0,0},
    {10,0,0,0,0,0},
}

function onload()
    self.setVar('editPresets', 0)
    self.setVar('rolling', false)

    config = Global.getVar('config')
    char = Global.getVar('char')
    tool = Global.getVar('tool')

    presetButton = getObjectFromGUID('3e3b93')
    saveRollButton = getObjectFromGUID('75b9f2')
    initiativeButtonGUIDs = {'985288','e82794','dc0278','c670af','28f736','b4f394'} -- From red, counter clockwise to Purple
    initiativeRolledIndicatorGUIDs = {'f9caf3','1dad3f','e544c6','a75f3e','c1de54','d58363'}
    orderedPlayerColors = {'Red','Orange','Yellow','Green','Blue','Purple'}
    initiativeButtons = {}
    initiativeBonusCounters = {}
    initiativeRolledIndicators = {}
    for i=1,6 do
        initiativeButtons[i] = getObjectFromGUID(initiativeButtonGUIDs[i])
        initiativeRolledIndicators[orderedPlayerColors[i]] = getObjectFromGUID(initiativeRolledIndicatorGUIDs[i])
        initiativeButtons[i].setVar('player', orderedPlayerColors[i])
    end

    -- Creates Buttons
    presetButton.setTable('pos',{0,-0.2,3})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),650,650,400,'1','pClick1',self})
    presetButton.setTable('pos',{0,-0.2,5})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),650,650,400,'2','pClick2',self})
    presetButton.setTable('pos',{0,-0.2,7})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),650,650,400,'3','pClick3',self})
    presetButton.setTable('pos',{0,-0.2,9})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),650,650,400,'4','pClick4',self})
    presetButton.setTable('pos',{0,-0.2,11})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),650,650,400,'5','pClick5',self})
    presetButton.setTable('pos',{0,-0.2,13})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),650,650,400,'6','pClick6',self})
    presetButton.setTable('pos',{0,-0.2,0})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),0,0,300,'Presets:','null',nil})
    presetButton.setTable('pos',{0,-0.2,16})
    presetButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{presetButton.getGUID(),1400,650,200,'Clear Dice','clearDice',self})
    saveRollButton.setTable('pos',{0,-2,0})
    saveRollButton.setTable('rot',{0,90,-180})
    Global.call('addButton',{saveRollButton.getGUID(),1400,650,400,'Save','toggleEditPreset',self})
    saveRollButton.setTable('pos',{0,-2,15})
    saveRollButton.setTable('rot',{0,90,-180})
    saveRollButton.setVar('arg','spawnCt')
    Global.call('addButton',{saveRollButton.getGUID(),1400,650,400,'Roll','normalRollCo',self})
end

--[[ Must be called from coroutine - Waits var:frames amount of frames ]]--
function wait(frames)
     while frames > 0 do
        coroutine.yield(0)
        frames = frames - 1
    end
end

--[[
    ******************
     QRolling Functions
    ******************
]]--

--[[ Lua Coroutine that checks when the dice needs to be slowed down and releases when dice Stops ]]--
function rollingCheck()
    rollLock = rollLock + 1 -- sets Lock to avoid multiple routines
    if rollLock > 1 then
        print('Multiple threads detected. var:'..rollLock)
        print('If found please report reproduction steps!')
        rollLock = rollLock - 1
        return 1
    elseif rollLock < 1 then
        print('Error: Abnormal thread closing var:'..rollLock)
        print('If found please report reproduction steps!')
        return 1
    else
        while self.getVar('rolling') do
            if iCounter > 0 then
                iCounter = iCounter -1
                coroutine.yield(0)
            else -- Entering here means TTL has expired
                startLuaCoroutine(self, 'announceDice')
                rollLock = rollLock - 1 -- releases lock
                return 1
            end
       end
       -- This space can be used for trigger after changing var:rolling to false
    end
    return 1
end

--[[ Called from button, begins setDice routine ]]--
function normalRollCo(obj,player)
    startLuaCoroutine(self, 'normalRoll')
    self.setVar('rollingColor', player)
end

--[[ Always called from routine, iterates through spawned dice and rolls them ]]--
function reRoll()
    wait(5)
    --print('rollLock value: '..rollLock)
    ctLock = false
    iCounter = ttl
    self.setVar('rolling',true)
    for i=1,#currentDice do
        if currentDice[i] ~= nil then
            currentDice[i]['angular_drag'] = 0
            currentDice[i].roll()
        end
    end
    if rollLock == 0 then startLuaCoroutine(self, 'rollingCheck') end
end

--[[ releases rollingCheck thread and removes dice from the table ]]--
function clearDice()
    self.setVar('rolling',false)
    destroyDice()
    rollLock = 0 -- release Lock
end

--[[ Iterates through spawned dice and destroys them ]]--
function destroyDice()
    dPrevious = {0,0,0,0,0,0}
    for i=1,#currentDice do
        if currentDice[i] ~= nil then
            currentDice[i].destruct()
        end
    end
end

--[[ Spawns dice from table format: {d4,d6,d8,d10,d12,d20} ]]--
function spawnDice(spawnTable)
    local total = spawnTable[1] + spawnTable[2] + spawnTable[3] + spawnTable[4] + spawnTable[5] + spawnTable[6]
    for i=1,total do
        local params = {}
        if spawnTable[1] > 0 then params.type = 'Die_4' spawnTable[1] = spawnTable[1]-1
            elseif spawnTable[2] > 0 then params.type = 'Die_6_rounded' spawnTable[2] = spawnTable[2]-1
            elseif spawnTable[3] > 0 then params.type = 'Die_8'  spawnTable[3] = spawnTable[3]-1
            elseif spawnTable[4] > 0 then params.type = 'Die_10' spawnTable[4] = spawnTable[4]-1
            elseif spawnTable[5] > 0 then params.type = 'Die_12' spawnTable[5] = spawnTable[5]-1
            elseif spawnTable[6] > 0 then params.type = 'Die_20' spawnTable[6] = spawnTable[6]-1
        end
        params.position = posGrid[total][i]
        if arg ~= nil then
            params.rotation = arg[i]
        else params.rotation = {math.random(0,359),math.random(0,359),math.random(0,359)} end
        currentDice[i] = spawnObject(params)
        currentDice[i]['use_gravity'] = false
        --currentDice[i].setColorTint({0.57,0,0})
        currentDice[i]['mass'] = 0
        currentDice[i]['angular_drag'] = 0
        currentDice[i].setScale({10,10,10})
        currentDice[i]['interactable'] = false
    end
end

--[[ Returns true if argument table is valid for Rolling ]]--
function valid(dCurrent)
    local total = 0
    for i=1,6 do
        if dCurrent[i] < 0 then
            printToAll(string.char(12304)..'DA'..string.char(12305)..'Warning! Negative values found. Will be considered as 0.', {1,0,0})
            dCurrent[i] = 0
        end
        total = total + dCurrent[i]
    end
    if total > 10 then
        printToAll(string.char(12304)..'DA'..string.char(12305)..'Error! Only available up to 10 Dice', {1,0,0})
        return false
    elseif total < 1 then
        printToAll(string.char(12304)..'DA'..string.char(12305)..'Error! Atleast one dice must be selected', {1,0,0})
        return false
    else
        return true
    end
end

--[[ Routine for checking if new dice need to be spawned or roll again ]]--
function normalRoll(presetFlag)
    if presetFlag then
        local num = self.getVar('num')
        if num == 0 then
            dCurrent = self.getTable('customRoll')
        else
            dCurrent = {presetGrid[num][1],presetGrid[num][2],presetGrid[num][3],presetGrid[num][4],presetGrid[num][5],presetGrid[num][6]}
        end
    else
        dCurrent = { -- use counters
            getObjectFromGUID('580374').Counter.getValue(),
            getObjectFromGUID('f6fa34').Counter.getValue(),
            getObjectFromGUID('f336b5').Counter.getValue(),
            getObjectFromGUID('070dd1').Counter.getValue(),
            getObjectFromGUID('c3fdfd').Counter.getValue(),
            getObjectFromGUID('926a00').Counter.getValue()
        }
    end
    if currentDice[1] ~= nil then -- Checks if there are dice on the table
        interrupt() -- Interrupt animations
        --wait(1)
        if isEqualTable(dPrevious,dCurrent) then -- If there are, compares with previous roll
            reRoll()
            return 1
        else destroyDice() end -- If they are different destroy
    end
    if valid(dCurrent) then
        dPrevious = {dCurrent[1],dCurrent[2],dCurrent[3],dCurrent[4],dCurrent[5],dCurrent[6]} -- Sets current dice as previous
        spawnDice(dCurrent)
        reRoll()
    end
    return 1
end

-- TODO: Implement destroynroll
--[[ Destroys then rolls, used when someone picks up the Dice ]]--
function destroynroll(obj)
    print(obj)
end

--[[ Interruptable wait - will skip yields if interruptFlag is true]]--
function iwait(frames)
     while frames > 0 and not interruptFlag do
        coroutine.yield(0)
        frames = frames - 1
    end
end

--[[ Made as a function so it can be called directly from buttons ]]--
function interrupt()
    interruptFlag = true
end

--[[ Animates Dice stopping, makes facevalues point up, announces result and animates exit ]]--
function announceDice() -- Only called when TTL expires
    interruptFlag = false
    --[[
        HACK: Interrupt Animation Workaround
        This is a workaround to avoid newly spawned dice to 'complete' animations from previous rolls
        Is there a better Idea to skip sections of coroutines from other functions?
    ]]--
    --[[ BEGIN INTERRUMPTABLE SECTION ]]--
    while not interruptFlag do
        setDrag(1)
        iwait(60)
        setDrag(3)
        iwait(60)
        local sum = 0
        local total = 0
        local posTable = {}
        local rotTable = {}
        for i=1,#currentDice do
            if currentDice[i] ~= nil then
                total = total+1
                posTable[i] = currentDice[i].getPosition()
                sum = sum + currentDice[i].getValue()
                currentDice[i].setValue(currentDice[i].getValue())
                --currentDice[i]
                currentDice[i].setPositionSmooth({posTable[i]['x'],posTable[i]['y']+0.5,posTable[i]['z']})
            end
            --setDice(currentDice[i].getRotation())
        end
        if total == 0 then return 1 end
        iwait(30)
        copy(currentDice)
        destroyDice()
        local params = {}
        params.position = posGrid[total][1]
        currentDice = paste(params)
        for i=1,#currentDice do
            if currentDice[i] ~= nil then
                currentDice[i].setPosition(posGrid[total][i])
            end
        end
        --setDice(rotTable)
        if not interruptFlag then printToAll(string.char(12304)..'DA'..string.char(12305)..''..(self.getVar('rollingColor') or "")..' Roll Result: '..sum, {0.2,0.8,0.8}) end
        iwait(200)
        if not interruptFlag then
            for i=1,#currentDice do
                if currentDice[i] ~= nil then
                    currentDice[i].setPositionSmooth({posTable[i]['x'],posTable[i]['y']-50,posTable[i]['z']})
                    iwait(10)
                end
            end
        end
        if not interruptFlag then clearDice() end
        interruptFlag = true --Do not remove
    end
    --[[ END INTERRUMPTABLE SECTION ]]--
    --clearDice()
    return 1
end

--[[ Iterates through spawned dice and adjusts the angularDrag of them all ]]--
function setDrag(num)
    for i=1,#currentDice do
        if currentDice[i] ~= nil then
            currentDice[i]['angular_drag'] = num
        end
    end
end

--[[ If player tries to roll during critical section ]]--
function printRollError()
    printToAll(string.char(12304)..'DA'..string.char(12305)..'Cannot roll while current roll is being calculated',{0.8,0.1,0.1})
end

--[[ Compares tables, returns true if are the same]]--
function isEqualTable(t1,t2)
   if t1 == t2 then return true end
   for k,v in pairs(t1) do
      if type(t1[k]) ~= type(t2[k]) then return false end
      if type(t1[k]) == "table" then
         if not isEqualTable(t1[k], t2[k]) then return false end
      else
         if t1[k] ~= t2[k] then return false end
      end
   end

   for k,v in pairs(t2) do
      if type(t2[k]) ~= type(t1[k]) then return false end
      if type(t2[k]) == "table" then
         if not isEqualTable(t2[k], t1[k]) then
            return false
         end
      else
         if t2[k] ~= t1[k] then return false end
      end
   end
   return true
end


--[[
    ******************
     Preset Functions
    ******************
]]--

--Functions for each button
function pClick1(obj,player) presetRollCo(1,player) end
function pClick2(obj,player) presetRollCo(2,player) end
function pClick3(obj,player) presetRollCo(3,player) end
function pClick4(obj,player) presetRollCo(4,player) end
function pClick5(obj,player) presetRollCo(5,player) end
function pClick6(obj,player) presetRollCo(6,player) end
function pClickCustom() presetRollCo(0) end

--[[ Checks var:editPresets and either saves or loads preset to board ]]--
function presetRollCo(num,player)
    if self.getVar('editPresets') == 1 then
        -- TODO Validate before saving preset
        print(string.char(12304)..'DA'..string.char(12305)..'Saving to '..num)
        savePreset(num)
        toggleEditPreset(saveRollButton,player)
    else
        --print(string.char(12304)..'DA'..string.char(12305)..'Loading from '..num)
        self.setVar('num', num)
        startLuaCoroutine(self, 'presetRoll')
    end
end

--[[ Routine called by buttons if var:editPresets is 0 ]]--
function presetRoll()
    normalRoll(true)
    return 1
end

--[[ Toggles var:editPresets and relabels button accordingly ]]--
function toggleEditPreset(obj,player)
    local labels = {'Save','Cancel'}
    local msg = {string.char(12304)..'DA'..string.char(12305).."Finished! Preset buttons will now load their preset when clicked.",string.char(12304)..'DA'..string.char(12305).."Select preset slot to Save to or press Cancel."}
    local x = 1 - self.getVar('editPresets')
    self.setVar('editPresets', x)
    params = obj.getButtons()
    params[1]['label'] = labels[x+1]
    printToColor(msg[x+1],player,{0.2,0.8,0.8})
    obj.editButton(params[1])
end

--[[ Saves values of counters to presetGrid ]]--
function savePreset(slot)
    presetGrid[slot] = {
        getObjectFromGUID('580374').Counter.getValue(),
        getObjectFromGUID('f6fa34').Counter.getValue(),
        getObjectFromGUID('f336b5').Counter.getValue(),
        getObjectFromGUID('070dd1').Counter.getValue(),
        getObjectFromGUID('c3fdfd').Counter.getValue(),
        getObjectFromGUID('926a00').Counter.getValue()
    }
end

--[[
    ********************
     Iniative Functions
    ********************
]]--

function initiativeCall()
    printToAll(string.char(12304)..'DA'..string.char(12305)..'Everyone! Roll for initiative.', {0,0.8,0})
    initiativeReturnTable = {}
    if initiativeDice[1] ~= nil then destroyInitiativeDice() end -- if there are dice, destroy them.
    local initiativePosStart ={ -- Starting position of Dice around the table
        {-26.4294167,35,-50},
        {19.1912746,35,-50},
        {68,35,-18.0596981},
        {68,35,18.436554},
        {19.1912746,35,50},
        {-26.5910931,35,50}
    }
    local initiativePosEnd ={ -- End position of Dice around the table
        {-26.4294167,10,-28.9376125},
        {19.1912746,10,-28.9376125},
        {46.4691,10,-18.0596981},
        {46.184082,10,18.436554},
        {19.1912746,10,28.1356277},
        {-26.5910931,10,28.1356277}
    }
    -- Spawn Dice
    local params = {}
    params.type = 'Die_20'
    for i=1,6 do
        if char.getTable('CharacterSheets')[orderedPlayerColors[i]] ~= nil and Global.call("getZone",{orderedPlayerColors[i]}) == 2 then
            params.position = initiativePosStart[i]
            initiativeDice[orderedPlayerColors[i]] = spawnObject(params)
            initiativeDice[orderedPlayerColors[i]].setScale({7,7,7})
            initiativeDice[orderedPlayerColors[i]].setColorTint(returnColorTable(orderedPlayerColors[i]))
        end
    end
    for i=1,6 do
        if char.getTable('CharacterSheets')[orderedPlayerColors[i]] ~= nil and Global.call("getZone",{orderedPlayerColors[i]}) == 2 then
            initiativeDice[orderedPlayerColors[i]].setPositionSmooth(initiativePosEnd[i]) -- Animation
        end
    end
    wait(80)
    --[[
        HACK: setPositionSmooth Workaround
        Since it moves them in a weird way, this destroys the dice once the animation is complete,
        (80 frames) and respawns them at the end position. Jerks around if Host has bad framerate.
    ]]--
    destroyInitiativeDice()
    for i=1,6 do
        if char.getTable('CharacterSheets')[orderedPlayerColors[i]] ~= nil and Global.call("getZone",{orderedPlayerColors[i]}) == 2 then
            params.position = initiativePosEnd[i]
            initiativeDice[orderedPlayerColors[i]] = spawnObject(params)
            initiativeDice[orderedPlayerColors[i]].setScale({7,7,7})
            initiativeDice[orderedPlayerColors[i]]['use_gravity'] = false
            initiativeDice[orderedPlayerColors[i]]['mass'] = 0
            initiativeDice[orderedPlayerColors[i]].setColorTint(returnColorTable(orderedPlayerColors[i]))
        end
    end
    setRoll(1)
    tool.call('enableSecondaryInitButtons')
    return 1
end

--[[ Brings Up or Down the Initative 'Roll' Buttons | flag can be 0 for down or 1 for up ]]--
function setRoll(flag)
    local sheets = char.getTable('CharacterSheets')
    if flag == 1 then
        for i=1,6 do
            if sheets[orderedPlayerColors[i]] ~= nil and Global.call("getZone",{orderedPlayerColors[i]}) == 2 then
                local pos = initiativeButtons[i].getPosition()
                local rot = {}
                pos['y'] = 5.5
                initiativeButtons[i].setPosition(pos)
                local offset = 5
                if i == 1 or i == 2 then
                    pos['x'] = pos['x'] + offset
                    rot = {315,0,0}
                elseif i == 3 or i==4 then
                    pos['z'] = pos['z'] + offset
                    rot = {315,270,0}
                elseif i==5 or i==6 then
                    pos['x'] = pos['x'] - offset
                    rot = {315,180,0}
                end
                local obj = spawnObject({
                    ['type'] = 'Counter',
                    ['position'] = {pos['x'],pos['y'],pos['z']},
                    ['rotation'] = rot
                })
                --obj['interactable'] = false
                obj.setName('Initiative Bonus')
                local value = char.getTable('playerInformation')[orderedPlayerColors[i]]['Initiative'].TextTool.getValue()
                obj.Counter.setValue(tonumber(value))
                obj.setLock(true)
                initiativeBonusCounters[initiativeButtons[i].getVar('player')] = obj
                initiativeButtons[i].setTable('pos',{0,-0.2,0})
                initiativeButtons[i].setTable('rot',{0,90,-180})
                Global.call('addButton',{initiativeButtons[i].getGUID(),1400,650,400,'Roll','iRollPlayer',self})
            end
        end
    else
        for i=1,6 do
            if sheets[orderedPlayerColors[i]] ~= nil and Global.call("getZone",{orderedPlayerColors[i]}) == 2 then
                local pos = initiativeButtons[i].getPosition()
                pos['y'] = -5.5
                initiativeButtons[i].setPosition(pos)
                initiativeBonusCounters[initiativeButtons[i].getVar('player')].destruct()
                initiativeButtons[i].clearButtons()
            end
        end
    end
end

function iRollPlayer(obj,player)
    -- This function is called from a button, ergo obj is the button that made the call.
    startLuaCoroutine(self,'initiativeDieSet'..obj.getVar('player'))
    obj.clearButtons()
    local pos = obj.getPosition()
    obj.setPosition{pos[1],-5.5,pos[3]}
    local counter = initiativeBonusCounters[player]
    counter.setScale({0,0,0})
end

function processInitiativeDie(color)
    initiativeDice[color].roll()
    singularWait(50)
    initiativeDice[color]['angular_drag'] = 1.5
    singularWait(50)
    initiativeDice[color]['angular_drag'] = 2.5
    singularWait(50)
    initiativeDice[color]['angular_drag'] = 3.7
    local pos = initiativeDice[color].getPosition()
    initiativeDice[color].setValue(initiativeDice[color].getValue())
    table.insert(initiativeReturnTable, {getObjectFromGUID(color..'NameDisplay').TextTool.getValue()..' ('..color..' Player)', initiativeDice[color].getValue()+initiativeBonusCounters[color].getValue()})
    initiativeRolledIndicators[color].setColorTint(returnColorTable(color))
    initiativeDice[color].setPositionSmooth({pos['x'],pos['y']+0.5,pos['z']})
    initiativeDice[color].setRotationSmooth(getColorRotation(color,initiativeDice[color].getValue()))
    singularWait(30)
    copy({initiativeDice[color]})
    initiativeDice[color].destruct()
    local params = {}
    params.position = pos
    initiativeDice[color] = paste(params)
    initiativeDice[color] = initiativeDice[color][1]
    initiativeDice[color].setPosition(pos)
end

function getColorRotation(color,value)
    local rotation = {}
    local xTable = {
        349.19,52.62,349.19,349.19,349.19,349.19,52.62,52.62,52.62,52.62,
        307.38,307.38,307.38,307.38,10.81,10.81,10.81,10.81,307.38,10.81
    }
    local yTable = {
        60,300,180,180,300,180,300,300,300,180,
        0,120,120,120,120,0,240,0,120,0
    }
    local zTable = {
        18,342,90,162,234,306,54,198,126,270,
        90,306,18,234,126,54,342,270,162,198
    }

    if color == 'Purple' or color == 'Blue' then
        rotation = {xTable[value],(yTable[value]+180)%360,zTable[value]}
    elseif color == 'Red' or color == 'Orange' then
        rotation = {xTable[value],yTable[value],zTable[value]}
    elseif color == 'Yellow' or color == 'Green' then
        rotation = {xTable[value],(yTable[value]+270)%360,zTable[value]}
    else
        print('Invalid call to getColorRotation')
    end
    return rotation
end

function initiativeDieSetRed() processInitiativeDie('Red') return 1 end
function initiativeDieSetOrange() processInitiativeDie('Orange') return 1 end
function initiativeDieSetYellow() processInitiativeDie('Yellow') return 1 end
function initiativeDieSetGreen() processInitiativeDie('Green') return 1 end
function initiativeDieSetBlue() processInitiativeDie('Blue') return 1 end
function initiativeDieSetPurple() processInitiativeDie('Purple') return 1 end

function singularWait(iFrames)
    while iFrames > 0 do
        coroutine.yield(0)
        iFrames = iFrames - 1
   end
end

--[[ Destroys all iniative Dice and brings down the rolling buttons ]]--
function cleanupInitiative()
    setRoll(0)
    destroyInitiativeDice()
    for i=1,6 do
      initiativeRolledIndicators[orderedPlayerColors[i]].setColorTint{0,0,0}
    end
end

function returnColorTable(color)
    local tint = {}
    tint['Red'] = {0.856,0.1,0.094} --[[ Red ]]--
    tint['Orange'] = {0.956,0.392,0.113} --[[ Orange ]]--
    tint['Yellow'] = {0.905,0.898,0.172} --[[ Yellow ]]--
    tint['Green'] = {0.192,0.701,0.168} --[[ Green ]]--
    tint['Blue'] = {0.118,0.53,1.0} --[[ Blue ]]--
    tint['Purple'] = {0.627,0.125,0.941} --[[ Purple ]]--
    return tint[color]
end


--[[ Iterates around the table destroying the Iniative Dice ]]--
function destroyInitiativeDice()
    local i = 1
    for i=1,6 do
        if char.getTable('CharacterSheets')[orderedPlayerColors[i]] ~= nil then
            destroyObject(initiativeDice[orderedPlayerColors[i]])
        end
    end
end

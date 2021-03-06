uniqueID = '' -- The name by which your character sheet will be identified from others.

customSheetData = { -- The custom model information for your character sheet.
    ['mesh'] = 'http://pastebin.com/raw/WM95FWL5',
    ['diffuse'] = '', -- Image required
    ['type'] = 4, -- Board
    ['material'] = 3, -- Cardboard
    ['specular_intensity'] = 0.1,
    ['specular_sharpness'] = 7.25,
    ['fresnel_strength'] = 0.60,
    ['cast_shadows'] = false
}

DM_Visible_Stats = {'Base_Stat1','Base_Stat2','Base_Stat3','Base_Stat4','Base_Stat5','Base_Stat6'} -- The names of 6 text tools to be represented for the DM when selecting a player. They must have numeric values or they will not work.

objectOffsetList = { -- Objects different than 3DTexts

--[[
Format for each line:
[Name] = {
            x position of the object, z position of the object,
            ['type'] = 'the kind of object to be spawned', ['height'] = the y position of the object,
            ['rot'] = {x rotation, y rotation, z rotation}, ['scale'] = the size of the object,
            ['name'] = 'the visible display name of the spawned object',
            (optional)['tab'] = 'the tab table in the tabOffsetList you want this item to belong to -defaults to nil-',
            (optional)['scrollbar'] = true if the object is a notecard and you would like it to have scrolling capability -defaults to false-
         }
--]]

    ['HP']        = { 2.161939,-4.81705,     ['type'] = 'Counter',  ['height'] = 0.4229977, ['rotation'] = {-90,0,0}, ['scale'] = 1.05,  ['name'] = 'Health'}, -- Not an optional stat
    ['Inventory'] = { 4.994779,4.361943,     ['type'] = 'Notecard', ['height'] = 1.023388,  ['rotation'] = {-90,0,0}, ['scale'] = 0.925, ['name'] = 'Inventory'} -- Not an optional stat
}

incrementalOffsetList = { -- Text Tools that will spawn modifiers to act like counters - for numbers

   --[[
   Format for each line:
   [Name] = {
                x position of Text Tool, z position of Text Tool, ['size'] = font size,
                ['gap'] = { space between x axis of +/- buttons, space between z axis of +/- buttons },
                ['mod'] = { x position of the center of +/- buttons relative to the Text Tool, z position of the center of +/- buttons relative to the Text Tool }
                (optional)['modSize'] = size of the buttons -defaults to 200-, (optional)['color'] = color of the Text Tool -defaults to 'Grey'-,
                (optional)['alwaysVisible'] = false to only show buttons when in "Edit Mode" or true to always display buttons -defaults to false-,
                (optional)['triggerUpdate'] = false to prevent the button(s) from calling calculateCharacterSheetValues() when modified or true to make the button(s) call the function when modified -defaults to false-,
                (optional)['tab'] = 'the tab table in the tabOffsetList you want this item to belong to -defaults to nil-'
            }
   --]]

}

toggleOffsetList = { -- Text Tools that will spawn buttons which change the value of the Text Tool

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 ['set'] = {the different toggle displays},
                 ['mod'] = { x position of the center of the button relative to the Text Tool, z position of the center of the button relative to the Text Tool }
                 (optional)['modSize'] = size of the button -defaults to 200-, (optional)['color'] = color of the Text Tool -defaults to 'Grey'-,
                 (optional)['alwaysVisible'] = 0 to only show buttons when in "Edit Mode" or 1 to always display buttons -defaults to 0-,
                 (optional)['triggerUpdate'] = false to prevent the button(s) from calling calculateCharacterSheetValues() when modified or true to make the button(s) call the function when modified -defaults to false-
                 (optional)['tab'] = 'the tab table in the tabOffsetList you want this item to belong to -defaults to nil-'
             }
    --]]

}

checkboxOffsetList = { -- Text Tools that contain lists of individual items with checkboxes

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 (optional)['rotation'] = {x rotation, y rotation, z rotation} used primarily to create horizontal checkboxes
                 ['gap'] = {the x distance between each button, the z difference between each button},
                 ['mod'] = { x position of the center of the button relative to the Text Tool, z position of the center of the button relative to the Text Tool }
                 ['listVariables'] = { 'the names of each item the checkbox will represent','separated by commas','do not use numbers' },
                 (optional)['modSize'] = size of the button -defaults to 200-, (optional)['color'] = color of the Text Tool -defaults to 'Grey'-,
                 (optional)['alwaysVisible'] = 0 to only show buttons when in "Edit Mode" or 1 to always display buttons -defaults to 0-,
                 (optional)['triggerUpdate'] = false to prevent the button(s) from calling calculateCharacterSheetValues() when modified or true to make the button(s) call the function when modified -defaults to false-
                 (optional)['tab'] = 'the tab table in the tabOffsetList you want this item to belong to -defaults to nil-'
             }
    --]]

}

textOffsetList = { -- Text Tools that will be unlocked - for words

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 (optional)['color'] = color of the Text Tool or true to be the player's color -defaults to 'Grey'-,
             }
    --]]

    ['Character_Name']  = { 13.26529,-7.56156, ['size'] = 36, ['color'] = true}
}

inertOffsetList = { -- Text Tools that are only interacted upon by other changing other Text Tools or conditions.

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 (optional)['color'] = color of the Text Tool or true to be the player's color -defaults to 'Grey'-,
             }
    --]]

}

tabsOffsetList = { -- Buttons that change what text tools and objects are on the sheet

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 ['text'] = 'the button label'
                 ['set'] = {the different toggle displays},
                 ['mod'] = { x position of the center of the button relative to the Text Tool, z position of the center of the button relative to the Text Tool }
                 (optional)['modSize'] = size of the button -defaults to 200-, (optional)['color'] = color of the Text Tool -defaults to 'Grey'-,
                 (optional)['alwaysVisible'] = 0 to only show buttons when in "Edit Mode" or 1 to always display buttons -defaults to 0-,
                 (optional)['triggerUpdate'] = false to prevent the button(s) from calling calculateCharacterSheetValues() when modified or true to make the button(s) call the function when modified -defaults to false-
             }
    --]]

}

function calculateCharacterSheetValues(color) -- (optional) Your chance to script automation for your character sheet, for advanced LUA users
    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed.
    color = color[1] -- This is the color of the player who triggered this calculate function
    -- char.getTable('CharacterJournals')[color] is the journal of the player who triggered this calculate function. It contains all of the variables for your sheet.
    -- char.getTable('playerInformation')[color][key] is the table containing the text tool objects where 'key' is the name of the text tool, e.g., 'Character_Name'
    -- See https://github.com/Indimeco/QRPG/blob/master/D%26D%205e%20Character%20Sheet%20Source for usage examples.

    -- Your code goes below this line
end

function onJournalLoad(color) -- called when a journal has finished loading onto a character sheet, optional
    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed
    color = color[1] -- This is the color of the player who triggered this calculate function
    
    -- Your code goes below this line
end

function onJournalClosed(table) -- called when a journal has finished unloading from a character sheet, optional
    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed
    local color = table[1] -- This is the color of the player who triggered this calculate function
    local journal = table[2] -- This is the new journal object created after saving and closing a character
    
    -- Your code goes below this line
end

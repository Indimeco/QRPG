uniqueID = 'D&D5e by Indimeco and rolandostar v1.2'

customSheetData = { -- The custom model information for your character sheet.
    ['mesh'] = 'http://pastebin.com/raw/WM95FWL5',
    ['diffuse'] = 'http://i.imgur.com/GFJrLxu.png',
    ['type'] = 4, -- Board
    ['material'] = 3, -- Cardboard
    ['specular_intensity'] = 0.1,
    ['specular_sharpness'] = 7.25,
    ['fresnel_strength'] = 0.60,
    ['cast_shadows'] = false
}

DM_Visible_Stats = {'Armor_Class','Speed','Spell_Save_DC','Passive_Perception','STRMod','DEXMod'} -- The names of 6 text tools to be represented for the DM when selecting a player. They must have numeric values or they will not work.

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

    ['HP']              = { 2.161939,-4.81705,     ['type'] = 'Counter',  ['height'] = 0.4229977, ['rotation'] = {-90,0,0}, ['scale'] = 1.05,  ['name'] = 'Health'},
    ['Copper']          = { 8.458632,7.3,          ['type'] = 'Counter',  ['height'] = 0.9,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Copper',   ['name'] = 'Copper'},
    ['Silver']          = { 6.648649,7.3,          ['type'] = 'Counter',  ['height'] = 0.9,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Silver',   ['name'] = 'Silver'},
    ['Electrum']        = { 4.868639,7.3,          ['type'] = 'Counter',  ['height'] = 0.9,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Electrum', ['name'] = 'Electrum'},
    ['Gold']            = { 3.04866,7.3,           ['type'] = 'Counter',  ['height'] = 0.9,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Gold',     ['name'] = 'Gold'},
    ['Platinum']        = { 1.258625,7.3,          ['type'] = 'Counter',  ['height'] = 0.9,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Platinum', ['name'] = 'Platinum'},
    ['Normal_Attacks']  = { -2.5398102,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Normal Attacks',   ['scrollbar'] = true, ['tab'] = 'Tab_1'},
    ['Special_Attacks'] = { -7.2604314,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Special Attacks',  ['scrollbar'] = true, ['tab'] = 'Tab_1'},
    ['Companions']      = { -4.9058342,5.02206,    ['type'] = 'Notecard', ['height'] = 1.014,     ['rotation'] = {-90,0,0}, ['scale'] = 1.175, ['name'] = 'Companions',       ['scrollbar'] = true, ['tab'] = 'Tab_1'},
    ['Spellbook']       = { -2.5398102,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Spellbook',        ['scrollbar'] = true, ['tab'] = 'Tab_2'},
    ['Prepared_Spells'] = { -7.2604314,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Prepared Spells',  ['scrollbar'] = true, ['tab'] = 'Tab_2'},
    ['Magic_Items']     = { -4.9058342,-1.02831,   ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Magic Items',      ['scrollbar'] = true, ['tab'] = 'Tab_2'},
    ['Spell_Use']       = { -4.9058342,5.02206,    ['type'] = 'Notecard', ['height'] = 1.014,     ['rotation'] = {-90,0,0}, ['scale'] = 1.175, ['name'] = 'Spell Use Tracker',['scrollbar'] = true, ['tab'] = 'Tab_2'},
    ['Traits']          = { -2.5398102,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Traits/Flaws',                           ['tab'] = 'Tab_3'},
    ['Appearance']      = { -7.2604314,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Appearance',                             ['tab'] = 'Tab_3'},
    ['Connections']     = { -4.9058342,-1.02831,   ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Connections',      ['scrollbar'] = true, ['tab'] = 'Tab_3'},
    ['Backstory']       = { -4.9058342,5.02206,    ['type'] = 'Notecard', ['height'] = 1.014,     ['rotation'] = {-90,0,0}, ['scale'] = 1.175, ['name'] = 'Backstory',        ['scrollbar'] = true, ['tab'] = 'Tab_3'},
    ['Feats']           = { -2.5398102,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Race/Class Feats', ['scrollbar'] = true, ['tab'] = 'Tab_4'},
    ['Info']            = { -7.2604314,-3.9832565, ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Additional Info',  ['scrollbar'] = true, ['tab'] = 'Tab_4'},
    ['Languages']       = { -4.9058342,-1.02831,   ['type'] = 'Notecard', ['height'] = 1.04,      ['rotation'] = {-90,0,0}, ['scale'] = 0.65,  ['name'] = 'Languages',                              ['tab'] = 'Tab_4'},
    ['Journal']         = { -4.9058342,5.02206,    ['type'] = 'Notecard', ['height'] = 1.014,     ['rotation'] = {-90,0,0}, ['scale'] = 1.175, ['name'] = 'Personal Journal', ['scrollbar'] = true, ['tab'] = 'Tab_4'},
    ['Equipment']       = { 6.476904,-0.0266,      ['type'] = 'Notecard', ['height'] = 1.031,     ['rotation'] = {-90,0,0}, ['scale'] = 0.775, ['name'] = 'Equipment',        ['scrollbar'] = true},
    ['Inventory']       = { 4.994779,4.361943,     ['type'] = 'Notecard', ['height'] = 1.023388,  ['rotation'] = {-90,0,0}, ['scale'] = 0.925, ['name'] = 'Inventory'}
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

    ['Speed']              = { 2.074633,-0.23846, ['size'] = 36, ['gap'] = {0.6,0},  ['mod'] = {0,0.3} },
    ['Initiative']         = { 2.074633,-1.3,     ['size'] = 40, ['gap'] = {0.6,0},  ['mod'] = {0,0.3} },
    ['Inspiration']        = { 12.78864,-5.92592, ['size'] = 40, ['gap'] = {0,0.15}, ['mod'] = {-3.06,0.3}, ['modSize']=150 },
    ['Proficiency_Bonus']  = { 12.78864,-4.97593, ['size'] = 40, ['gap'] = {0,0.15}, ['mod'] = {-3.06,0.3}, ['modSize']=150, ['triggerUpdate'] = true},
    ['Spell_Save_DC']      = { 7.052309,-3.18593, ['size'] = 40, ['gap'] = {0.52,0}, ['mod'] = {0,0.26} },
    ['Spell_Attack_Bonus'] = { 5.488634,-3.18593, ['size'] = 40, ['gap'] = {0.52,0}, ['mod'] = {0,0.26} },
    ['Max_HP']             = { 1.454685,-3.27593, ['size'] = 64, ['gap'] = {0.6,0},  ['mod'] = {0,0.5} },
    ['Max_Hit_Dice']       = { 3.6,-3.47588,      ['size'] = 30, ['gap'] = {0,0.15}, ['mod'] = {0.47,0.27}, ['modSize'] = 150 },
    ['Current_Hit_Dice']   = { 3.488621,-3.07589, ['size'] = 72, ['gap'] = {0.6,0},  ['mod'] = {0.02,0.9} },
    ['Armor_Class']        = { 4.790911,-5.37751, ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,0},       ['modSize'] = 180, ['color'] = 'Silver'},
    ['STR']                = { 14.88861,-6.01784, ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,1.8},     ['modSize'] = 250, ['color'] = 'Red',    ['triggerUpdate'] = true},
    ['DEX']                = { 14.88863,-3.52217, ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,1.8},     ['modSize'] = 250, ['color'] = 'Green',  ['triggerUpdate'] = true},
    ['CON']                = { 14.88863,-1.04589, ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,1.8},     ['modSize'] = 250, ['color'] = 'Black',  ['triggerUpdate'] = true},
    ['INT']                = { 14.88863,1.44407,  ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,1.8},     ['modSize'] = 250, ['color'] = 'Blue',   ['triggerUpdate'] = true},
    ['WIS']                = { 14.88863,3.934117, ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,1.8},     ['modSize'] = 250, ['color'] = 'Pink',   ['triggerUpdate'] = true},
    ['CHA']                = { 14.88863,6.424077, ['size'] = 72, ['gap'] = {0.85,0}, ['mod'] = {0,1.8},     ['modSize'] = 250, ['color'] = 'Yellow', ['triggerUpdate'] = true}
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

    ['Max_Hit_Dice_Type']     = { 3,-3.47588,        ['size'] = 30, ['set'] = {'d4','d6','d8','d10','d12'},                        ['mod'] = {0,0.22}, ['modSize'] = 300},
    ['Vision']                = { 2.074633,0.97407,  ['size'] = 24, ['set'] = {'Blinded','Normal','Darkvision','Truesight'},       ['mod'] = {0,0.22}, ['modSize'] = 400},
    ['Spell_Casting_Ability'] = { 8.558649,-3.18593, ['size'] = 40, ['set'] = {'N/A','STR','DEX','CON','INT','WIS','CHA'},         ['mod'] = {0,0.25}, ['modSize'] = 400}
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

    ['Success_Save']                = { 7.94,-5.1,  ['rotation'] = {0,270,0}, ['size'] = 40, ['gap'] = {0,0.59}, ['mod'] = {-0.3,-0.3}, ['listVariables'] = {'First','Second','Third'},  ['color'] = 'Black', ['modSize'] = 100},
    ['Fail_Save']                   = { 7.94,-4.65, ['rotation'] = {0,270,0}, ['size'] = 40, ['gap'] = {0,0.59}, ['mod'] = {0.3,-0.3}, ['listVariables'] = {'First','Second','Third'},  ['color'] = 'Black', ['modSize'] = 100},
    ['Skill_Proficiencies']         = { 12.89858,-0.68993, ['size'] = 26, ['gap'] = {0,0.39}, ['mod'] = {0.3,-0.24}, ['listVariables'] = {'Acrobatics','Animal Handling','Arcana','Athletics','Deception','History','Insight','Intimidation','Investigation',
                                                                                                                'Medicine','Nature','Perception','Performance','Persuasion','Religion','Sleight Of Hand','Stealth','Survival'},  ['color'] = 'Black', ['triggerUpdate'] = true, ['modSize'] = 100},
    ['Saving_Throws_Proficiencies'] = { 12.89858,-3.94673, ['size'] = 26, ['gap'] = {0,0.39}, ['mod'] = {0.3,-0.24}, ['listVariables'] = {'STR','DEX','CON','INT','WIS','CHA'}, ['color'] = 'Black', ['triggerUpdate'] = true, ['modSize'] = 100}
}

textOffsetList = { -- Text Tools that will be unlocked - for words

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 (optional)['color'] = color of the Text Tool or true to be the player's color -defaults to 'Grey'-,
             }
    --]]

    ['Path']            = { 7.767517,-6.87593, ['size'] = 24},
    ['Background']      = { 4.656049,-7.57593, ['size'] = 24},
    ['Alignment']       = { 4.632616,-6.87593, ['size'] = 24},
    ['Party']           = { 1.564409,-6.87593, ['size'] = 24},
    ['Race_Class']      = { 7.707871,-7.57593, ['size'] = 24},
    ['Experience']      = { 1.564409,-7.57593, ['size'] = 24},
    ['Character_Level'] = { 10.19124,-7.30251, ['size'] = 32, ['color'] = 'Black'},
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

    ['STRMod']                = { 13.78865,-5.7159,  ['size'] = 40, ['color'] = 'Red'},
    ['DEXMod']                = { 13.78865,-3.25593, ['size'] = 40, ['color'] = 'Green'},
    ['CONMod']                = { 13.78865,-0.76592, ['size'] = 40, ['color'] = 'Black'},
    ['INTMod']                = { 13.78865,1.72407,  ['size'] = 40, ['color'] = 'Blue'},
    ['WISMod']                = { 13.78865,4.254094, ['size'] = 40, ['color'] = 'Pink'},
    ['CHAMod']                = { 13.78865,6.74407,  ['size'] = 40, ['color'] = 'Yellow'},
    ['Passive_Perception']    = { 12.71865,7.22407,  ['size'] = 40},
    ['Skill_Numbers']         = { 12.49865,-0.69991, ['size'] = 26},
    ['Saving_Throws_Numbers'] = { 12.48865,-3.94673, ['size'] = 26}
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

    ['Tab_1'] = { -1.5,-7.1, ['text'] = 'Combat',    ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Platinum', ['alwaysVisible'] = true},
    ['Tab_2'] = { -4,-7.1,   ['text'] = 'Spellbook', ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Platinum', ['alwaysVisible'] = true},
    ['Tab_3'] = { -6,-7.1,   ['text'] = 'Bio',       ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Platinum', ['alwaysVisible'] = true},
    ['Tab_4'] = { -8,-7.1,   ['text'] = '[Notes]',   ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Copper',   ['alwaysVisible'] = true}
}

function calculateCharacterSheetValues(color) -- Your chance to script automation for your character sheet, optional

    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed.
    color = color[1] -- This is the color of the player who triggered this calculate function
    -- char.getTable('CharacterJournals')[color] is the journal of the player who triggered this calculate function. It contains all of the variables for your sheet.
    -- char.getTable('playerInformation')[color][key] is the table containing the text tool objects where 'key' is the name of the text tool, e.g., 'Character_Name'

    -- Your code goes below this line

    local str = ''

    -- Calculate Ability Modifiers.
    local abilityMod = {}
    local statTable = {}
    for key,value in pairs({'STR','DEX','CON','INT','WIS','CHA'}) do
        abilityMod[value] = math.floor((char.getTable('CharacterJournals')[color].getVar(value)-10)/2)
        if abilityMod[value] > 0 then
            char.getTable('playerInformation')[color][value..'Mod'].setValue('+'..tostring(abilityMod[value]))
        else
            char.getTable('playerInformation')[color][value..'Mod'].setValue(tostring(abilityMod[value]))
        end
    end

    -- Calculate Saving Throws.
    statTable = char.getTable('CharacterJournals')[color].getTable('Saving_Throws_Proficiencies')
    for key,value in pairs(statTable) do
        if value == true then
            str = str..tostring(abilityMod[key] + char.getTable('CharacterJournals')[color].getVar('Proficiency_Bonus'))..'\n'
        else
            str = str..tostring(abilityMod[key])..'\n'
        end
    end
    char.getTable('playerInformation')[color]['Saving_Throws_Numbers'].TextTool.setValue(str)

    -- Calculate Skill Scores
    str = ''
    statTable = char.getTable('CharacterJournals')[color].getTable('Skill_Proficiencies')
    abilityModUseOrder = {'DEX','WIS','INT','STR','CHA','INT','WIS','CHA','INT','WIS','INT','WIS','CHA','CHA','INT','DEX','DEX','WIS'} -- The order of the skills in terms of their parent ability.
    local i = 1
    for key,value in pairs(statTable) do
        if value == true then
            str = str..tostring(abilityMod[abilityModUseOrder[i]] + char.getTable('CharacterJournals')[color].getVar('Proficiency_Bonus'))..'\n'
        else
            str = str..tostring(abilityMod[abilityModUseOrder[i]])..'\n'
        end
        i = i+1
    end
    char.getTable('playerInformation')[color]['Skill_Numbers'].TextTool.setValue(str)

    -- Calculate Passive Perception
    if statTable['Perception'] == true then
        char.getTable('playerInformation')[color]['Passive_Perception'].TextTool.setValue(tostring(10+abilityMod['WIS']+char.getTable('CharacterJournals')[color].getVar('Proficiency_Bonus')))
    else
        char.getTable('playerInformation')[color]['Passive_Perception'].TextTool.setValue(tostring(10+abilityMod['WIS']))
    end
end

function onJournalLoad(color) -- called when a journal has finished loading onto a character sheet, optional
    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed
    color = color[1] -- This is the color of the player who triggered this calculate function
end

function onJournalClosed(table) -- called when a journal has finished unloading from a character sheet, optional
    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed
    local color = table[1] -- This is the color of the player who triggered this calculate function
    local journal = table[2] -- This is the new journal object created after saving and closing a character
end

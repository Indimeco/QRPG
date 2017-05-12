uniqueID = 'Pathfinder Character Sheet By B0021 v1.0' -- The name by which your character sheet will be identified from others.

customSheetData = { -- The custom model information for your character sheet.
    ['mesh'] = 'http://pastebin.com/raw/WM95FWL5',
    ['diffuse'] = 'https://cdn.discordapp.com/attachments/289473431295098890/311904328069808129/Scripted-Character-Sheet-Picture2.jpg', -- Image required
    ['type'] = 4, -- Board
    ['material'] = 3, -- Cardboard
    ['specular_intensity'] = 0.1,
    ['specular_sharpness'] = 7.25,
    ['fresnel_strength'] = 0.60,
    ['cast_shadows'] = false
}

DM_Visible_Stats = {'STR','DEX','CON','INT','WIS','CHA'} -- The names of 6 text tools to be represented for the DM when selecting a player. They must have numeric values or they will not work.

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

    ['HP']              = { 11.438917,-2.00593,    ['type'] = 'Counter',  ['height'] = 1.0,       ['rotation'] = {-90,0,0}, ['scale'] = 0.50,  ['name'] = 'Health'},
    ['Copper']          = { 5.468632,1.56,          ['type'] = 'Counter',  ['height'] = 1.0,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Copper',   ['name'] = 'Copper'},
    ['Silver']          = { 4.708649,1.98,          ['type'] = 'Counter',  ['height'] = 1.0,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Silver',   ['name'] = 'Silver'},
    ['Gold']            = { 3.92866,2.39,           ['type'] = 'Counter',  ['height'] = 1.0,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Gold',     ['name'] = 'Gold'},
    ['Platinum']        = { 3.158625,2.81,          ['type'] = 'Counter',  ['height'] = 1.0,       ['rotation'] = {-90,0,0}, ['scale'] = 0.3,   ['color'] = 'Platinum', ['name'] = 'Platinum'},
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
    ['Equipment']       = { -4.9058342,5.02206,      ['type'] = 'Notecard', ['height'] = 1.05,     ['rotation'] = {-90,0,0}, ['scale'] = 1.175, ['name'] = 'Equipment',        ['scrollbar'] = true, ['tab'] = 'Tab_5'},
    ['Inventory']       = { 3.024779,5.531943,     ['type'] = 'Notecard', ['height'] = 1.05,  ['rotation'] = {-90,0,0}, ['scale'] = 0.925, ['name'] = 'Inventory'}
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

    ['STR']               = { 14.2789127,-6.42593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['DEX']               = { 14.2789127,-5.93593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['CON']               = { 14.2789127,-5.44593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['INT']               = { 14.2789127,-4.95593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['WIS']               = { 14.2789127,-4.46593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['CHA']               = { 14.2789127,-3.97593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['STR_MOD']           = { 13.5189127,-6.42593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['DEX_MOD']           = { 13.5189127,-5.93593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['CON_MOD']           = { 13.5189127,-5.44593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['INT_MOD']           = { 13.5189127,-4.95593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['WIS_MOD']           = { 13.5189127,-4.46593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['CHA_MOD']           = { 13.5189127,-3.97593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Fort']              = { 13.4589127,-3.27593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Reflex']            = { 13.4589127,-2.78593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Will']              = { 13.4589127,-2.31593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['BAB']               = { 10.8689127,-1.32593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Spell_Res']         = { 8.0489127,-1.32593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Touch']             = { 5.6789127,-1.27593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Flt_Foot']          = { 3.2589127,-1.27593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['AC']                = { 13.7389127,-0.75593,    ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['CMD']               = { 9.9989127,-0.70593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['CMB']               = { 6.0289127,-0.68593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Initiative']        = { 3.2389127,-0.70593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Base_Speed_FT']     = { 7.8789127,-3.29593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Base_Speed_SQ']     = { 6.8589127,-3.29593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['With_Armor_FT']     = { 5.6389127,-3.29593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['With_Armor_SQ']     = { 4.5889127,-3.29593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Fly']               = { 9.0189127,-2.60593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Manue']             = { 7.9789127,-2.60593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['S']              = { 6.8189127,-2.60593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['C']             = { 5.7289127,-2.60593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Burrow']            = { 4.5589127,-2.60593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Temp_MOD']          = { 3.1589127,-2.97593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Acro']              = { 12.4489127,-0.01593,    ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Appr']              = { 12.4489127,0.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Bluff']             = { 12.4489127,0.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Climb']             = { 12.4489127,1.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Craft1']            = { 12.4489127,1.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Craft2']            = { 12.4489127,1.99593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Craft3']            = { 12.4489127,2.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Dip']               = { 12.4489127,2.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Dis_Device']        = { 12.4489127,3.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Disg']              = { 12.4489127,3.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Escape']            = { 12.4489127,3.99593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Fly_Skill']         = { 12.4489127,4.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Hand_Ani']          = { 12.4489127,4.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Heal']              = { 12.4489127,5.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Intim']             = { 12.4489127,5.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Arc']          = { 12.4489127,5.99593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Dun']          = { 12.4489127,6.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Eng']          = { 12.4489127,6.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Geo']          = { 12.4489127,7.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_His']          = { 12.4489127,7.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Loc']          = { 7.4789127,0.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Nat']          = { 7.4789127,0.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Nob']          = { 7.4789127,1.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Pla']          = { 7.4789127,1.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Know_Rel']          = { 7.4789127,1.99593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Lin']               = { 7.4789127,2.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perce']             = { 7.4789127,2.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perfo1']            = { 7.4789127,3.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perfo2']            = { 7.4789127,3.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perfe1']            = { 7.4789127,3.99593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perfe2']            = { 7.4789127,4.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Ride']              = { 7.4789127,4.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Sen_Mot']           = { 7.4789127,5.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Sle_of_Han']        = { 7.4789127,5.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Spellcra']          = { 7.4789127,5.99593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Stealth']           = { 7.4789127,6.39593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Surv']              = { 7.4789127,6.79593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Swim']              = { 7.4789127,7.19593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Use_Mag_Dev']       = { 7.4789127,7.59593,     ['size'] = 30, ['gap'] = {0.3,0},  ['mod'] = {0,0.3}, ['modSize'] = 150, ['color'] = 'Black'}
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
    ['Craft_1']     = { 14.05,1.52588,        ['size'] = 25, ['set'] = {'Alchemy','Armor','Bows','Traps','Weapons','Varies'},                        ['mod'] = {0,0.22}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Craft_2']     = { 14.05,1.94588,        ['size'] = 25, ['set'] = {'Alchemy','Armor','Bows','Traps','Weapons','Varies'},                        ['mod'] = {0,0.22}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Craft_3']     = { 14.05,2.32588,        ['size'] = 25, ['set'] = {'Alchemy','Armor','Bows','Traps','Weapons','Varies'},                        ['mod'] = {0,0.22}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perform_1']     = { 8.85,3.14588,        ['size'] = 25, ['set'] = {'Act','Comedy','Dance','Keyboard_Inst.','Oratory','Percussion_Inst.','String_Inst.','Wind_Inst.','Sing'},                        ['mod'] = {0,0.22}, ['modSize'] = 150, ['color'] = 'Black'},
    ['Perform_2']     = { 8.85,3.53588,        ['size'] = 25, ['set'] = {'Act','Comedy','Dance','Keyboard_Inst.','Oratory','Percussion_Inst.','String_Inst.','Wind_Inst.','Sing'},                        ['mod'] = {0,0.22}, ['modSize'] = 150, ['color'] = 'Black'}
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

    ['Skill_Proficiencies']         = { 16.12858,0.0925, ['size'] = 26, ['gap'] = {0,0.395}, ['mod'] = {0,0}, ['listVariables'] = {'Acro','App','Bluff','Climb','Craft1','Craft2','Craft3','Dip','Dis_Divice',
                                                                                                                'Disg','Escape','Fly_Skill','Hand_Ani','Heal','Intim','Know_Arc','Know_Dun','Know_Eng','Know_Geo','Know_His'},  ['color'] = 'Black', ['triggerUpdate'] = true, ['modSize'] = 100},

    ['Skill_Proficiencies2']         = { 11.12858,0.4725, ['size'] = 26, ['gap'] = {0,0.395}, ['mod'] = {0,0}, ['listVariables'] = {'Know_Loc','Know_Nat','Know_Nob','Know_Pla','Know_Rel','Lin','Perce','Perfo1','Perfo2',
                                                                                                                'Perfe1','Perfe2','Ride','Sen_Mot','Sle_of_Han','Spellcra','Stealth','Surv','Swim','Use_Mag_Dev'},  ['color'] = 'Black', ['triggerUpdate'] = true, ['modSize'] = 100}
}

textOffsetList = { -- Text Tools that will be unlocked - for words

    --[[
    Format for each line:
    [Name] = {
                 x position of Text Tool, z position of Text Tool, ['size'] = font size,
                 (optional)['color'] = color of the Text Tool or true to be the player's color -defaults to 'Grey'-,
             }
    --]]

    ['Character_Name']  = { 10.39529,-6.12156, ['size'] = 30, ['color'] = true},
    ['Alighnment']      = { 7.85529,-6.12156, ['size'] = 25, ['color'] = 'Black'},
    ['Player']          = { 5.13529,-6.12156, ['size'] = 25, ['color'] = 'Black'},
    ['CHAclass_LVL']    = { 9.76529,-5.12156, ['size'] = 25, ['color'] = 'Black'},
    ['Deity']           = { 5.91529,-5.12156, ['size'] = 25, ['color'] = 'Black'},
    ['Homeland']        = { 3.97529,-5.12156, ['size'] = 25, ['color'] = 'Black'},
    ['Race']            = { 11.03529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Size']            = { 9.38529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Gender']          = { 8.38529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Age']             = { 7.563529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Hight']           = { 6.59529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Weight']          = { 5.50529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Hair']            = { 4.48529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['Eyes']            = { 3.57529,-4.17156, ['size'] = 25, ['color'] = 'Black'},
    ['HP_Total']        = { 10.34529,-3.25156, ['size'] = 25, ['color'] = 'Black'},
    ['EXP']             = { 9.32529,-6.89156, ['size'] = 25, ['color'] = 'Black'},
    ['EXP_Next_LVL']    = { 6.02529,-6.89156, ['size'] = 25, ['color'] = 'Black'},
    ['Profession1']    = { 8.72529,3.95156, ['size'] = 25, ['color'] = 'Black'},
    ['Profession2']    = { 8.72529,4.34156, ['size'] = 25, ['color'] = 'Black'}

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
    ['Tab_1'] = { -1.5,-7.1, ['text'] = 'Combat',    ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Black', ['alwaysVisible'] = true},
    ['Tab_2'] = { -4,-7.1,   ['text'] = 'Spellbook', ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Black', ['alwaysVisible'] = true},
    ['Tab_3'] = { -6,-7.1,   ['text'] = 'Bio',       ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Black', ['alwaysVisible'] = true},
    ['Tab_4'] = { -8,-7.1,   ['text'] = '[Notes]',   ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Black',   ['alwaysVisible'] = true},
    ['Tab_5'] = { 0.5,-7.1,   ['text'] = 'Items',   ['size'] = 30, ['mod'] = {0,0.18},  ['modSize'] = 450, ['color']='Black',   ['alwaysVisible'] = true}
}

function calculateCharacterSheetValues(color) -- (optional) Your chance to script automation for your character sheet, for advanced LUA users
    local char = getObjectFromGUID('CHAR') -- This is where all of your player's sheet data will be stored after it's processed.
    color = color[1] -- This is the color of the player who triggered this calculate function
    -- char.getTable('CharacterJournals')[color] is the journal of the player who triggered this calculate function. It contains all of the variables for your sheet.
    -- char.getTable('playerInformation')[color][key] is the table containing the text tool objects where 'key' is the name of the text tool, e.g., 'Character_Name'
    -- See https://github.com/Indimeco/QRPG/blob/master/D%26D%205e%20Character%20Sheet%20Source for usage examples.

    -- Your code goes below this line
end

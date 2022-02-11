#!-----------------------------------------------
#!   MIT (c) Cheva 2021-2022
#!   MIT (c) NeverSink forever
#!-----------------------------------------------

#------------------------------------------------
#   Show Duelist A1 [NochSchneller build] v0.1
#------------------------------------------------

#  @todo исключить всё кроме одноручн.мечей, брони, шапок, обуви, перчей

Show # 
	ItemLevel <= 16
	Rarity <= Normal
	LinkedSockets 3
	SocketGroup "GGB"
	SetFontSize 60
	SetTextColor 0 0 0 255
	SetBorderColor 255 0 255 255
	SetBackgroundColor 180 255 180 255
	MinimapIcon 1 White  UpsideDownHouse 

Show # 
	ItemLevel <= 16
	Rarity <= Normal
	LinkedSockets 3
	SocketGroup "GGR"
	SetFontSize 60
	SetTextColor 0 0 0 255
	SetBorderColor 255 0 255 255
	SetBackgroundColor 180 255 180 255
	MinimapIcon 1 White  UpsideDownHouse 

Show # 
	ItemLevel <= 16
	Rarity <= Normal
	LinkedSockets 3
	SocketGroup "GRR"
	SetFontSize 60
	SetTextColor 0 0 0 255
	SetBorderColor 255 0 255 255
	SetBackgroundColor 180 255 180 255
	MinimapIcon 1 White  UpsideDownHouse 

Show # 
	ItemLevel <= 16
	Rarity <= Normal
	LinkedSockets 3
	SocketGroup "GGG"
	SetFontSize 60
	SetTextColor 0 0 0 255
	SetBorderColor 255 0 255 255
	SetBackgroundColor 180 255 180 255
	MinimapIcon 1 White  UpsideDownHouse 

#===============================================================================================================
# NeverSink's Indepth Loot Filter - for Path of Exile
#===============================================================================================================
# VERSION:  7.7
# TYPE:     1-REGULAR
# STYLE:    NORMAL
# AUTHOR:   NeverSink
# BUILDNOTES: Filter generated with NeverSink's FilterpolishZ
#
#------------------------------------
# LINKS TO LATEST VERSION AND FILTER EDITOR
#------------------------------------
#
# EDIT/CUSTOMIZE FILTER ON: 	http://www.FilterBlade.xyz
# GET THE LATEST VERSION ON: 	http://www.FilterBlade.xyz or https://github.com/NeverSinkDev/NeverSink-Filter
# POE FORUM THREAD: 			https://goo.gl/oQn4EN
#
#------------------------------------
# SUPPORT THE DEVELOPMENT:
#------------------------------------
#
# SUPPORT ME ON PATREON: 		https://www.patreon.com/Neversink
# SUPPORT THE FILTERBLADE TEAM: http://www.filterblade.xyz/About
#
#------------------------------------
# INSTALLATION / UPDATE :
#------------------------------------
#
# 0) It's recommended to check for updates once a month or at least before new leagues, to receive economy finetuning and new features!
# 1) Paste this file into the following folder: %userprofile%/Documents/My Games/Path of Exile
# 2) INGAME: Escape -> Options -> UI -> Scroll down -> Select the filter from the Dropdown box
#
#------------------------------------
# CONTACT - if you want to get notifications about updates or just get in touch:
#------------------------------------
# PLEASE READ THE FAQ ON https://goo.gl/oQn4EN BEFORE ASKING QUESTIONS
#
# TWITTER: @NeverSinkGaming
# REDDIT:  NeverSinkDev
# GITHUB:  NeverSinkDev
# EMAIL :  NeverSinkGaming-at-gmail.com

#===============================================================================================================
# [WELCOME] TABLE OF CONTENTS + QUICKJUMP TABLE
#===============================================================================================================
#
# [[0100]] OVERRIDE AREA 1 - Override ALL rules here
# [[0200]] 6 LINKS
# [[0300]] INFLUENCE EXCEPTIONS
# [[0400]] INFLUENCED MAPS
# [[0500]] Influenced Item Tiering: Crusader
#   [0501] Layer - T1 - ECONOMY
#   [0502] Layer - T2 - ECONOMY
# [[0600]] Influenced Item Tiering: Hunter
#   [0601] Layer - T1 - ECONOMY
#   [0602] Layer - T2 - ECONOMY
# [[0700]] Influenced Item Tiering: Warlord
#   [0701] Layer - T1 - ECONOMY
#   [0702] Layer - T2 - ECONOMY
# [[0800]] Influenced Item Tiering: Redeemer
#   [0801] Layer - T1 - ECONOMY
#   [0802] Layer - T2 - ECONOMY
# [[0900]] Influenced Item Tiering: Shaper
#   [0901] Layer - T1 - ECONOMY
#   [0902] Layer - T2 - ECONOMY
# [[1000]] Influenced Item Tiering: Elder
#   [1001] Item Layer - T1 - ECONOMY
#   [1002] Item Layer - T2 - ECONOMY
# [[1100]] Influenced Item Tiering: Remaining Tiers
#   [1101] Item Layer - T2 - Class Based Filtering
#   [1102] Item Layer - T3 - Rings for Exaled Shard recipes
#   [1103] Item Layer - T3 - REMAINING RULES
# [[1200]] Explicit Mod filtering - Rare
#   [1201] All Skill Gem Combinations
#   [1202] Rare Item Permutations
#   [1203] Weapons-Physical (Key: IPD)
#   [1204] The Suffix Abomination
#   [1205] Casters
#   [1206] General Resist Gear
#   [1207] Boots/Gloves
#   [1208] Boots
#   [1209] Gloves
#   [1210] Helmets
#   [1211] Shields
#   [1212] Body
#   [1213] Quiver
#   [1214] Belts
#   [1215] Rings
#   [1216] Amulets
#   [1217] Jewels
#   [1218] Buzzsaw Weapons
# [[1300]] 6Socketed and 5Linked Drops
# [[1400]] Explicit Mod Highlight - League Drops
#   [1401] Synthesis (removed)
#   [1402] Betrayal
#   [1403] Crafting mods
#   [1404] Delve
#   [1405] Bestiary
#   [1406] Incursion - Matatl - traps and movementspeed
#   [1407] Incursion - Body Armours - Guatelitzi
#   [1408] Incursion - Sumonner Weapons
#   [1409] Incursion - Caster Weapons
#   [1410] Incursion - Normal Weapons
#   [1411] Incursion - Rings, Amulets
#   [1412] Incursion - Gloves, Helmets
#   [1413] Incursion General
#   [1414] Warbands
#   [1415] Enchanted Items
# [[1500]] Explicit Mod Highlight - Magic
# [[1600]] Talisman
# [[1700]] Exotic Item Types
# [[1800]] Jewels
# [[1900]] Normal/Magic Crafting Bases
#   [1901] Extreme Value ILVL 86 Rules
#   [1902] 86+ Endgame crafting rules
#   [1903] 84+ Endgame crafting rules
#   [1904] Level-Independent Highlight
# [[2000]] Chancing Section
# [[2100]] Low Value Recipes
#   [2101] Chromatic recipe items ("RGB Recipe")
#   [2102] FLASKS (Endgame rules)
#   [2103] Chisel recipe items
#   [2104] Animate Weapon script - deactivated by default
# [[2200]] Low Strictness Sections
#   [2201] Endgame-start 4-links
#   [2202] 60+ Crafting rules for 60++ trinkets
#   [2203] Low Strictness Magic/Normal Trinkets
# [[2300]] HIDE LAYER 1 - MAGIC AND NORMAL ITEMS
# [[2400]] OVERRIDE AREA 2 - Override the default rare rulesets here
# [[2500]] RARE ITEMS - SPECIAL BASES
# [[2600]] RARE ITEMS - LEVEL 86 Crafting
# [[2700]] RARE ITEMS - TRINKETS (ENDGAME)
#   [2701] Breach Rings Exceptions
#   [2702] Rare trinkets
# [[2800]] RARE ITEMS - WEAPONS AND ARMORS (ENDGAME)
#   [2801] T1 rare items
#   [2802] T2 rare items
#   [2803] Other Conditions
#   [2804] 1H Rune Dagger
#   [2805] 1H Daggers
#   [2806] 1H Claws
#   [2807] 1H Wands
#   [2808] 1H Foils
#   [2809] 1H Swords
#   [2810] 1H Maces
#   [2811] 1H Axes
#   [2812] 1H Sceptres
#   [2813] Warstaves
#   [2814] 2H Staves
#   [2815] 2H Swords, Axes, Maces
#   [2816] 2H Bows
#   [2817] AR: Gloves, Boots, Helmets
#   [2818] AR: Body Armors
#   [2819] OH: Shields
#   [2820] OH: Quivers
# [[2900]] HIDE LAYER 2 - RARE ITEMS (65+ ONLY FOR NON-REGULAR VERSIONS)
# [[3000]] OVERRIDE AREA 3 - Override Map, Gem and Flask drops here
# [[3100]] Gems
#   [3101] Awakened Gems
#   [3102] Exceptional Gems
#   [3103] Special Gems
#   [3104] High Tier Gems
#   [3105] Quality Gems
#   [3106] Leveled Gems
#   [3107] Leveling Rules
#   [3108] Other gems
# [[3200]] UTILITY FLASKS (Levelling Rules)
# [[3300]] HIDE LAYER 3: Random Endgame Flasks
# [[3400]] Maps, fragments and labyrinth items
#   [3401] Unique Maps
#   [3402] Labyrinth items, Offerings
#   [3403] Blighted maps
#   [3404] Top tier maps (T16)
#   [3405] High tier maps(T11-15)
#   [3406] Mid tier maps (T6-10)
#   [3407] Low tier maps (T1-T5)
# [[3500]] Misc Map Items (relic keys)
# [[3600]] Fragments
#   [3601] Scarabs
#   [3602] Regular Fragment Tiering
# [[3700]] Currency - Exceptions - Stacked Currency
# [[3800]] Currency - Exceptions - Leveling Currencies
# [[3900]] Currency - PART 1 - Common currency
# [[4000]] Currency - PART 2 - Rare currency
#   [4001] Regular Rare Currency
#   [4002] Incursion Currency
#   [4003] Delve Currency - Resonators
#   [4004] Delve Currency - Fossil
#   [4005] Metamorph Currency Catalysts
#   [4006] Top Currency
#   [4007] Oil Tier List
#   [4008] Essence Tier List
#   [4009] Perandus
#   [4010] Legion
#   [4011] Incubator
#   [4012] Breach
#   [4013] Others
# [[4100]] Prophecies
# [[4200]] Divination cards (yes the strange sorting is intended)
#   [4201] Exceptions to prevent ident. mistakes
#   [4202] T1 - Top tier cards
#   [4203] T2 - Great cards
#   [4204] T3 - Decent cards
#   [4205] Special - Special Currency Cards
#   [4206] T5 - Format trash tier cards... before
#   [4207] T4 - ...showing the remaining cards
# [[4300]] Currency - PART 4 - remaining items
# [[4400]] Metamorph Items
# [[4500]] Uniques!
#   [4501] Exceptions
#   [4502] Harbinger - Pieces
#   [4503] Tier 1 uniques
#   [4504] Double Corrupted Uniques
#   [4505] Tier 2 uniques
#   [4506] Multi-Unique bases.
#   [4507] Early Game Predictions
#   [4508] Special Unique Searches
#   [4509] Prophecy-Material Uniques
#   [4510] Random Uniques
# [[4600]] Quest Items and Event Items
# [[4700]] OVERRIDE AREA 4 - Insert your custom Leveling adjustments here
# [[4800]] Leveling - Flasks
#   [4801] Hide outdated flasks
#   [4802] Hybrid flasks (normal)
#   [4803] Life Flasks - Normal (Kudos to Antnee)
#   [4804] Mana Flasks - Magic (Kudos to Antnee)
#   [4805] Show remaining flasks
# [[4900]] Leveling - Merged Rules
# [[5000]] Leveling - RGB Recipes
# [[5100]] Leveling - RARES
#   [5101] Leveling rares - specific items
#   [5102] Leveling rares - Armors
#   [5103] Leveling rares - Caster
#   [5104] Leveling rares - Melee Weapons
#   [5105] Leveling rares - Ranged
#   [5106] Leveling rares - Quivers
#   [5107] Leveling rares - remaining rules
# [[5200]] Leveling - Useful items
#   [5201] Linked gear - 4links
#   [5202] Linked gear - 3links
#   [5203] Act1
#   [5204] Act 2+3
#   [5205] Act 4+5+6
#   [5206] Optional Recipes
#   [5207] 20% quality items for those strange people who want them
# [[5300]] Leveling - natural weapon progression
#   [5301] Quivers - Progression
#   [5302] Progression - Part 1 1-11
#   [5303] Progression - Part 2 11-26
#   [5304] Progression - Part 3 26-65
# [[5400]] Leveling - misc normal items
#   [5401] Normal items - 3-Socketed Items
#   [5402] Normal items - First 4-8 levels - useful items
#   [5403] Vendor Normal items - Until level 3 (Remaining)
# [[5500]] Leveling - misc magic items
#   [5501] Vendor Magic items - until 3
#   [5502] Vendor Magic items - until 16
#   [5503] Vendor Magic items - Jewellery
#   [5504] Vendor Magic items - Until 24
# [[5600]] HIDE LAYER 5 - Remaining Items
# [[5700]] CATCHALL - if you see pink items - update or revert your changes! This should not be happening!
# [[5800]] Special thanks to!

#===============================================================================================================
# [[0100]] OVERRIDE AREA 1 - Override ALL rules here
#===============================================================================================================

#===============================================================================================================
# [[0200]] 6 LINKS
#===============================================================================================================

Show 
	Corrupted False
	LinkedSockets 6
	Rarity <= Rare
	Class "Body Armour"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show 
	LinkedSockets 6
	Rarity <= Rare
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Hexagon

#===============================================================================================================
# [[0300]] INFLUENCE EXCEPTIONS
#===============================================================================================================

Show 
	HasInfluence Crusader Elder Hunter Redeemer Shaper Warlord
	Rarity <= Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#===============================================================================================================
# [[0400]] INFLUENCED MAPS
#===============================================================================================================

Show 
	HasInfluence Shaper
	Class "Maps"
	SetFontSize 45
	SetTextColor 100 0 122 255              # TEXTCOLOR:	 High Map
	SetBorderColor 100 0 255 255            # BORDERCOLOR:	 T0 Map
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Square

Show 
	HasInfluence Elder
	Class "Maps"
	SetFontSize 45
	SetTextColor 100 0 122 255              # TEXTCOLOR:	 High Map
	SetBorderColor 100 0 255 255            # BORDERCOLOR:	 T0 Map
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Square

#===============================================================================================================
# [[0500]] Influenced Item Tiering: Crusader
#===============================================================================================================

#------------------------------------
#   [0501] Layer - T1 - ECONOMY
#------------------------------------

Show # $tier->t1-1 $type->rare->crusader
	HasInfluence Crusader
	ItemLevel >= 82
	Rarity <= Rare
	BaseType "Crystal Belt" "Prismatic Ring" "Spiked Gloves" "Stygian Vise" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-2 $type->rare->crusader
	HasInfluence Crusader
	ItemLevel >= 84
	Rarity <= Rare
	BaseType "Marble Amulet" "Opal Wand" "Titanium Spirit Shield"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-3 $type->rare->crusader
	HasInfluence Crusader
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Ambusher" "Assassin's Garb" "Astral Plate" "Champion Kite Shield" "Convoking Wand" "Crystal Sceptre" "Engraved Wand" "Fingerless Silk Gloves" "Gavel" "Gladiator Plate" "Harmonic Spirit Shield" "Heathen Wand" "Imperial Buckler" "Imperial Claw" "Occultist's Vestment" "Pinnacle Tower Shield" "Platinum Kris" "Sorcerer Boots" "Steel Ring" "Supreme Spiked Shield" "Two-Toned Boots" "Vaal Regalia" "Vaal Spirit Shield"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#------------------------------------
#   [0502] Layer - T2 - ECONOMY
#------------------------------------

Show # $tier->t2-1 $type->rare->crusader
	HasInfluence Crusader
	ItemLevel >= 80
	Rarity <= Rare
	BaseType "Agate Amulet" "Amber Amulet" "Blue Pearl Amulet" "Bone Circlet" "Bone Helmet" "Bronze Plate" "Butcher Axe" "Cerulean Ring" "Citrine Amulet" "Colossal Tower Shield" "Crystal Belt" "Ezomyte Axe" "Field Lamellar" "Fingerless Silk Gloves" "Gladiator Helmet" "Gripped Gloves" "Imperial Buckler" "Imperial Claw" "Lacquered Buckler" "Leather Belt" "Marble Amulet" "Moonstone Ring" "Onyx Amulet" "Opal Ring" "Pagan Wand" "Pinnacle Tower Shield" "Prismatic Ring" "Spiked Gloves" "Spiny Round Shield" "Stygian Vise" "Titanium Spirit Shield" "Two-Toned Boots" "Unset Ring" "Vaal Buckler" "Vaal Spirit Shield" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2-2 $type->rare->crusader
	HasInfluence Crusader
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Ambusher" "Ancient Greaves" "Ancient Spirit Shield" "Archon Kite Shield" "Assassin Bow" "Assassin's Garb" "Astral Plate" "Battle Buckler" "Battle Lamellar" "Battle Plate" "Battle Sword" "Blood Raiment" "Bronze Tower Shield" "Cardinal Round Shield" "Carnal Armour" "Chain Hauberk" "Champion Kite Shield" "Chiming Spirit Shield" "Clasped Mitts" "Colosseum Plate" "Commander's Brigandine" "Conquest Chainmail" "Convoking Wand" "Coral Amulet" "Coronal Leather" "Corrugated Buckler" "Crimson Raiment" "Crusader Buckler" "Crusader Helmet" "Crusader Plate" "Crypt Armour" "Crystal Sceptre" "Crystal Wand" "Cutthroat's Garb" "Desert Brigandine" "Destiny Leather" "Destroyer Regalia" "Devout Chainmail" "Dragonscale Doublet" "Eclipse Staff" "Elegant Ringmail" "Elegant Round Shield" "Embroidered Gloves" "Engraved Greatsword" "Engraved Wand" "Estoc" "Eternal Sword" "Exquisite Blade" "Exquisite Leather" "Eye Gouger" "Ezomyte Burgonet" "Ezomyte Dagger" "Ezomyte Tower Shield" "Flanged Mace" "Fleshripper" "Fossilised Spirit Shield" "Frontier Leather" "Full Dragonscale" "Full Wyrmscale" "Gavel" "Gemini Claw" "General's Brigandine" "Girded Tower Shield" "Gladiator Plate" "Gladius" "Glorious Plate" "Golden Plate" "Gouger" "Great Mallet" "Grinning Fetish" "Harmonic Spirit Shield" "Harpy Rapier" "Heathen Wand" "Hellion's Paw" "Hubris Circlet" "Hussar Brigandine" "Imbued Wand" "Imperial Bow" "Imperial Skean" "Ivory Spirit Shield" "Jade Amulet" "Jasper Axe" "Jewelled Foil" "Judgement Staff" "Lacquered Garb" "Lapis Amulet" "Legion Hammer" "Legion Sword" "Lion Pelt" "Lithe Blade" "Loricated Ringmail" "Maelstr" "Majestic Plate" "Mirrored Spiked Shield" "Mosaic Kite Shield" "Murder Boots" "Necromancer Silks" "Nightmare Bascinet" "Nubuck Boots" "Nubuck Gloves" "Occultist's Vestment" "Ochre Sceptre" "Opal Sceptre" "Opal Wand" "Ornate Mace" "Pecoraro" "Piledriver" "Plated Maul" "Platinum Kris" "Prehistoric Claw" "Profane Wand" "Prophecy Wand" "Ritual Sceptre" "Riveted Gloves" "Ruby Ring" "Sadist Garb" "Saintly Chainmail" "Saint's Hauberk" "Sambar Sceptre" "Satin Gloves" "Savant's Robe" "Sekhem" "Sentinel Jacket" "Serpent Wand" "Serpentine Staff" "Serpentscale Boots" "Serpentscale Gauntlets" "Sharkskin Tunic" "Silken Hood" "Silken Wrap" "Sleek Coat" "Sorcerer Boots" "Sorcerer Gloves" "Sovereign Spiked Shield" "Spidersilk Robe" "Spine Bow" "Spiraled Foil" "Stealth Gloves" "Steel Kite Shield" "Steel Ring" "Steelhead" "Steelwood Bow" "Sun Plate" "Supreme Spiked Shield" "Talon Axe" "Teak Round Shield" "Tempered Foil" "Terror Maul" "Thorium Spirit Shield" "Throat Stabber" "Titan Gauntlets" "Titan Greaves" "Tornado Wand" "Trisula" "Triumphant Lamellar" "Turquoise Amulet" "Twilight Blade" "Twin Claw" "Two-Stone Ring" "Vaal Gauntlets" "Vaal Greatsword" "Vaal Rapier" "Vaal Regalia" "Vanguard Belt" "Varnished Coat" "Void Sceptre" "War Axe" "Widowsilk Robe" "Wraith Axe" "Wrist Chopper" "Wyrmbone Rapier" "Zealot Boots" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#===============================================================================================================
# [[0600]] Influenced Item Tiering: Hunter
#===============================================================================================================

#------------------------------------
#   [0601] Layer - T1 - ECONOMY
#------------------------------------

Show # $tier->t1-1 $type->rare->hunter
	HasInfluence Hunter
	ItemLevel >= 82
	Rarity <= Rare
	BaseType "Amber Amulet" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Sorcerer Boots" "Spiked Gloves" "Two-Toned Boots"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-2 $type->rare->hunter
	HasInfluence Hunter
	ItemLevel >= 84
	Rarity <= Rare
	BaseType "Astral Plate" "Sorcerer Gloves"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-3 $type->rare->hunter
	HasInfluence Hunter
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Agate Amulet" "Ambusher" "Ancient Greaves" "Antique Greaves" "Arcanist Gloves" "Arcanist Slippers" "Assassin's Boots" "Assassin's Garb" "Blue Pearl Amulet" "Bone Helmet" "Carnal Boots" "Champion Kite Shield" "Citrine Amulet" "Colossal Tower Shield" "Conjurer Boots" "Crusader Boots" "Crusader Buckler" "Dragonscale Boots" "Ebony Tower Shield" "Ezomyte Tower Shield" "Faun's Horn" "Goliath Greaves" "Harmonic Spirit Shield" "Heavy Belt" "Hubris Circlet" "Hydrascale Boots" "Imperial Claw" "Legion Boots" "Legion Sword" "Murder Boots" "Onyx Amulet" "Pagan Wand" "Piledriver" "Satin Slippers" "Serpentscale Boots" "Shackled Boots" "Shadow Sceptre" "Shagreen Boots" "Sharkskin Boots" "Slink Boots" "Slink Gloves" "Stealth Boots" "Steelscale Boots" "Supreme Spiked Shield" "Titan Gauntlets" "Titan Greaves" "Titanium Spirit Shield" "Vaal Greaves" "Vaal Regalia" "Vaal Spirit Shield" "Wyrmscale Boots" "Zealot Gloves"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#------------------------------------
#   [0602] Layer - T2 - ECONOMY
#------------------------------------

Show # $tier->t2-1 $type->rare->hunter
	HasInfluence Hunter
	ItemLevel >= 80
	Rarity <= Rare
	BaseType "Agate Amulet" "Amber Amulet" "Ambusher" "Antique Greaves" "Arcanist Gloves" "Arcanist Slippers" "Assassin's Boots" "Astral Plate" "Blue Pearl Amulet" "Broadhead Arrow Quiver" "Bronzescale Boots" "Cardinal Round Shield" "Cerulean Ring" "Champion Kite Shield" "Citrine Amulet" "Coral Amulet" "Crusader Boots" "Crystal Belt" "Dragonscale Boots" "Ebony Tower Shield" "Ezomyte Axe" "Ezomyte Tower Shield" "Fingerless Silk Gloves" "Gold Amulet" "Gripped Gloves" "Heathen Wand" "Heavy Belt" "Hubris Circlet" "Hydrascale Boots" "Imperial Claw" "Jade Amulet" "Lapis Amulet" "Leather Belt" "Legion Boots" "Marble Amulet" "Mesh Boots" "Military Staff" "Murder Boots" "Nubuck Boots" "Onyx Amulet" "Opal Ring" "Pagan Wand" "Paua Amulet" "Piledriver" "Reinforced Greaves" "Royal Sceptre" "Sage Wand" "Satin Slippers" "Serrated Arrow Quiver" "Shackled Boots" "Slink Boots" "Sorcerer Boots" "Sorcerer Gloves" "Spiked Gloves" "Stag Sceptre" "Stealth Boots" "Stealth Gloves" "Steel Gauntlets" "Steel Ring" "Steelscale Boots" "Stygian Vise" "Throat Stabber" "Titan Gauntlets" "Titan Greaves" "Titanium Spirit Shield" "Turquoise Amulet" "Two-Toned Boots" "Vaal Buckler" "Vaal Greaves" "Vermillion Ring" "Waxed Garb" "Woodful Staff"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2-2 $type->rare->hunter
	HasInfluence Hunter
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Abyssal Sceptre" "Ambush Boots" "Ambush Mitts" "Ancient Gauntlets" "Ancient Greaves" "Antique Gauntlets" "Archon Kite Shield" "Assassin's Garb" "Assassin's Mitts" "Aventail Helmet" "Baroque Round Shield" "Battle Hammer" "Battle Plate" "Battle Sword" "Behemoth Mace" "Bone Helmet" "Branded Kite Shield" "Brass Spirit Shield" "Burnished Foil" "Butcher Axe" "Carnal Boots" "Carnal Mitts" "Carnal Sceptre" "Ceremonial Axe" "Chiming Spirit Shield" "Colossal Tower Shield" "Colosseum Plate" "Compound Spiked Shield" "Conjurer Boots" "Conjurer Gloves" "Convoking Wand" "Coronal Leather" "Coronal Maul" "Crimson Round Shield" "Crusader Buckler" "Crusader Chainmail" "Crusader Gloves" "Crystal Sceptre" "Desert Brigandine" "Dragon Mace" "Dragonscale Gauntlets" "Eclipse Staff" "Eelskin Boots" "Eelskin Gloves" "Eelskin Tunic" "Elder Sword" "Elegant Foil" "Elegant Ringmail" "Elegant Round Shield" "Embroidered Gloves" "Engraved Wand" "Etched Kite Shield" "Eternal Burgonet" "Eternal Sword" "Exquisite Blade" "Exquisite Leather" "Ezomyte Burgonet" "Ezomyte Spiked Shield" "Ezomyte Staff" "Faun's Horn" "Fleshripper" "Fossilised Spirit Shield" "Frontier Leather" "Full Dragonscale" "Gavel" "Gemini Claw" "Girded Tower Shield" "Gladius" "Glorious Plate" "Golden Buckler" "Golden Mask" "Goliath Gauntlets" "Goliath Greaves" "Grappler" "Grinning Fetish" "Grove Bow" "Gut Ripper" "Harmonic Spirit Shield" "Highborn Bow" "Highborn Staff" "Hussar Brigandine" "Hydrascale Gauntlets" "Imbued Wand" "Imperial Bow" "Imperial Buckler" "Imperial Skean" "Imperial Staff" "Iron Ring" "Ivory Spirit Shield" "Jasper Chopper" "Jewelled Foil" "Lacewood Spirit Shield" "Legion Gloves" "Legion Sword" "Lion Pelt" "Lion Sword" "Lithe Blade" "Lunaris Circlet" "Maelstr" "Mahogany Tower Shield" "Maraketh Bow" "Mesh Gloves" "Mirrored Spiked Shield" "Mosaic Kite Shield" "Murder Mitts" "Nubuck Gloves" "Occultist's Vestment" "Opal Sceptre" "Opal Wand" "Ornate Ringmail" "Pecoraro" "Pinnacle Tower Shield" "Profane Wand" "Prophecy Wand" "Raven Mask" "Reaver Helmet" "Riveted Boots" "Royal Axe" "Royal Burgonet" "Sadist Garb" "Saintly Chainmail" "Saint's Hauberk" "Samite Gloves" "Samite Slippers" "Satin Gloves" "Serpent Wand" "Serpentscale Boots" "Serpentscale Gauntlets" "Shadow Axe" "Shadow Sceptre" "Shagreen Boots" "Shagreen Gloves" "Sharkskin Boots" "Sharkskin Gloves" "Silken Hood" "Silken Wrap" "Sleek Coat" "Slink Gloves" "Soldier Boots" "Soldier Gloves" "Soldier's Brigandine" "Spiked Round Shield" "Steelhead" "Steelscale Gauntlets" "Steelwood Bow" "Sun Leather" "Sundering Axe" "Supreme Spiked Shield" "Thicket Bow" "Thorium Spirit Shield" "Tomahawk" "Trapper Boots" "Trapper Mitts" "Twin Claw" "Two-Stone Ring" "Unset Ring" "Vaal Gauntlets" "Vaal Greatsword" "Vaal Hatchet" "Vaal Mask" "Vaal Regalia" "Vaal Spirit Shield" "Vanguard Belt" "Void Sceptre" "War Axe" "Wyrmbone Rapier" "Wyrmscale Boots" "Wyrmscale Doublet" "Wyrmscale Gauntlets" "Zealot Boots" "Zealot Gloves" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#===============================================================================================================
# [[0700]] Influenced Item Tiering: Warlord
#===============================================================================================================

#------------------------------------
#   [0701] Layer - T1 - ECONOMY
#------------------------------------

Show # $tier->t1-1 $type->rare->warlord
	HasInfluence Warlord
	ItemLevel >= 82
	Rarity <= Rare
	BaseType "Amber Amulet" "Fingerless Silk Gloves" "Gripped Gloves" "Jewelled Foil" "Marble Amulet" "Opal Ring" "Prismatic Ring" "Spiraled Foil" "Steel Ring"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-2 $type->rare->warlord
	HasInfluence Warlord
	ItemLevel >= 84
	Rarity <= Rare
	BaseType "Horned Sceptre" "Spiraled Wand"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-3 $type->rare->warlord
	HasInfluence Warlord
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Ancient Spirit Shield" "Astral Plate" "Blue Pearl Amulet" "Citrine Amulet" "Colossal Tower Shield" "Courtesan Sword" "Crusader Buckler" "Crystal Belt" "Engraved Wand" "Eternal Burgonet" "Hubris Circlet" "Lion Pelt" "Opal Sceptre" "Opal Wand" "Piledriver" "Royal Burgonet" "Spiny Round Shield" "Steelhead" "Steelscale Boots" "Titan Greaves" "Two-Toned Boots"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#------------------------------------
#   [0702] Layer - T2 - ECONOMY
#------------------------------------

Show # $tier->t2-1 $type->rare->warlord
	HasInfluence Warlord
	ItemLevel >= 80
	Rarity <= Rare
	BaseType "Agate Amulet" "Amber Amulet" "Angelic Kite Shield" "Assassin Bow" "Astral Plate" "Blue Pearl Amulet" "Cerulean Ring" "Citrine Amulet" "Convoking Wand" "Crusader Buckler" "Ebony Tower Shield" "Ezomyte Axe" "Ezomyte Burgonet" "Ezomyte Spiked Shield" "Fingerless Silk Gloves" "Gripped Gloves" "Hubris Circlet" "Imperial Bow" "Jade Amulet" "Jewelled Foil" "Lapis Amulet" "Leather Belt" "Marble Amulet" "Onyx Amulet" "Opal Ring" "Opal Sceptre" "Prismatic Ring" "Sapphire Ring" "Silk Gloves" "Spiked Gloves" "Spiraled Foil" "Steel Ring" "Steelscale Boots" "Stygian Vise" "Topaz Ring" "Turquoise Amulet" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2-2 $type->rare->warlord
	HasInfluence Warlord
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Ancient Gauntlets" "Ancient Spirit Shield" "Antique Greaves" "Arcanist Gloves" "Arcanist Slippers" "Archon Kite Shield" "Battle Hammer" "Behemoth Mace" "Bone Armour" "Bone Helmet" "Bronze Tower Shield" "Cabalist Regalia" "Callous Mask" "Champion Kite Shield" "Chiming Spirit Shield" "Colossal Tower Shield" "Compound Spiked Shield" "Coral Amulet" "Coral Ring" "Courtesan Sword" "Crusader Boots" "Crusader Gloves" "Crystal Belt" "Crystal Sceptre" "Deicide Mask" "Diamond Ring" "Dragonscale Boots" "Dragoon Sword" "Dread Maul" "Eclipse Staff" "Elder Sword" "Elegant Ringmail" "Elegant Round Shield" "Embroidered Gloves" "Enameled Buckler" "Engraved Wand" "Estoc" "Eternal Burgonet" "Eternal Sword" "Exquisite Blade" "Exquisite Leather" "Eye Gouger" "Ezomyte Blade" "Ezomyte Staff" "Ezomyte Tower Shield" "Field Lamellar" "Flanged Mace" "Fleshripper" "Frontier Leather" "Gemini Claw" "General's Brigandine" "Girded Tower Shield" "Gladius" "Glorious Leather" "Gold Amulet" "Goliath Gauntlets" "Grove Bow" "Harmonic Spirit Shield" "Harpy Rapier" "Heathen Wand" "Hellion's Paw" "Horned Sceptre" "Imperial Claw" "Imperial Maul" "Iron Ring" "Karui Sceptre" "Laminated Kite Shield" "Lathi" "Lead Sceptre" "Legion Sword" "Lion Pelt" "Lunaris Circlet" "Maelstr" "Maraketh Bow" "Meatgrinder" "Mesh Gloves" "Military Staff" "Mind Cage" "Mirrored Spiked Shield" "Murder Boots" "Murder Mitts" "Nightmare Bascinet" "Nightmare Mace" "Occultist's Vestment" "Omen Wand" "Opal Wand" "Paua Amulet" "Pecoraro" "Pig-Faced Bascinet" "Piledriver" "Plated Maul" "Platinum Sceptre" "Poignard" "Profane Wand" "Prophecy Wand" "Prophet Crown" "Quilted Jacket" "Raven Mask" "Reaver Axe" "Riveted Gloves" "Royal Burgonet" "Runic Hatchet" "Sadist Garb" "Sai" "Sambar Sceptre" "Samite Gloves" "Sekhem" "Silken Wrap" "Sinner Tricorne" "Slink Gloves" "Sorcerer Boots" "Sorcerer Gloves" "Spike-Point Arrow Quiver" "Spine Bow" "Spiny Round Shield" "Spiraled Wand" "Stag Sceptre" "Stealth Boots" "Stealth Gloves" "Steelhead" "Steelwood Bow" "Supreme Spiked Shield" "Throat Stabber" "Titan Gauntlets" "Titan Greaves" "Trapper Mitts" "Twin Claw" "Two-Stone Ring" "Unset Ring" "Vaal Buckler" "Vaal Claw" "Vaal Gauntlets" "Vaal Greaves" "Vaal Mask" "Vaal Regalia" "Vaal Sceptre" "Vaal Spirit Shield" "Void Axe" "Void Sceptre" "Walnut Spirit Shield" "Wrist Chopper" "Zealot Gloves"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#===============================================================================================================
# [[0800]] Influenced Item Tiering: Redeemer
#===============================================================================================================

#------------------------------------
#   [0801] Layer - T1 - ECONOMY
#------------------------------------

Show # $tier->t1-1 $type->rare->redeemer
	HasInfluence Redeemer
	ItemLevel >= 82
	Rarity <= Rare
	BaseType "Gripped Gloves" "Prismatic Ring" "Stygian Vise" "Two-Toned Boots" "Unset Ring"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-2 $type->rare->redeemer
	HasInfluence Redeemer
	ItemLevel >= 84
	Rarity <= Rare
	BaseType "Fingerless Silk Gloves" "Ritual Sceptre"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-3 $type->rare->redeemer
	HasInfluence Redeemer
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Agate Amulet" "Ambusher" "Astral Plate" "Bone Helmet" "Cardinal Round Shield" "Cerulean Ring" "Colossal Tower Shield" "Dragon Mace" "Flanged Mace" "Imperial Claw" "Ironwood Buckler" "Ivory Spirit Shield" "Lathi" "Opal Wand" "Riveted Boots" "Slink Boots" "Sorcerer Boots" "Supreme Spiked Shield" "Titan Greaves" "Titanium Spirit Shield" "Vaal Greatsword" "Vaal Regalia" "Void Axe"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#------------------------------------
#   [0802] Layer - T2 - ECONOMY
#------------------------------------

Show # $tier->t2-1 $type->rare->redeemer
	HasInfluence Redeemer
	ItemLevel >= 80
	Rarity <= Rare
	BaseType "Agate Amulet" "Blue Pearl Amulet" "Bone Helmet" "Citrine Amulet" "Coral Amulet" "Crusader Boots" "Crusader Buckler" "Crystal Sceptre" "Deicide Mask" "Dragon Mace" "Elegant Ringmail" "Fingerless Silk Gloves" "Frontier Leather" "Gold Amulet" "Grinning Fetish" "Gripped Gloves" "Iron Gauntlets" "Jade Amulet" "Leather Belt" "Mesh Boots" "Nubuck Boots" "Occultist's Vestment" "Opal Ring" "Opal Wand" "Poignard" "Prismatic Ring" "Quartz Wand" "Ritual Sceptre" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Turquoise Amulet" "Two-Toned Boots" "Unset Ring" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2-2 $type->rare->redeemer
	HasInfluence Redeemer
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Amber Amulet" "Ambush Boots" "Ambusher" "Amethyst Ring" "Ancient Greaves" "Angelic Kite Shield" "Antique Greaves" "Archon Kite Shield" "Assassin Bow" "Assassin's Garb" "Astral Plate" "Auric Mace" "Battle Buckler" "Battle Plate" "Behemoth Mace" "Blood Sceptre" "Brass Spirit Shield" "Bronzescale Boots" "Burnished Foil" "Butcher Knife" "Cardinal Round Shield" "Cerulean Ring" "Champion Kite Shield" "Clasped Boots" "Colossal Tower Shield" "Compound Bow" "Conjurer Boots" "Conquest Chainmail" "Convoking Wand" "Coronal Maul" "Corrugated Buckler" "Crimson Raiment" "Crusader Chainmail" "Crusader Gloves" "Dragonscale Boots" "Ebony Tower Shield" "Eclipse Staff" "Eelskin Boots" "Eelskin Gloves" "Elder Sword" "Elegant Round Shield" "Enameled Buckler" "Engraved Wand" "Eternal Burgonet" "Eternal Sword" "Exquisite Blade" "Exquisite Leather" "Ezomyte Blade" "Ezomyte Burgonet" "Ezomyte Tower Shield" "Flanged Mace" "Fleshripper" "Fossilised Spirit Shield" "Girded Tower Shield" "Gladius" "Golden Buckler" "Goliath Greaves" "Grove Bow" "Harmonic Spirit Shield" "Headsman Axe" "Heathen Wand" "Horned Sceptre" "Hubris Circlet" "Hydrascale Boots" "Imbued Wand" "Imperial Bow" "Imperial Buckler" "Imperial Claw" "Imperial Maul" "Imperial Staff" "Infernal Axe" "Infernal Sword" "Ironwood Buckler" "Ivory Spirit Shield" "Jewelled Foil" "Jingling Spirit Shield" "Lacquered Garb" "Lapis Amulet" "Lathi" "Legion Hammer" "Lion Pelt" "Maelstr" "Military Staff" "Mind Cage" "Moonstone Ring" "Murder Boots" "Murder Mitts" "Nightmare Mace" "Onyx Amulet" "Paua Amulet" "Piledriver" "Pinnacle Tower Shield" "Profane Wand" "Prophecy Wand" "Prophet Crown" "Ranger Bow" "Raven Mask" "Reaver Axe" "Riveted Boots" "Royal Sceptre" "Ruby Ring" "Runic Hatchet" "Saint's Hauberk" "Sambar Sceptre" "Sapphire Ring" "Scholar Boots" "Secutor Helm" "Serpentscale Boots" "Serrated Foil" "Shadow Sceptre" "Shagreen Boots" "Silken Hood" "Sinner Tricorne" "Sleek Coat" "Slink Boots" "Solar Maul" "Soldier Boots" "Sorcerer Boots" "Sorcerer Gloves" "Sovereign Spiked Shield" "Sparkling Claw" "Stag Sceptre" "Stealth Boots" "Steel Gauntlets" "Steel Kite Shield" "Steelwood Bow" "Supreme Spiked Shield" "Talon Axe" "Teak Round Shield" "Terror Maul" "Titan Greaves" "Titanium Spirit Shield" "Tomahawk" "Tornado Wand" "Trapper Boots" "Trapper Mitts" "Two-Stone Ring" "Vaal Buckler" "Vaal Greatsword" "Vaal Greaves" "Vaal Hatchet" "Vaal Regalia" "Vaal Sceptre" "Vaal Spirit Shield" "Vanguard Belt" "Void Axe" "Void Sceptre" "Walnut Spirit Shield" "Wolf Pelt" "Wyrmbone Rapier" "Wyrmscale Boots" "Wyrmscale Doublet" "Zealot Boots" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#===============================================================================================================
# [[0900]] Influenced Item Tiering: Shaper
#===============================================================================================================

#------------------------------------
#   [0901] Layer - T1 - ECONOMY
#------------------------------------

Show # $tier->t1-1 $type->rare->shaper
	HasInfluence Shaper
	ItemLevel >= 82
	Rarity <= Rare
	BaseType "Crystal Belt" "Fingerless Silk Gloves" "Leather Belt" "Opal Ring" "Prismatic Ring" "Steel Ring" "Titanium Spirit Shield" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-2 $type->rare->shaper
	HasInfluence Shaper
	ItemLevel >= 84
	Rarity <= Rare
	BaseType "Gripped Gloves" "Hubris Circlet" "Two-Toned Boots"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-3 $type->rare->shaper
	HasInfluence Shaper
	ItemLevel >= 86
	Rarity <= Rare
	BaseType "Agate Amulet" "Amber Amulet" "Bone Helmet" "Citrine Amulet" "Colossal Tower Shield" "Eclipse Staff" "Ezomyte Staff" "Ezomyte Tower Shield" "Harmonic Spirit Shield" "Iron Sceptre" "Jade Amulet" "Lion Pelt" "Marble Amulet" "Onyx Amulet" "Opal Wand" "Sorcerer Boots" "Spiked Gloves" "Spike-Point Arrow Quiver" "Spine Bow" "Vaal Regalia"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#------------------------------------
#   [0902] Layer - T2 - ECONOMY
#------------------------------------

Show # $tier->t2-1 $type->rare->shaper
	HasInfluence Shaper
	ItemLevel >= 80
	Rarity <= Rare
	BaseType "Agate Amulet" "Amber Amulet" "Archon Kite Shield" "Blue Pearl Amulet" "Champion Kite Shield" "Citrine Amulet" "Crystal Belt" "Diamond Ring" "Exquisite Blade" "Ezomyte Tower Shield" "Fingerless Silk Gloves" "Fossilised Spirit Shield" "Goat's Horn" "Gripped Gloves" "Harmonic Spirit Shield" "Horned Sceptre" "Hubris Circlet" "Imperial Buckler" "Jewelled Foil" "Leather Belt" "Meatgrinder" "Mosaic Kite Shield" "Onyx Amulet" "Opal Ring" "Opal Wand" "Prismatic Ring" "Sambar Sceptre" "Sorcerer Boots" "Spike-Point Arrow Quiver" "Steel Ring" "Stygian Vise" "Titan Greaves" "Titanium Spirit Shield" "Topaz Ring" "Twin Claw" "Two-Stone Ring" "Two-Toned Boots" "Unset Ring" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2-2 $type->rare->shaper
	HasInfluence Shaper
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Amethyst Ring" "Angelic Kite Shield" "Arcanist Slippers" "Assassin Bow" "Astral Plate" "Battle Hammer" "Bone Helmet" "Brass Spirit Shield" "Bronzescale Gauntlets" "Ceremonial Kite Shield" "Cerulean Ring" "Clasped Mitts" "Colossal Tower Shield" "Compound Spiked Shield" "Convoking Wand" "Coral Amulet" "Coral Ring" "Ebony Tower Shield" "Eclipse Staff" "Enameled Buckler" "Engraved Wand" "Ezomyte Blade" "Ezomyte Staff" "Gilded Buckler" "Gold Amulet" "Golden Kris" "Grinning Fetish" "Highborn Bow" "Holy Chainmail" "Imbued Wand" "Imperial Bow" "Imperial Claw" "Iron Ring" "Iron Sceptre" "Ivory Bow" "Ivory Spirit Shield" "Jade Amulet" "Jingling Spirit Shield" "Lapis Amulet" "Lathi" "Lion Pelt" "Maelstr" "Maraketh Bow" "Marble Amulet" "Moonstone Ring" "Occultist's Vestment" "Opal Sceptre" "Painted Tower Shield" "Paua Amulet" "Pinnacle Tower Shield" "Platinum Kris" "Profane Wand" "Prophecy Wand" "Quartz Wand" "Reinforced Greaves" "Royal Bow" "Royal Burgonet" "Ruby Ring" "Sadist Garb" "Sage Wand" "Sapphire Ring" "Scholar Boots" "Shadow Sceptre" "Sharktooth Arrow Quiver" "Silken Hood" "Slink Boots" "Sorcerer Gloves" "Spiked Gloves" "Spine Bow" "Spiraled Wand" "Stag Sceptre" "Steel Gauntlets" "Steel Kite Shield" "Supreme Spiked Shield" "Thicket Bow" "Thorium Spirit Shield" "Tornado Wand" "Trisula" "Turquoise Amulet" "Vaal Axe" "Vaal Buckler" "Vaal Greatsword" "Vaal Mask" "Vaal Regalia" "Vaal Spirit Shield" "Vanguard Belt" "Void Sceptre" "Woodful Staff" "Wyrmscale Doublet" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#===============================================================================================================
# [[1000]] Influenced Item Tiering: Elder
#===============================================================================================================

#------------------------------------
#   [1001] Item Layer - T1 - ECONOMY
#------------------------------------

Show # $tier->t1-1 $type->rare->elder
	HasInfluence Elder
	ItemLevel >= 82
	Rarity <= Rare
	BaseType "Opal Ring" "Prismatic Ring" "Steel Ring" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-2 $type->rare->elder
	HasInfluence Elder
	ItemLevel >= 84
	Rarity <= Rare
	BaseType "Astral Plate" "Bone Helmet" "Fingerless Silk Gloves" "Iron Hat" "Spiked Gloves"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

Show # $tier->t1-3 $type->rare->elder
	HasInfluence Elder
	ItemLevel >= 86
	Rarity <= Rare
	BaseType "Assassin's Garb" "Colossal Tower Shield" "Crystal Belt" "Ezomyte Spiked Shield" "Ezomyte Tower Shield" "Faun's Horn" "Gripped Gloves" "Heavy Belt" "Hubris Circlet" "Marble Amulet" "Royal Burgonet" "Two-Toned Boots" "Vaal Regalia" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 50 130 165 255             # TEXTCOLOR:	 ShaperElder
	SetBorderColor 50 130 165 255           # BORDERCOLOR:	 Shaper T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Diamond

#------------------------------------
#   [1002] Item Layer - T2 - ECONOMY
#------------------------------------

Show # $tier->t2-1 $type->rare->elder
	HasInfluence Elder
	ItemLevel >= 80
	Rarity <= Rare
	BaseType "Astral Plate" "Blue Pearl Amulet" "Bone Helmet" "Citrine Amulet" "Close Helmet" "Colossal Tower Shield" "Coronal Maul" "Crystal Belt" "Deerskin Gloves" "Ezomyte Tower Shield" "Fingerless Silk Gloves" "Heavy Belt" "Iron Hat" "Lathi" "Marble Amulet" "Opal Ring" "Prismatic Ring" "Ritual Sceptre" "Spiked Gloves" "Stealth Gloves" "Steel Ring" "Stygian Vise" "Two-Stone Ring" "Varnished Coat" "Vermillion Ring" "Wrist Chopper" "Wyrm Mace"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2-2 $type->rare->elder
	HasInfluence Elder
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Agate Amulet" "Amber Amulet" "Amethyst Ring" "Arcanist Slippers" "Assassin's Garb" "Battle Buckler" "Brass Spirit Shield" "Ceremonial Kite Shield" "Cerulean Ring" "Champion Kite Shield" "Compound Bow" "Convoking Wand" "Coral Ring" "Deerskin Boots" "Diamond Ring" "Dragon Mace" "Dragonscale Boots" "Eclipse Staff" "Eternal Burgonet" "Eternal Sword" "Exquisite Blade" "Eye Gouger" "Ezomyte Burgonet" "Ezomyte Spiked Shield" "Ezomyte Staff" "Faun's Horn" "Fleshripper" "Frontier Leather" "Full Dragonscale" "Gladiator Plate" "Glorious Plate" "Great Helmet" "Great Mallet" "Gripped Gloves" "Harmonic Spirit Shield" "Hubris Circlet" "Hussar Brigandine" "Imperial Bow" "Imperial Claw" "Imperial Maul" "Infernal Sword" "Iron Gauntlets" "Jade Amulet" "Jewelled Foil" "Lacquered Buckler" "Lapis Amulet" "Leather Belt" "Maelstr" "Meatgrinder" "Midnight Blade" "Mind Cage" "Murder Boots" "Nubuck Gloves" "Onyx Amulet" "Ornate Ringmail" "Plated Greaves" "Platinum Sceptre" "Praetor Crown" "Prophecy Wand" "Prophet Crown" "Reinforced Tower Shield" "Royal Burgonet" "Ruby Ring" "Sage Wand" "Sapphire Ring" "Sekhem" "Serrated Arrow Quiver" "Shackled Boots" "Siege Axe" "Silken Wrap" "Slink Gloves" "Smallsword" "Solar Maul" "Solaris Circlet" "Sorcerer Boots" "Sorcerer Gloves" "Spiraled Foil" "Spiraled Wand" "Steelhead" "Steelscale Boots" "Steelscale Gauntlets" "Sun Plate" "Thief's Garb" "Timber Axe" "Titan Greaves" "Titanium Spirit Shield" "Tomahawk" "Topaz Ring" "Turquoise Amulet" "Twin Claw" "Two-Toned Boots" "Unset Ring" "Vaal Blade" "Vaal Greaves" "Vaal Regalia" "Visored Sallet" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#===============================================================================================================
# [[1100]] Influenced Item Tiering: Remaining Tiers
#===============================================================================================================

#------------------------------------
#   [1101] Item Layer - T2 - Class Based Filtering
#------------------------------------

Show # $tier->t2c $type->rare->newinfluences
	HasInfluence Crusader Elder Hunter Redeemer Shaper Warlord
	ItemLevel >= 84
	DropLevel > 55
	Rarity <= Rare
	Class "Boots" "Gloves" "Helmets" "Shields"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

Show # $tier->t2cc $type->rare->newinfluences
	HasInfluence Crusader Elder Hunter Redeemer Shaper Warlord
	ItemLevel >= 83
	Rarity <= Rare
	Class "Amulets" "Belts" "Rings"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 20 110 220           # BACKGROUND:	 ShaperElder T2
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Diamond

#------------------------------------
#   [1102] Item Layer - T3 - Rings for Exaled Shard recipes
#------------------------------------

Show # %D4 $tier->rest-trinkets $type->rare->influence
	HasInfluence Crusader Elder Hunter Redeemer Shaper Warlord
	Rarity <= Rare
	Class "Amulet" "Belts" "Ring"
	SetFontSize 45
	SetBorderColor 25 235 25 255            # BORDERCOLOR:	 Shaper Elder Ring
	SetBackgroundColor 50 130 165           # BACKGROUND:	 Shaper T3

#------------------------------------
#   [1103] Item Layer - T3 - REMAINING RULES
#------------------------------------

Show # $tier->rest $type->rare->newinfluence
	HasInfluence Crusader Hunter Redeemer Warlord
	Rarity <= Rare
	SetFontSize 45
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 50 130 165           # BACKGROUND:	 Shaper T3

Show # %H5 $tier->rest $type->rare->influence
	HasInfluence Elder Shaper
	Rarity <= Rare
	SetFontSize 45
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 50 130 165           # BACKGROUND:	 Shaper T3

#===============================================================================================================
# [[1200]] Explicit Mod filtering - Rare
#===============================================================================================================

#------------------------------------
#   [1201] All Skill Gem Combinations
#------------------------------------

Show # $type->expl->rare
	Corrupted False
	Identified True
	Class "Bow" "Staves"
	HasExplicitMod "Lava Conjurer's" "Splintermind's" "Tecton's" "Tempest Master's" "Winter Beckoner's"
	HasExplicitMod "Magister's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	Class "Rune Dagger" "Sceptres" "Wands"
	HasExplicitMod "Flame Shaper's" "Frost Singer's" "Lithomancer's" "Mad Lord's" "Thunderhand's"
	HasExplicitMod "Magister's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1202] Rare Item Permutations
#------------------------------------

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Bows" "Wands"
	HasExplicitMod "Bloodthirsty" "Cruel" "Merciless" "Tacati" "Tyrannical"
	HasExplicitMod "Annealed" "Flaring" "Razor-sharp" "Tempered"
	HasExplicitMod "of Ease" "of Mastery" "of Renown"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Bows" "Wands"
	HasExplicitMod "Merciless" "Tyrannical"
	HasExplicitMod "of Incision" "of Renown"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1203] Weapons-Physical (Key: IPD)
#------------------------------------

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	HasExplicitMod "Bloodthirsty" "Cruel" "Merciless" "Tacati" "Tyrannical"
	HasExplicitMod "Annealed" "Flaring" "Razor-sharp" "Tempered"
	HasExplicitMod "Champion's" "Conqueror's" "Dictator's" "Emperor's" "of Acclaim" "of Celebration" "of Destruction" "of Fame" "of Incision" "of Infamy" "of Penetrating" "of Renown" "of the Assassin"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	HasExplicitMod "Cruel" "Merciless" "Tacati" "Tyrannical"
	HasExplicitMod "Conqueror's" "Dictator's" "Emperor's" "Flaring" "Razor-sharp" "Tempered"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Rare
	HasExplicitMod "Merciless" "Tacati" "Tyrannical"
	HasExplicitMod "of Celebration" "of Infamy"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1204] The Suffix Abomination
#------------------------------------

Show # $type->expl->rare
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Bows" "Claws" "Daggers" "One Hand Swords" "Thrusting One Hand Swords" "Wands"
	HasExplicitMod "of Incision" "of Penetrating"
	HasExplicitMod "of Destruction" "of Ferocity" "of Fury"
	HasExplicitMod "of Celebration" "of Infamy"
	HasExplicitMod "Annealed" "Arcing" "Blasting" "Bloodthirsty" "Carbonising" "Champion's" "Conqueror's" "Cremating" "Cruel" "Crystalising" "Dictator's" "Discharging" "Electrocuting" "Emperor's" "Entombing" "Flaring" "Frozen" "Glaciated" "Incinerating" "Merciless" "Polar" "Razor-sharp" "Scorching" "Shocking" "Tacati" "Tempered" "Tyrannical" "Vapourising"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1205] Casters
#------------------------------------

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity Rare
	Class "Rune Dagger" "Sceptres"
	HasExplicitMod "of Destruction" "of Ferocity" "of Finesse" "of Ruin" "of Sortilege" "of Unmaking"
	HasExplicitMod "Flame Shaper's" "Frost Singer's" "Lithomancer's" "Mad Lord's" "Magister's" "Thunderhand's"
	HasExplicitMod "Cryomancer's" "Esh's" "Glyphic" "Ionising" "Matatl's" "Pyroclastic" "Runic" "Tacati" "Topotante's" "Tul's" "Xoph's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity Rare
	Class "Rune Dagger" "Sceptres"
	HasExplicitMod "of Celebration" "of Fame" "of Infamy"
	HasExplicitMod "of Arcing" "of Ashes" "of Calamity" "of Discharge" "of Finesse" "of Floe" "of Glaciation" "of Immolation" "of Prestidigitation" "of Ruin" "of Sortilege" "of Unmaking"
	HasExplicitMod "Cryomancer's" "Esh's" "Glyphic" "Ionising" "Magister's" "Matatl's" "Pyroclastic" "Runic" "Tacati" "Topotante's" "Tul's" "Xoph's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity Rare
	Class "Rune Dagger" "Sceptres" "Shield" "Wands"
	HasExplicitMod "Carbonising" "Flame Shaper's" "Glyphic" "Matatl's" "Pyroclastic" "Runic" "Tacati" "Topotante's" "Xoph's"
	HasExplicitMod "Archmage's" "Corrosive" "Fanatical" "Lich's" "of Ashes" "of Combusting" "of Conflagrating" "of Immolation" "Zealous"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity Rare
	Class "Rune Dagger" "Sceptres" "Shield" "Wands"
	HasExplicitMod "Esh's" "Excruciating" "Glyphic" "Ionising" "Matatl's" "Runic" "Tacati" "Thunderhand's" "Topotante's" "Vapourising"
	HasExplicitMod "Archmage's" "Lich's" "of Arcing" "of Discharge"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity Rare
	Class "Rune Dagger" "Sceptres" "Shield" "Wands"
	HasExplicitMod "Cryomancer's" "Crystalising" "Frost Singer's" "Glyphic" "Matatl's" "Mortifying" "Runic" "Tacati" "Topotante's" "Tul's"
	HasExplicitMod "Archmage's" "Gelid" "Heartstopping" "Lich's" "of Floe" "of Glaciation"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1206] General Resist Gear
#------------------------------------

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity Rare
	HasExplicitMod "of Haast" "of the Ice"
	HasExplicitMod "of the Magma" "of Tzteosh"
	HasExplicitMod "of Ephij" "of the Lightning"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1207] Boots/Gloves
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Boots" "Gloves"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear" "of the Walrus"
	HasExplicitMod "of the Furnace" "of the Magma" "of the Volcano" "of Tzteosh" "Puhuarte" "Topotante"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom" "of the Tempest"
	HasExplicitMod "Athlete's" "Cheetah's" "Dauntless" "Gazelle's" "Guatelitzi" "Hellion's" "Indomitable" "Rotund" "Unassailable" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Boots" "Gloves"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear" "of the Walrus"
	HasExplicitMod "of the Furnace" "of the Magma" "of the Volcano" "of Tzteosh" "Puhuarte" "Topotante"
	HasExplicitMod "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Phantom" "of the Polymath" "of the Titan" "of the Virtuoso" "of the Wind"
	HasExplicitMod "Athlete's" "Cheetah's" "Dauntless" "Gazelle's" "Guatelitzi" "Hellion's" "Indomitable" "Rotund" "Unassailable" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Boots" "Gloves"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear" "of the Walrus"
	HasExplicitMod "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Phantom" "of the Polymath" "of the Titan" "of the Virtuoso" "of the Wind" "Puhuarte" "Topotante"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom" "of the Tempest"
	HasExplicitMod "Athlete's" "Cheetah's" "Dauntless" "Gazelle's" "Guatelitzi" "Hellion's" "Indomitable" "Rotund" "Unassailable" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Boots" "Gloves"
	HasExplicitMod "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Phantom" "of the Polymath" "of the Titan" "of the Virtuoso" "of the Wind"
	HasExplicitMod "of the Furnace" "of the Magma" "of the Volcano" "of Tzteosh" "Puhuarte" "Topotante"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom" "of the Tempest"
	HasExplicitMod "Athlete's" "Cheetah's" "Dauntless" "Gazelle's" "Guatelitzi" "Hellion's" "Indomitable" "Rotund" "Unassailable" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1208] Boots
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Boots"
	HasExplicitMod "Athlete's" "Guatelitzi" "Virile"
	HasExplicitMod "Cheetah's" "Hellion's" "Matatl"
	HasExplicitMod "Fawn's" "of Ephij" "of Haast" "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "Prior's" "Urchin"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Boots"
	HasExplicitMod "Cheetah's" "Hellion's" "Matatl"
	HasExplicitMod "Dauntless" "Guatelitzi" "Indomitable" "Unassailable"
	HasExplicitMod "Pulsing" "Radiating" "Seething"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1209] Gloves
#------------------------------------

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Gloves"
	HasExplicitMod "Indomitable" "Unassailable"
	HasExplicitMod "Pulsing" "Seething"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Gloves"
	HasExplicitMod "Honed" "Polished"
	HasExplicitMod "of Mastery" "of Renown"
	HasExplicitMod "of Lioneye" "of the Assassin" "of the Ranger" "Puhuarte" "Topotante"
	HasExplicitMod "Athlete's" "Dauntless" "Djinn's" "Fawn's" "Indomitable" "of Ephij" "of Haast" "of the Blur" "of the Furnace" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Jaguar" "of the Kiln" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Savant" "of the Tempest" "of the Thunderhead" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Walrus" "of the Wind" "of the Yeti" "of Tzteosh" "Prior's" "Pulsing" "Radiating" "Rotund" "Seething" "Seraphim's" "Unassailable" "Urchin" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Gloves"
	HasExplicitMod "Honed"
	HasExplicitMod "of Renown"
	HasExplicitMod "of Lioneye" "of the Assassin" "Puhuarte" "Topotante"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1210] Helmets
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Helmets"
	HasExplicitMod "Athlete's" "Fecund"
	HasExplicitMod "Abbot's" "Fawn's" "Nautilus's" "Prior's" "Ram's" "Urchin"
	HasExplicitMod "Necromancer's" "of Ephij" "of Haast" "of Lioneye" "of the Assassin" "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Jaguar" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Savant" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "Puhuarte"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Helmets"
	HasExplicitMod "Dauntless" "Indomitable" "Unassailable"
	HasExplicitMod "Blazing" "Seething"
	HasExplicitMod "Abbot's" "Necromancer's" "of Ephij" "of Haast" "of Lioneye" "of the Assassin" "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Jaguar" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Savant" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "Puhuarte" "Seraphim's" "Xopec's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1211] Shields
#------------------------------------

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Shields"
	HasExplicitMod "Indomitable" "Unassailable" "Unfaltering"
	HasExplicitMod "Blazing" "Incandescent" "Scintillating"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Shields"
	HasExplicitMod "Cryomancer's" "Crystalline" "Esh's" "Glyphic" "Incanter's" "Ionising" "Magmatic" "Pyroclastic" "Runic" "Smiting" "Tul's" "Xoph's"
	HasExplicitMod "of Calamity" "of Ruin" "of Unmaking"
	HasExplicitMod "Blazing" "Expertise" "Fecund" "Incandescent" "Indomitable" "of the Rainbow" "of the Span" "of Variegation" "Rapturous" "Scintillating" "Unassailable" "Unfaltering" "Vigorous"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Shields"
	HasExplicitMod "Blazing" "Fecund" "Incandescent" "Indomitable" "Rapturous" "Scintillating" "Unassailable" "Unfaltering" "Vigorous"
	HasExplicitMod "Cryomancer's" "Crystalline" "Esh's" "Glyphic" "Incanter's" "Ionising" "Magmatic" "Pyroclastic" "Runic" "Smiting" "Tul's" "Xoph's"
	HasExplicitMod "Abbot's" "Necromancer's" "of Blocking" "of Ephij" "of Haast" "of Lioneye" "of the Assassin" "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Jaguar" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Rainbow" "of the Savant" "of the Span" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "of Variegation" "Seraphim's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Shields"
	HasExplicitMod "Blazing" "Cryomancer's" "Crystalline" "Esh's" "Fecund" "Glyphic" "Incandescent" "Incanter's" "Indomitable" "Ionising" "Magmatic" "Pyroclastic" "Rapturous" "Runic" "Scintillating" "Smiting" "Tul's" "Unassailable" "Unfaltering" "Vigorous" "Xoph's"
	HasExplicitMod "Expertise" "of Blocking" "of Ruin" "of the Rainbow" "of the Span" "of Unmaking"
	HasExplicitMod "of the Furnace" "of the Magma" "of the Volcano" "of Tzteosh"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom" "of the Tempest"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Shields"
	HasExplicitMod "Blazing" "Cryomancer's" "Crystalline" "Esh's" "Fecund" "Glyphic" "Incandescent" "Incanter's" "Indomitable" "Ionising" "Magmatic" "Pyroclastic" "Rapturous" "Runic" "Scintillating" "Smiting" "Tul's" "Unassailable" "Unfaltering" "Vigorous" "Xoph's"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear" "of the Walrus"
	HasExplicitMod "Expertise" "of Blocking" "of Ruin" "of the Rainbow" "of the Span" "of Unmaking"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom" "of the Tempest"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Shields"
	HasExplicitMod "Blazing" "Cryomancer's" "Crystalline" "Esh's" "Fecund" "Glyphic" "Incandescent" "Incanter's" "Indomitable" "Ionising" "Magmatic" "Pyroclastic" "Rapturous" "Runic" "Scintillating" "Smiting" "Tul's" "Unassailable" "Unfaltering" "Vigorous" "Xoph's"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear" "of the Walrus"
	HasExplicitMod "of the Furnace" "of the Magma" "of the Volcano" "of Tzteosh"
	HasExplicitMod "Expertise" "of Blocking" "of Ruin" "of the Rainbow" "of the Span" "of Unmaking"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1212] Body
#------------------------------------

Show # $type->expl->rare
	Identified True
	DropLevel > 55
	Rarity Rare
	Class "Body Armour"
	HasExplicitMod "Incandescent" "Resplendent"
	HasExplicitMod "Unassailable" "Unfaltering"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	DropLevel > 55
	Rarity Rare
	Class "Body Armour"
	HasExplicitMod "Incandescent" "Resplendent" "Scintillating"
	HasExplicitMod "Indomitable" "Unassailable" "Unfaltering"
	HasExplicitMod "Abbot's" "Djinn's" "Exarch's" "of the Genius" "of the Virtuoso" "Seraphim's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Body Armour"
	HasExplicitMod "Guatelitzi" "Prime" "Rapturous"
	HasExplicitMod "Abbot's" "Crocodile's" "Exarch's" "Ibex's" "Nautilus's" "Ram's"
	HasExplicitMod "of Ephij" "of Exuberance" "of Fog" "of Haast" "of Numbing" "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1213] Quiver
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Quivers"
	HasExplicitMod "Athlete's" "Fecund"
	HasExplicitMod "Devastating" "Empowering" "Overpowering" "Unleashed"
	HasExplicitMod "Honed" "of Ease" "of Ephij" "of Haast" "of Incision" "of Penetrating" "of Rending" "of the Assassin" "of the Gale" "of the Ice" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Polar Bear" "of the Volcano" "of Tzteosh"
	HasExplicitMod "of Destruction" "of Ferocity" "of Fury"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1214] Belts
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Belts"
	HasExplicitMod "of Overflowing" "of Refilling" "of Savouring" "of Sipping" "of the Gods" "of the Godslayer" "of the Leviathan" "of the Titan"
	HasExplicitMod "Athlete" "Fecund" "Virile"
	HasExplicitMod "Carapaced" "Devastating" "Empowering" "Encased" "Enveloped" "Overpowering" "Unleashed"
	HasExplicitMod "of Ephij" "of Haast" "of the Ice" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Polar Bear" "of the Volcano" "of Tzteosh"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Belts"
	HasExplicitMod "of Ephij" "of Haast" "of Overflowing" "of Refilling" "of the Gods" "of the Godslayer" "of the Ice" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Polar Bear" "of the Titan" "of the Volcano" "of Tzteosh"
	HasExplicitMod "of Savouring"
	HasExplicitMod "of Sipping"
	HasExplicitMod "Athlete" "Devastating" "Empowering" "Enveloped" "Fecund" "Overpowering" "Resplendent" "Unleashed" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Belts"
	HasExplicitMod "Athlete" "Dazzling" "Devastating" "Enveloped" "Fecund" "Overpowering" "Resplendent" "Unleashed" "Virile"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear"
	HasExplicitMod "of the Magma" "of the Volcano" "of Tzteosh"
	HasExplicitMod "of Overflowing" "of Refilling" "of Savouring" "of Sipping" "of the Gods" "of the Godslayer" "of the Leviathan" "of the Titan"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Belts"
	HasExplicitMod "Athlete" "Dazzling" "Devastating" "Enveloped" "Fecund" "Overpowering" "Resplendent" "Unleashed" "Virile"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear"
	HasExplicitMod "of Overflowing" "of Refilling" "of Savouring" "of Sipping" "of the Gods" "of the Godslayer" "of the Leviathan" "of the Titan"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Belts"
	HasExplicitMod "Athlete" "Dazzling" "Devastating" "Enveloped" "Fecund" "Overpowering" "Resplendent" "Unleashed" "Virile"
	HasExplicitMod "of Overflowing" "of Refilling" "of Savouring" "of Sipping" "of the Gods" "of the Godslayer" "of the Leviathan" "of the Titan"
	HasExplicitMod "of the Magma" "of the Volcano" "of Tzteosh"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1215] Rings
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Rings"
	HasExplicitMod "Guatelitzi" "Resplendent" "Robust" "Rotund" "Virile" "Xopec"
	HasExplicitMod "Empowering" "Flawless" "Overpowering" "Unleashed"
	HasExplicitMod "Annealed" "Blasting" "Carbonising" "Cremating" "Crystalising" "Discharging" "Electrocuting" "Entombing" "Gleaming" "Polar" "Vapourising"
	HasExplicitMod "of Ephij" "of Flames" "of Haast" "of Nirvana" "of Rime" "of Skill" "of Talent" "of the Assassin" "of the Blur" "of the Comet" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Jaguar" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Meteor" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Rainbow" "of the Ranger" "of the Savant" "of the Titan" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "of Variegation" "of Voltage"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Rings"
	HasExplicitMod "Guatelitzi" "Resplendent" "Robust" "Rotund" "Virile" "Xopec"
	HasExplicitMod "Annealed" "Blasting" "Carbonising" "Cremating" "Crystalising" "Discharging" "Electrocuting" "Empowering" "Entombing" "Flawless" "Gleaming" "of Flames" "of Nirvana" "of Rime" "of Skill" "of Talent" "of the Assassin" "of the Blur" "of the Comet" "of the Genius" "of the Gods" "of the Godslayer" "of the Jaguar" "of the Leviathan" "of the Meteor" "of the Phantom" "of the Polymath" "of the Rainbow" "of the Ranger" "of the Savant" "of the Titan" "of the Virtuoso" "of the Wind" "of Variegation" "of Voltage" "Overpowering" "Polar" "Unleashed" "Vapourising"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear"
	HasExplicitMod "of the Magma" "of the Volcano" "of Tzteosh"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Rings"
	HasExplicitMod "Guatelitzi" "Resplendent" "Robust" "Rotund" "Virile" "Xopec"
	HasExplicitMod "Annealed" "Blasting" "Carbonising" "Cremating" "Crystalising" "Discharging" "Electrocuting" "Empowering" "Entombing" "Flawless" "Gleaming" "of Flames" "of Nirvana" "of Rime" "of Skill" "of Talent" "of the Assassin" "of the Blur" "of the Comet" "of the Genius" "of the Gods" "of the Godslayer" "of the Jaguar" "of the Leviathan" "of the Meteor" "of the Phantom" "of the Polymath" "of the Rainbow" "of the Ranger" "of the Savant" "of the Titan" "of the Virtuoso" "of the Wind" "of Variegation" "of Voltage" "Overpowering" "Polar" "Unleashed" "Vapourising"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom"
	HasExplicitMod "of Haast" "of the Ice" "of the Polar Bear"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Rings"
	HasExplicitMod "Guatelitzi" "Resplendent" "Robust" "Rotund" "Virile" "Xopec"
	HasExplicitMod "Annealed" "Blasting" "Carbonising" "Cremating" "Crystalising" "Discharging" "Electrocuting" "Empowering" "Entombing" "Flawless" "Gleaming" "of Flames" "of Nirvana" "of Rime" "of Skill" "of Talent" "of the Assassin" "of the Blur" "of the Comet" "of the Genius" "of the Gods" "of the Godslayer" "of the Jaguar" "of the Leviathan" "of the Meteor" "of the Phantom" "of the Polymath" "of the Rainbow" "of the Ranger" "of the Savant" "of the Titan" "of the Virtuoso" "of the Wind" "of Variegation" "of Voltage" "Overpowering" "Polar" "Unleashed" "Vapourising"
	HasExplicitMod "of the Magma" "of the Volcano" "of Tzteosh"
	HasExplicitMod "of Ephij" "of the Lightning" "of the Maelstrom"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1216] Amulets
#------------------------------------

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Amulets"
	HasExplicitMod "Guatelitzi" "Indomitable" "Unassailable" "Xopec"
	HasExplicitMod "Dazzling" "Resplendent"
	HasExplicitMod "of the Rainbow" "of the Span" "Puhuarte"
	HasExplicitMod "Blasting" "Carbonising" "Cremating" "Crystalising" "Devastating" "Discharging" "Electrocuting" "Entombing" "Flaring" "of Destruction" "of Discharge" "of Ephij" "of Expertise" "of Ferocity" "of Flames" "of Floe" "of Fury" "of Haast" "of Immolation" "of Incision" "of Nimbleness" "of Penetrating" "of Rime" "of Rupturing" "of the Assassin" "of the Blur" "of the Galaxy" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Infinite" "of the Jaguar" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Multiverse" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Ranger" "of the Savant" "of the Titan" "of the Universe" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "of Voltage" "Overpowering" "Polar" "Razor-sharp" "Tempered" "Thaumaturgist's" "Unleashed" "Vapourising" "Wizard's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Amulets"
	HasExplicitMod "Athlete's" "Dazzling" "Guatelitzi" "Resplendent" "Rotund" "Virile" "Xopec"
	HasExplicitMod "of the Rainbow" "of the Span"
	HasExplicitMod "of Ephij" "of Haast" "of the Assassin" "of the Ice" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Polar Bear" "of the Ranger" "of the Volcano" "of Tzteosh" "Puhuarte"
	HasExplicitMod "Blasting" "Carbonising" "Cremating" "Crystalising" "Devastating" "Discharging" "Electrocuting" "Entombing" "Flaring" "of Destruction" "of Discharge" "of Expertise" "of Ferocity" "of Flames" "of Floe" "of Fury" "of Immolation" "of Incision" "of Nimbleness" "of Penetrating" "of Rime" "of Rupturing" "of the Blur" "of the Galaxy" "of the Genius" "of the Gods" "of the Godslayer" "of the Infinite" "of the Jaguar" "of the Leviathan" "of the Multiverse" "of the Phantom" "of the Polymath" "of the Savant" "of the Titan" "of the Universe" "of the Virtuoso" "of the Wind" "of Voltage" "Overpowering" "Polar" "Razor-sharp" "Tempered" "Thaumaturgist's" "Unleashed" "Vapourising" "Wizard's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Amulets"
	HasExplicitMod "Athlete's" "Dazzling" "Guatelitzi" "Resplendent" "Rotund" "Virile" "Xopec"
	HasExplicitMod "of the Galaxy" "of the Infinite" "of the Multiverse" "of the Universe"
	HasExplicitMod "of the Blur" "of the Genius" "of the Gods" "of the Godslayer" "of the Jaguar" "of the Leviathan" "of the Phantom" "of the Polymath" "of the Savant" "of the Titan" "of the Virtuoso" "of the Wind" "Puhuarte"
	HasExplicitMod "Blasting" "Carbonising" "Cremating" "Crystalising" "Devastating" "Discharging" "Electrocuting" "Entombing" "Flaring" "of Destruction" "of Discharge" "of Ephij" "of Expertise" "of Ferocity" "of Flames" "of Floe" "of Fury" "of Haast" "of Immolation" "of Incision" "of Nimbleness" "of Penetrating" "of Rime" "of Rupturing" "of the Assassin" "of the Ice" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Polar Bear" "of the Rainbow" "of the Ranger" "of the Span" "of the Volcano" "of Tzteosh" "of Voltage" "Overpowering" "Polar" "Razor-sharp" "Tempered" "Thaumaturgist's" "Unleashed" "Vapourising" "Wizard's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Amulets"
	HasExplicitMod "Devastating" "Overpowering" "Unleashed"
	HasExplicitMod "Blasting" "Carbonising" "Cremating" "Crystalising" "Discharging" "Electrocuting" "Entombing" "Flaring" "of the Assassin" "of the Ranger" "Polar" "Razor-sharp" "Tempered" "Vapourising"
	HasExplicitMod "of Destruction" "of Ferocity" "of Fury"
	HasExplicitMod "Athlete's" "Dazzling" "of Discharge" "of Ephij" "of Flames" "of Floe" "of Haast" "of Immolation" "of Incision" "of Penetrating" "of Rime" "of Rupturing" "of the Blur" "of the Galaxy" "of the Genius" "of the Gods" "of the Godslayer" "of the Ice" "of the Infinite" "of the Jaguar" "of the Leviathan" "of the Lightning" "of the Maelstrom" "of the Magma" "of the Multiverse" "of the Phantom" "of the Polar Bear" "of the Polymath" "of the Rainbow" "of the Savant" "of the Span" "of the Titan" "of the Universe" "of the Virtuoso" "of the Volcano" "of the Wind" "of Tzteosh" "of Voltage" "Puhuarte" "Resplendent" "Rotund" "Virile"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $type->expl->rare
	Identified True
	Rarity Rare
	Class "Amulets"
	HasExplicitMod "of Expertise" "of Nimbleness" "Puhuarte"
	HasExplicitMod "of Destruction" "of Ferocity" "of Fury"
	HasExplicitMod "Thaumaturgist's" "Wizard's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#------------------------------------
#   [1217] Jewels
#------------------------------------

Show # $type->expl->rare
	Corrupted False
	Identified True
	Rarity <= Rare
	Class "Jewel"
	HasExplicitMod "Shimmering" "Vivid"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayEffect Blue Temp
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1218] Buzzsaw Weapons
#------------------------------------

Show 
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Rare
	Class "Claws" "Daggers" "One Hand Swords" "Thrusting One Hand Swords"
	HasExplicitMod "of Incision" "of Penetrating"
	HasExplicitMod "Discharging" "Electrocuting" "Shocking" "Topotante's" "Vapourising"
	HasExplicitMod "Carbonising" "Crystalising" "Entombing" "Glaciated" "Polar"
	HasExplicitMod "of Celebration" "of Infamy"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

#===============================================================================================================
# [[1300]] 6Socketed and 5Linked Drops
#===============================================================================================================

Show # %D5
	LinkedSockets 5
	Sockets 6
	Rarity <= Rare
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 100 100 100 255      # BACKGROUND:	 Recipe T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # %D4 %REMS3
	LinkedSockets 5
	ItemLevel >= 65
	Rarity < Unique
	Class "Body Armours"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show # %D2
	LinkedSockets 5
	ItemLevel >= 65
	Rarity < Unique
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # %D5 $lvl
	LinkedSockets 5
	ItemLevel < 65
	Rarity < Unique
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # %D5
	Sockets 6
	ItemLevel >= 86
	Rarity <= Rare
	BaseType "Assassin's Garb" "Astral Plate" "Glorious Plate" "Vaal Regalia" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 200 200 0 255            # BORDERCOLOR:	 Aspect: 83plus
	SetBackgroundColor 100 100 100 255      # BACKGROUND:	 Recipe T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show # %D5
	Sockets 6
	ItemLevel >= 85
	Rarity <= Rare
	BaseType "Coronal Maul" "Exquisite Blade" "Harbinger Bow" "Vaal Axe"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 200 200 0 255            # BORDERCOLOR:	 Aspect: 83plus
	SetBackgroundColor 100 100 100 255      # BACKGROUND:	 Recipe T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show # %D5
	Sockets 6
	Rarity <= Rare
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 100 100 100 255      # BACKGROUND:	 Recipe T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

#===============================================================================================================
# [[1400]] Explicit Mod Highlight - League Drops
#===============================================================================================================

#------------------------------------
#   [1401] Synthesis (removed)
#------------------------------------

Show # $type->expl->league
	FracturedItem True
	Rarity <= Rare
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 255
	PlayEffect White Temp
	MinimapIcon 2 White Diamond

Show # $type->expl->league
	SynthesisedItem True
	Rarity <= Rare
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 255
	PlayEffect White Temp
	MinimapIcon 2 White Diamond

#------------------------------------
#   [1402] Betrayal
#------------------------------------

Show # $type->expl->league
	Identified True
	HasExplicitMod "Catarina's Veiled" "Elreon's Veiled" "Leo's Veiled" "Rin's Veiled" "Vagan's Veiled" "Vorici's Veiled"
	SetFontSize 45
	SetTextColor 0 240 190 240
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Diamond

Show # $type->expl->league
	Identified True
	HasExplicitMod "Gravicius' Veiled" "Guff's Veiled" "Haku's" "It That Fled's Veiled" "Korell's Veiled" "of Aisling's Veil" "of Cameria's Veil" "of Hillock's Veil" "of Janus' Veil" "of Jorgin's Veil" "Riker" "Tora's Veiled"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 Yellow Diamond

Show # %D5 $type->expl->league
	Identified True
	HasExplicitMod "Veiled"
	HasExplicitMod "of the Veil"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 Yellow Diamond

Show # %D4 $type->expl->league
	Identified True
	HasExplicitMod "Veil"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayEffect White Temp
	MinimapIcon 2 White Diamond

#------------------------------------
#   [1403] Crafting mods
#------------------------------------

Show # %D3 $type->expl->league
	Identified True
	HasExplicitMod "of Crafting" "of Spellcraft" "of Weaponcraft"
	SetFontSize 40
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base

#------------------------------------
#   [1404] Delve
#------------------------------------

Show # $type->expl->league
	Identified True
	HasExplicitMod "of the Underground" "Subterranean"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1405] Bestiary
#------------------------------------

Show # %D4 $type->expl->league
	Identified True
	Class "Amulets" "Belts" "Rings"
	HasExplicitMod "of Craiceann" "of Farrul" "of Fenumus" "of Saqawal"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect White Temp
	MinimapIcon 2 White Diamond

Show # %D2 $type->expl->league
	Identified True
	HasExplicitMod "of Craiceann" "of Farrul" "of Fenumus" "of Saqawal"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect White Temp
	MinimapIcon 2 White Diamond

#------------------------------------
#   [1406] Incursion - Matatl - traps and movementspeed
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	Class "Boots"
	HasExplicitMod "Matatl's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1407] Incursion - Body Armours - Guatelitzi
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	Class "Body Armour"
	HasExplicitMod "Guatelitzi's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1408] Incursion - Sumonner Weapons
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	Class "Claws" "Daggers" "One Hand" "Sceptre" "Staves" "Wand"
	HasExplicitMod "Citaqualotl's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1409] Incursion - Caster Weapons
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	Class "Rune Dagger" "Sceptre" "Staves" "Wand"
	HasExplicitMod "Matatl's" "Tacati" "Topotante's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1410] Incursion - Normal Weapons
#------------------------------------

Show # $type->expl->league
	Identified True
	DropLevel >= 50
	Rarity Rare
	Class "Bows" "Claws" "Daggers" "Thrusting"
	HasExplicitMod "Topotante's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->league
	Identified True
	DropLevel >= 50
	Rarity Rare
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand"
	HasExplicitMod "of Tacati" "Tacati's"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1411] Incursion - Rings, Amulets
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	Class "Amulets" "Belts" "Rings"
	HasExplicitMod "Citaqualotl" "Guatelitzi" "Matatl" "Puhuarte" "Tacati" "Topotante" "Xopec"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1412] Incursion - Gloves, Helmets
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	Class "Gloves" "Helmets"
	HasExplicitMod "Puhuarte" "Topotante"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1413] Incursion General
#------------------------------------

Show # $type->expl->league
	Identified True
	Rarity Rare
	HasExplicitMod "Citaqualotl" "Guatelitzi" "Matatl" "Puhuarte" "Tacati" "Topotante" "Xopec"
	SetFontSize 45
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->league
	Identified True
	Rarity Magic
	HasExplicitMod "Citaqualotl" "Guatelitzi" "Matatl" "Puhuarte" "Tacati" "Topotante" "Xopec"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#------------------------------------
#   [1414] Warbands
#------------------------------------

Show # %D2 $type->expl->league
	Identified True
	HasExplicitMod "Betrayer's" "Brinerot" "Deceiver's" "Mutewind" "Redblade" "Turncoat's"
	SetFontSize 40
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue Temp

#------------------------------------
#   [1415] Enchanted Items
#------------------------------------

Show 
	AnyEnchantment True
	Class Helmets
	SetFontSize 45
	SetTextColor 0 240 190 240
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # %D3
	AnyEnchantment True
	Class Boots Gloves
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique

#===============================================================================================================
# [[1500]] Explicit Mod Highlight - Magic
#===============================================================================================================

Show # $type->expl->magic
	Corrupted False
	Identified True
	Rarity Magic
	Class "Rune Daggers" "Sceptre" "Wand"
	HasExplicitMod "Esh's" "Runic" "Xoph's"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	Rarity Magic
	Class "Rune Daggers" "Sceptre" "Wand"
	HasExplicitMod "Carbonising" "Cremating" "Crystalising" "Electrocuting" "Entombing" "Esh's" "Glyphic" "Lich's" "Runic" "Tul's" "Vapourising" "Xoph's"
	HasExplicitMod "of Arcing" "of Ashes" "of Celebration" "of Destruction" "of Finesse" "of Glaciation" "of Ruin" "of Sortilege" "of Unmaking"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 55
	Rarity Magic
	Class "Bow" "Claw" "Daggers" "One Hand" "Two Hand" "Wand" "Warstaves"
	HasExplicitMod "Merciless"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 55
	Rarity Magic
	Class "Bow" "Claw" "Daggers" "One Hand" "Wand"
	HasExplicitMod "Carbonising" "Cremating" "Crystalising" "Dictator's" "Electrocuting" "Emperor's" "Entombing" "Flaring" "Merciless" "Tempered" "Tyrannical" "Vapourising"
	HasExplicitMod "of Celebration" "of Destruction" "of Ferocity" "of Incision" "of Penetrating" "of Rending"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 55
	Rarity Magic
	HasExplicitMod "Necromancer's"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Magic
	Class "Boots"
	HasExplicitMod "Cheetah's" "Hellion's" "Seething" "Unassailable"
	HasExplicitMod "of Ephij" "of Haast" "of the Ice" "of the Lightning" "of the Magma" "of Tzteosh"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 60
	Rarity Magic
	Class "Body Armour"
	HasExplicitMod "Prime" "Resplendent" "Unassailable" "Unfaltering"
	HasExplicitMod "of Ephij" "of Haast" "of the Ice" "of the Lightning" "of the Magma" "of Tzteosh"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Magic
	Class "Gloves"
	HasExplicitMod "Athlete's" "Seething" "Unassailable"
	HasExplicitMod "of Ephij" "of Grandmastery" "of Haast" "of Lioneye" "of the Assassin" "of the Ice" "of the Lightning" "of the Magma" "of Tzteosh"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Magic
	Class "Shield"
	HasExplicitMod "Esh's" "Incandescent" "Runic" "Tul's" "Unfaltering" "Vigorous" "Xoph's"
	HasExplicitMod "of Ephij" "of Expertise" "of Haast" "of the Span" "of Tzteosh" "of Unmaking"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	Rarity Magic
	Class "Quiver"
	BaseType "Broadhead Arrow Quiver" "Penetrating Arrow Quiver" "Spike-Point Arrow Quiver"
	HasExplicitMod "Devastating" "Fecund" "Overpowering"
	HasExplicitMod "of Destruction" "of Ease" "of Rending"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	DropLevel > 50
	Rarity Magic
	Class "Helmets"
	HasExplicitMod "Blazing" "Fecund" "Unassailable"
	HasExplicitMod "of Ephij" "of Haast" "of Lioneye" "of the Ice" "of the Lightning" "of the Magma" "of Tzteosh"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	Rarity Magic
	Class "Amulet"
	HasExplicitMod "Athlete's" "Carbonising" "Cremating" "Crystalising" "Dazzling" "Devastating" "Electrocuting" "Entombing" "Flaring" "Unassailable" "Vapourising" "Virile" "Wizard's"
	HasExplicitMod "of Destruction" "of Discharge" "of Ephij" "of Expertise" "of Floe" "of Haast" "of Immolation" "of Incision" "of Nirvana" "of Skill" "of Talent" "of the Assassin" "of the Genius" "of the Gods" "of the Multiverse" "of the Rainbow" "of the Wind" "of Tzteosh"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	Rarity Magic
	Class "Rings"
	HasExplicitMod "Annealed" "Carbonising" "Cremating" "Crystalising" "Electrocuting" "Entombing" "Flawless" "Overpowering" "Resplendent" "Rotund" "Vapourising" "Virile"
	HasExplicitMod "of Ephij" "of Flames" "of Haast" "of Rime" "of Skill" "of Talent" "of the Assassin" "of the Comet" "of the Genius" "of the Gods" "of the Rainbow" "of the Wind" "of Tzteosh" "of Voltage"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

Show # $type->expl->magic
	Corrupted False
	Identified True
	Rarity Magic
	Class "Belts"
	HasExplicitMod "Dazzling" "Devastating" "Enveloped" "Fecund" "Overpowering"
	HasExplicitMod "of Ephij" "of Haast" "of Overflowing" "of Savouring" "of Sipping" "of the Gods" "of the Godslayer" "of Tzteosh"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

#===============================================================================================================
# [[1600]] Talisman
#===============================================================================================================

Show # %H5 $x->talismans
	Rarity < Unique
	Class "Amulets"
	BaseType "Talisman"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#===============================================================================================================
# [[1700]] Exotic Item Types
#===============================================================================================================

# Give a man a fish and he won't be hungry for a day, teach a man to fish and GGG will ban you for disclosing fishing secrets.

Show 
	Class "Fishing Rod"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # %H4 $x->overquality
	Corrupted False
	Quality >= 29
	ItemLevel >= 75
	DropLevel >= 50
	Rarity <= Rare
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	PlayEffect Blue
	MinimapIcon 2 Blue Diamond

# Crude bows are sometimes used by summonners as easy-to-color-bows for crafting

Show # %D1
	ItemLevel >= 50
	Rarity <= Rare
	BaseType "Crude Bow"
	SetFontSize 40
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

# Double corrupted items can sometimes be interesting.

Show # %H5
	Corrupted True
	CorruptedMods >= 2
	Rarity Rare
	SetFontSize 40
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#===============================================================================================================
# [[1800]] Jewels
#===============================================================================================================

Show # $x->abyss->jewel
	ItemLevel >= 82
	Rarity Rare
	Class "Abyss Jewel"
	SetFontSize 45
	SetTextColor 255 255 0 255              # TEXTCOLOR:	 Jewel Text
	SetBorderColor 220 0 0 240              # BORDERCOLOR:	 Aspect High Potential
	SetBackgroundColor 120 120 0 225        # BACKGROUND:	 Rare Jewel
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $x->abyss->jewel
	ItemLevel >= 82
	Rarity <= Magic
	Class "Abyss Jewel"
	SetFontSize 45
	SetTextColor 0 100 255                  # TEXTCOLOR:	 Jewel Magic
	SetBorderColor 220 0 0 240              # BORDERCOLOR:	 Aspect High Potential
	SetBackgroundColor 0 20 40 255          # BACKGROUND:	 Jewel Magic
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue
	MinimapIcon 0 Blue Diamond

Show # $x->abyss->jewel
	Rarity Rare
	Class "Abyss Jewel"
	SetFontSize 45
	SetTextColor 255 255 0 255              # TEXTCOLOR:	 Jewel Text
	SetBorderColor 200 200 0 255            # BORDERCOLOR:	 Aspect: 83plus
	SetBackgroundColor 120 120 0 225        # BACKGROUND:	 Rare Jewel
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue Temp

Show # %H4 $x->abyss->jewel
	Rarity <= Magic
	Class "Abyss Jewel"
	SetFontSize 45
	SetTextColor 0 100 255                  # TEXTCOLOR:	 Jewel Magic
	SetBorderColor 0 75 250                 # BORDERCOLOR:	 Magic Jewel
	SetBackgroundColor 0 20 40 255          # BACKGROUND:	 Jewel Magic

Show 
	Rarity Rare
	Class "Jewel"
	SetFontSize 45
	SetTextColor 255 255 0 255              # TEXTCOLOR:	 Jewel Text
	SetBorderColor 200 200 0 255            # BORDERCOLOR:	 Aspect: 83plus
	SetBackgroundColor 120 120 0 225        # BACKGROUND:	 Rare Jewel
	MinimapIcon 2 Blue Diamond

Show # %H2
	Rarity <= Magic
	Class "Jewel"
	SetFontSize 40
	SetTextColor 0 100 255                  # TEXTCOLOR:	 Jewel Magic
	SetBorderColor 0 75 250                 # BORDERCOLOR:	 Magic Jewel
	SetBackgroundColor 0 20 40 255          # BACKGROUND:	 Jewel Magic

#===============================================================================================================
# [[1900]] Normal/Magic Crafting Bases
#===============================================================================================================

#------------------------------------
#   [1901] Extreme Value ILVL 86 Rules
#------------------------------------

# These are items that have a particullary high price at ILVL 86+.
# This list is based on poe.ninja data

#Show # $type->generalcrafting $tier->eco
#	ItemLevel >= 86
#	SetFontSize 45
#	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
#	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
#	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
#	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
#	PlayEffect Red
#	MinimapIcon 0 Red Diamond

#------------------------------------
#   [1902] 86+ Endgame crafting rules
#------------------------------------

Show # %D5 %SENDER->CRAFTING->T1 $type->normalcraft->i86 $tier->t1
	ItemLevel >= 86
	Rarity < Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Convoking Wand" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255
	SetBorderColor 255 255 255 255
	SetBackgroundColor 255 125 0 255        # BACKGROUND:	Crafting-base-86
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 1 Yellow Diamond

Show # %D4 %SENDER->CRAFTING->T2 $type->normalcraft->i86 $tier->t2
	ItemLevel >= 86
	Rarity < Rare
	BaseType "Diamond Ring" "Eternal Burgonet" "Hubris Circlet" "Lion Pelt" "Onyx Amulet" "Sacrificial Garb" "Sorcerer Boots" "Sorcerer Gloves" "Titanium Spirit Shield" "Two-Stone Ring"
	SetFontSize 40
	SetBorderColor 255 125 0 185
	SetBackgroundColor 0 0 0 185

Show # %D3 %SENDER->CRAFTING->T3 $type->normalcraft->i86 $tier->t3
	ItemLevel >= 86
	Rarity < Rare
	BaseType "Ambusher" "Archon Kite Shield" "Assassin's Garb" "Astral Plate" "Colossal Tower Shield" "Coronal Maul" "Deicide Mask" "Demon Dagger" "Exquisite Blade" "Fleshripper" "Fossilised Spirit Shield" "Gemini Claw" "Harbinger Bow" "Harmonic Spirit Shield" "Harpy Rapier" "Heavy Belt" "Imbued Wand" "Jewelled Foil" "Kris" "Opal Sceptre" "Opal Wand" "Pinnacle Tower Shield" "Profane Wand" "Royal Burgonet" "Sadist Garb" "Saintly Chainmail" "Sambar Sceptre" "Siege Axe" "Skean" "Slink Boots" "Slink Gloves" "Spine Bow" "Spiraled Foil" "Thicket Bow" "Titan Gauntlets" "Titan Greaves" "Vaal Axe" "Vaal Regalia" "Void Sceptre"
	SetFontSize 40
	SetBorderColor 255 125 0 185
	SetBackgroundColor 0 0 0 185

#------------------------------------
#   [1903] 84+ Endgame crafting rules
#------------------------------------

Show # %D5 %RECEIVER->CRAFTING->T1 $type->normalcraft->i84 $tier->t1
	ItemLevel <= 85
	ItemLevel >= 84
	Rarity < Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Convoking Wand" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 45
	SetBorderColor 200 200 0 255
	SetBackgroundColor 0 0 0 255

Show # %D2 %RECEIVER->CRAFTING->T2 $type->normalcraft->i84 $tier->t2
	ItemLevel <= 85
	ItemLevel >= 84
	Rarity < Rare
	BaseType "Diamond Ring" "Eternal Burgonet" "Hubris Circlet" "Lion Pelt" "Onyx Amulet" "Sacrificial Garb" "Sorcerer Boots" "Sorcerer Gloves" "Titanium Spirit Shield" "Two-Stone Ring"
	SetFontSize 40
	SetBorderColor 200 200 0 185
	SetBackgroundColor 0 0 0 185

Show # %D1 %RECEIVER->CRAFTING->T3 $type->normalcraft->i84 $tier->t3
	ItemLevel <= 85
	ItemLevel >= 84
	Rarity < Rare
	BaseType "Ambusher" "Archon Kite Shield" "Assassin's Garb" "Astral Plate" "Colossal Tower Shield" "Coronal Maul" "Deicide Mask" "Demon Dagger" "Exquisite Blade" "Fleshripper" "Fossilised Spirit Shield" "Gemini Claw" "Harbinger Bow" "Harmonic Spirit Shield" "Harpy Rapier" "Heavy Belt" "Imbued Wand" "Jewelled Foil" "Kris" "Opal Sceptre" "Opal Wand" "Pinnacle Tower Shield" "Profane Wand" "Royal Burgonet" "Sadist Garb" "Saintly Chainmail" "Sambar Sceptre" "Siege Axe" "Skean" "Slink Boots" "Slink Gloves" "Spine Bow" "Spiraled Foil" "Thicket Bow" "Titan Gauntlets" "Titan Greaves" "Vaal Axe" "Vaal Regalia" "Void Sceptre"
	SetFontSize 40
	SetBorderColor 200 200 0 185
	SetBackgroundColor 0 0 0 185

#------------------------------------
#   [1904] Level-Independent Highlight
#------------------------------------

Show # %D4 %RECEIVER->CRAFTING->T1 $type->normalcraft->rest $tier->t1
	ItemLevel <= 83
	ItemLevel >= 60
	Rarity < Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Convoking Wand" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 40
	SetBorderColor 0 0 0 255
	SetBackgroundColor 0 0 0 255

#Show # %D0 %RECEIVER->CRAFTING->T2 $type->normalcraft->rest $tier->t2
#	ItemLevel <= 83
#	ItemLevel >= 60
#	Rarity < Rare
#	BaseType "Diamond Ring" "Eternal Burgonet" "Hubris Circlet" "Lion Pelt" "Onyx Amulet" "Sacrificial Garb" "Sorcerer Boots" "Sorcerer Gloves" "Titanium Spirit Shield" "Two-Stone Ring"
#	SetFontSize 36
#	SetBorderColor 0 0 0 185
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#Show # %D0 %RECEIVER->CRAFTING->T3 $type->normalcraft->rest $tier->t3
#	ItemLevel <= 83
#	ItemLevel >= 60
#	Rarity < Rare
#	BaseType "Ambusher" "Archon Kite Shield" "Assassin's Garb" "Astral Plate" "Colossal Tower Shield" "Coronal Maul" "Deicide Mask" "Demon Dagger" "Exquisite Blade" "Fleshripper" "Fossilised Spirit Shield" "Gemini Claw" "Harbinger Bow" "Harmonic Spirit Shield" "Harpy Rapier" "Heavy Belt" "Imbued Wand" "Jewelled Foil" "Kris" "Opal Sceptre" "Opal Wand" "Pinnacle Tower Shield" "Profane Wand" "Royal Burgonet" "Sadist Garb" "Saintly Chainmail" "Sambar Sceptre" "Siege Axe" "Skean" "Slink Boots" "Slink Gloves" "Spine Bow" "Spiraled Foil" "Thicket Bow" "Titan Gauntlets" "Titan Greaves" "Vaal Axe" "Vaal Regalia" "Void Sceptre"
#	SetFontSize 36
#	SetBorderColor 0 0 0 185
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#===============================================================================================================
# [[2000]] Chancing Section
#===============================================================================================================

Show # %D2 %C1 $tier->hh $type->chancing
	Corrupted False
	Mirrored False
	Rarity Normal
	BaseType "Leather Belt"
	SetFontSize 36
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 0 150 0 150              # BORDERCOLOR:	 T2 Chancing

Show # %D2 %C1 $tier->t2 $type->chancing
	Corrupted False
	Mirrored False
	Rarity Normal
	BaseType "Glorious Plate" "Occultist's Vestment" "Prophecy Wand" "Sadist Garb"
	SetFontSize 36
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 0 150 0 150              # BORDERCOLOR:	 T2 Chancing

#===============================================================================================================
# [[2100]] Low Value Recipes
#===============================================================================================================

#------------------------------------
#   [2101] Chromatic recipe items ("RGB Recipe")
#------------------------------------
# These items have a RGB link and sell for a chromatic orb each.

Show # %H2 $size->small
	Width <= 2
	Height <= 2
	ItemLevel >= 65
	Rarity < Rare
	SocketGroup RGB
	SetFontSize 36
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %H2 $size->small
	Width <= 1
	Height <= 4
	ItemLevel >= 65
	Rarity < Rare
	SocketGroup RGB
	SetFontSize 36
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %H1 $size->large
	Width >= 2
	Height >= 4
	ItemLevel >= 65
	Rarity < Rare
	SocketGroup RGB
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %H1
	ItemLevel >= 65
	Rarity < Rare
	SocketGroup RGB
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

#------------------------------------
#   [2102] FLASKS (Endgame rules)
#------------------------------------

Show # %D3
	Quality 20
	ItemLevel > 65
	Rarity <= Magic
	BaseType "Flask"
	SetFontSize 40
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	Quality >= 15
	ItemLevel > 65
	Rarity <= Magic
	BaseType "Flask"
	SetFontSize 36
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	Quality >= 1
	ItemLevel > 65
	Rarity <= Magic
	BaseType "Flask"
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	ItemLevel <= 74
	ItemLevel >= 66
	Rarity <= Magic
	Class "Life Flasks"
	BaseType "Divine" "Eternal"
	SetFontSize 36
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask

Show # %D1
	ItemLevel <= 74
	ItemLevel >= 66
	Rarity <= Magic
	Class "Mana Flasks"
	BaseType "Divine" "Eternal"
	SetFontSize 36
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask

Show # %D2
	ItemLevel > 65
	Rarity <= Magic
	Class "Utility Flasks"
	SetFontSize 36
	SetBorderColor 50 200 125               # BORDERCOLOR:	 Flask
	SetBackgroundColor 25 100 75            # BACKGROUND:	 Flasks

#------------------------------------
#   [2103] Chisel recipe items
#------------------------------------
# Chisel Recipe: You can sell a 20% hammer + random map for 1 chisel

Show # %D1
	Quality 20
	Rarity < Unique
	BaseType "Gavel" "Rock Breaker" "Stone Hammer"
	SetFontSize 36
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	Corrupted False
	Quality > 17
	Rarity Magic
	BaseType "Gavel" "Rock Breaker" "Stone Hammer"
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	Corrupted False
	Quality > 14
	Rarity Normal
	BaseType "Gavel" "Rock Breaker" "Stone Hammer"
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	Corrupted False
	Quality > 11
	Rarity Magic
	BaseType "Gavel" "Rock Breaker" "Stone Hammer"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	Corrupted False
	Rarity Normal
	BaseType "Gavel" "Rock Breaker" "Stone Hammer"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

#===============================================================================================================
#   [2104] Animate Weapon script - deactivated by default
#===============================================================================================================
# UNCOMMENT THIS SCRIPT TO MAKE IT WORK (remove the # in front of the next 7 lines)

#Show # $x->aw
#	Rarity Normal
#	Class "Claws" "Daggers" "One Hand" "Rune Dagger" "Sceptres" "Staves" "Thrusting" "Two Hand" "Warstaves"
#	SetFontSize 20
#	SetTextColor 150 0 0 255
#	SetBorderColor 150 0 0 255
#	SetBackgroundColor 0 0 0 255

#Show # $x->aw ranged
#	Rarity Normal
#	Class "Bows" "Wands"
#	SetFontSize 20
#	SetTextColor 150 0 0 255
#	SetBorderColor 150 0 0 255
#	SetBackgroundColor 0 0 0 255

#Show # $x->aw identified
#	Identified True
#	Rarity Magic
#	Class "Claws" "Daggers" "One Hand" "Rune Dagger" "Sceptres" "Staves" "Thrusting" "Two Hand" "Warstaves"
#	SetFontSize 20
#	SetTextColor 150 0 0 255
#	SetBorderColor 150 0 0 255
#	SetBackgroundColor 0 0 0 255

#Show # $x->aw identified, ranged
#	Identified True
#	Rarity Magic
#	Class "Bows" "Wands"
#	SetFontSize 20
#	SetTextColor 150 0 0 255
#	SetBorderColor 150 0 0 255
#	SetBackgroundColor 0 0 0 255

#===============================================================================================================
# [[2200]] Low Strictness Sections
#===============================================================================================================

#------------------------------------
#   [2201] Endgame-start 4-links
#------------------------------------

#Show # %D0
#	LinkedSockets >= 4
#	ItemLevel < 72
#	DropLevel >= 65
#	Rarity < Rare
#	Class "Body Armour" "Boots" "Gloves" "Helmets"
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [2202] 60+ Crafting rules for 60++ trinkets
#------------------------------------

Show # %D1
	ItemLevel >= 75
	Rarity Normal
	Class Amulet Belts Rings
	BaseType "Diamond" "Onyx" "Prismatic" "Two-Stone"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#Show # %D0
#	ItemLevel >= 75
#	Rarity Normal
#	Class Amulet Belts Rings
#	BaseType "Agate" "Amber" "Citrine" "Coral Ring" "Gold" "Heavy Belt" "Jade" "Lapis" "Leather" "Moonstone" "Ruby" "Rustic Sash" "Sapphire" "Topaz" "Turquoise"
#	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#Show # %D0
#	ItemLevel >= 65
#	ItemLevel <= 74
#	Rarity Normal
#	Class Amulet Belts Rings
#	BaseType "Diamond" "Onyx" "Prismatic" "Two-Stone"
#	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#Show # %D0
#	ItemLevel >= 65
#	ItemLevel <= 74
#	Rarity Normal
#	Class Amulet Belts Rings
#	BaseType "Agate" "Amber" "Chain Belt" "Citrine" "Coral Ring" "Gold" "Heavy Belt" "Jade" "Lapis" "Leather" "Moonstone" "Ruby" "Rustic Sash" "Sapphire" "Topaz" "Turquoise"
#	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [2203] Low Strictness Magic/Normal Trinkets
#------------------------------------

#Show # %D0
#	ItemLevel >= 65
#	Rarity Magic
#	Class Amulets Belts Rings
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#===============================================================================================================
# [[2300]] HIDE LAYER 1 - MAGIC AND NORMAL ITEMS
#===============================================================================================================

Hide # minimize junk instead of hiding (if "show")
	ItemLevel >= 65
	Rarity < Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 18
	SetBorderColor 0 0 0 100                # BORDERCOLOR:	 Neutral T4
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

#===============================================================================================================
# [[2400]] OVERRIDE AREA 2 - Override the default rare rulesets here
#===============================================================================================================

# Example: This section displays 20% quality rares (between lvl 60 and 74), it's disabled by default, remove
# The #'s in front of the next lines to enable it and show the items with a Cyan border.

#Show 
#	Quality 20
#	ItemLevel >= 60
#	Rarity Rare
#	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
#	SetFontSize 42
#	SetBorderColor 0 255 255 255            # BORDERCOLOR:	 Crafting: T1
#	SetBackgroundColor 0 0 0 255

#===============================================================================================================
# [[2500]] RARE ITEMS - SPECIAL BASES
#===============================================================================================================

Show # %RECEIVER->CRAFTING->T1 $type->rarecraft->i86 $tier->t1
	ItemLevel >= 86
	Rarity Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Convoking Wand" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255
	SetBorderColor 255 255 255 255
	SetBackgroundColor 255 125 0 255        # BACKGROUND:	Crafting-base-86
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 1 Yellow Diamond

Show # %RECEIVER->CRAFTING->T1 $type->rarecraft->i84 $tier->t1
	ItemLevel <= 85
	ItemLevel >= 84
	Rarity Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Convoking Wand" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 0 0 0 255
	SetBorderColor 0 0 0 255
	SetBackgroundColor 255 125 0 255        # BACKGROUND:	Crafting-base-86
	PlayEffect White
	MinimapIcon 2 White Diamond

Show # %D5 %RECEIVER->CRAFTING->T1 $type->rarecraft->rest $tier->t1
	ItemLevel <= 83
	ItemLevel >= 65
	Rarity Rare
	BaseType "Blue Pearl Amulet" "Bone Helmet" "Cerulean Ring" "Convoking Wand" "Crystal Belt" "Fingerless Silk Gloves" "Gripped Gloves" "Marble Amulet" "Opal Ring" "Spiked Gloves" "Steel Ring" "Stygian Vise" "Two-Toned Boots" "Vanguard Belt" "Vermillion Ring"
	SetFontSize 45
	SetTextColor 0 0 0 255
	SetBorderColor 0 240 190 240
	SetBackgroundColor 170 225 70 255       # BACKGROUND:	 Trinket T1

#===============================================================================================================
# [[2600]] RARE ITEMS - LEVEL 86 Crafting
#===============================================================================================================

Show # %D4 %RECEIVER->CRAFTING->T2 $type->rarecraft->i86 $tier->t2
	ItemLevel >= 86
	Rarity Rare
	BaseType "Diamond Ring" "Eternal Burgonet" "Hubris Circlet" "Lion Pelt" "Onyx Amulet" "Sacrificial Garb" "Sorcerer Boots" "Sorcerer Gloves" "Titanium Spirit Shield" "Two-Stone Ring"
	SetFontSize 45
	SetTextColor 255 125 0 255
	SetBorderColor 255 125 0 255
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

Show # %D3 %RECEIVER->CRAFTING->T3 $type->rarecraft->i86 $tier->t3
	ItemLevel >= 86
	Rarity Rare
	BaseType "Ambusher" "Archon Kite Shield" "Assassin's Garb" "Astral Plate" "Colossal Tower Shield" "Coronal Maul" "Deicide Mask" "Demon Dagger" "Exquisite Blade" "Fleshripper" "Fossilised Spirit Shield" "Gemini Claw" "Harbinger Bow" "Harmonic Spirit Shield" "Harpy Rapier" "Heavy Belt" "Imbued Wand" "Jewelled Foil" "Kris" "Opal Sceptre" "Opal Wand" "Pinnacle Tower Shield" "Profane Wand" "Royal Burgonet" "Sadist Garb" "Saintly Chainmail" "Sambar Sceptre" "Siege Axe" "Skean" "Slink Boots" "Slink Gloves" "Spine Bow" "Spiraled Foil" "Thicket Bow" "Titan Gauntlets" "Titan Greaves" "Vaal Axe" "Vaal Regalia" "Void Sceptre"
	SetFontSize 45
	SetTextColor 255 125 0 255
	SetBorderColor 255 125 0 255
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

#===============================================================================================================
# [[2700]] RARE ITEMS - TRINKETS (ENDGAME)
#===============================================================================================================

#------------------------------------
#   [2701] Breach Rings Exceptions
#------------------------------------

Show # %H3 %C1
	ItemLevel >= 75
	Rarity <= Rare
	Class Rings
	BaseType "Breach"
	SetFontSize 36
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 130 25 255 255           # BORDERCOLOR:	 Breach
	SetBackgroundColor 65 20 80             # BACKGROUND:	 Breach

Show # %H3 %C1
	Rarity <= Rare
	Class Rings
	BaseType "Breach"
	SetFontSize 36
	SetBorderColor 130 25 255 255           # BORDERCOLOR:	 Breach
	SetBackgroundColor 65 20 80             # BACKGROUND:	 Breach

#------------------------------------
#   [2702] Rare trinkets
#------------------------------------

Show # %H3
	ItemLevel >= 75
	Rarity Rare
	Class Amulets Belts Rings
	BaseType "Amethyst Ring" "Chain Belt" "Cloth Belt" "Coral Amulet" "Gold Amulet" "Gold Ring" "Iron Ring" "Paua Amulet" "Paua Ring" "Studded Belt"
	SetFontSize 40
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 160 200 50 255       # BACKGROUND:	 Trinket T2

Show # %H3
	ItemLevel >= 65
	Rarity Rare
	Class Amulets Belts Rings
	BaseType "Amethyst Ring" "Chain Belt" "Cloth Belt" "Coral Amulet" "Gold Amulet" "Gold Ring" "Iron Ring" "Paua Amulet" "Paua Ring" "Studded Belt"
	SetFontSize 40
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 160 200 50 255       # BACKGROUND:	 Trinket T2

Show # %D4
	ItemLevel >= 75
	Rarity Rare
	Class Amulets Belts Rings
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 170 225 70 255       # BACKGROUND:	 Trinket T1

Show # %D4
	ItemLevel >= 65
	Rarity Rare
	Class Amulets Belts Rings
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 170 225 70 255       # BACKGROUND:	 Trinket T1

#===============================================================================================================
# [[2800]] RARE ITEMS - WEAPONS AND ARMORS (ENDGAME)
#===============================================================================================================

#------------------------------------
#   [2801] T1 rare items
#------------------------------------

Show # %D4
	ItemLevel >= 75
	Rarity Rare
	BaseType "Ambusher" "Imbued Wand" "Jewelled Foil" "Opal Wand"
	SetFontSize 40
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

Show # %D4 %UP
	ItemLevel >= 65
	Rarity Rare
	BaseType "Ambusher" "Imbued Wand" "Jewelled Foil" "Opal Wand"
	SetFontSize 40
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

Show # %D4
	ItemLevel >= 75
	Rarity Rare
	BaseType "Ancient Greaves" "Arcanist Slippers" "Assassin's Boots" "Dragonscale Boots" "Eternal Burgonet" "Fossilised Spirit Shield" "Harmonic Spirit Shield" "Hubris Circlet" "Imperial Buckler" "Lion Pelt" "Mind Cage" "Murder Boots" "Murder Mitts" "Royal Burgonet" "Sinner Tricorne" "Slink Boots" "Slink Gloves" "Sorcerer Boots" "Sorcerer Gloves" "Stealth Boots" "Titan Gauntlets" "Titan Greaves" "Titanium Spirit Shield" "Vaal Greaves" "Vaal Regalia"
	SetFontSize 40
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

Show # %D4 %UP
	ItemLevel >= 65
	Rarity Rare
	BaseType "Ancient Greaves" "Arcanist Slippers" "Assassin's Boots" "Dragonscale Boots" "Eternal Burgonet" "Fossilised Spirit Shield" "Harmonic Spirit Shield" "Hubris Circlet" "Imperial Buckler" "Lion Pelt" "Mind Cage" "Murder Boots" "Murder Mitts" "Royal Burgonet" "Sinner Tricorne" "Slink Boots" "Slink Gloves" "Sorcerer Boots" "Sorcerer Gloves" "Stealth Boots" "Titan Gauntlets" "Titan Greaves" "Titanium Spirit Shield" "Vaal Greaves" "Vaal Regalia"
	SetFontSize 40
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

#------------------------------------
#   [2802] T2 rare items
#------------------------------------

Show # %D3 $size->small
	ItemLevel >= 75
	Rarity Rare
	BaseType "Corsair Sword" "Demon Dagger" "Fancy Foil" "Gemini Claw" "Imperial Claw" "Platinum Kris" "Profane Wand" "Siege Axe" "Skean" "Spiraled Foil" "Tornado Wand"
	SetFontSize 40
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	BaseType "Corsair Sword" "Demon Dagger" "Fancy Foil" "Gemini Claw" "Imperial Claw" "Platinum Kris" "Profane Wand" "Siege Axe" "Skean" "Spiraled Foil" "Tornado Wand"
	SetFontSize 40
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3
	ItemLevel >= 75
	Rarity Rare
	BaseType "Broadhead Arrow Quiver" "Exquisite Blade" "Fleshripper" "Harbinger Bow" "Opal Sceptre" "Runic Hatchet" "Sambar Sceptre" "Spike-Point Arrow Quiver" "Spine Bow" "Vaal Axe" "Vaal Sceptre"
	SetFontSize 40
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3 %UP
	ItemLevel >= 65
	Rarity Rare
	BaseType "Broadhead Arrow Quiver" "Exquisite Blade" "Fleshripper" "Harbinger Bow" "Opal Sceptre" "Runic Hatchet" "Sambar Sceptre" "Spike-Point Arrow Quiver" "Spine Bow" "Vaal Axe" "Vaal Sceptre"
	SetFontSize 40
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3 $size->small
	ItemLevel >= 75
	Rarity Rare
	BaseType "Ancient Gauntlets" "Arcanist Gloves" "Assassin's Mitts" "Carnal Boots" "Crusader Boots" "Crusader Buckler" "Crusader Gloves" "Deicide Mask" "Dragonscale Gauntlets" "Ezomyte Burgonet" "Goliath Greaves" "Nightmare Bascinet" "Praetor Crown" "Shagreen Boots" "Shagreen Gloves" "Sharkskin Boots" "Supreme Spiked Shield" "Vaal Gauntlets" "Vaal Mask" "Vaal Spirit Shield"
	SetFontSize 40
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	BaseType "Ancient Gauntlets" "Arcanist Gloves" "Assassin's Mitts" "Carnal Boots" "Crusader Boots" "Crusader Buckler" "Crusader Gloves" "Deicide Mask" "Dragonscale Gauntlets" "Ezomyte Burgonet" "Goliath Greaves" "Nightmare Bascinet" "Praetor Crown" "Shagreen Boots" "Shagreen Gloves" "Sharkskin Boots" "Supreme Spiked Shield" "Vaal Gauntlets" "Vaal Mask" "Vaal Spirit Shield"
	SetFontSize 40
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3
	ItemLevel >= 75
	Rarity Rare
	BaseType "Archon Kite Shield" "Assassin's Garb" "Astral Plate" "Broadhead Arrow Quiver" "Cardinal Round Shield" "Colossal Tower Shield" "Elegant Round Shield" "Glorious Plate" "Mosaic Kite Shield" "Penetrating Arrow Quiver" "Pinnacle Tower Shield" "Spike-Point Arrow Quiver"
	SetFontSize 40
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

Show # %D3 %UP
	ItemLevel >= 65
	Rarity Rare
	BaseType "Archon Kite Shield" "Assassin's Garb" "Astral Plate" "Broadhead Arrow Quiver" "Cardinal Round Shield" "Colossal Tower Shield" "Elegant Round Shield" "Glorious Plate" "Mosaic Kite Shield" "Penetrating Arrow Quiver" "Pinnacle Tower Shield" "Spike-Point Arrow Quiver"
	SetFontSize 40
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 50 0 255           # BACKGROUND:	 Rare T2

#------------------------------------
#   [2803] Other Conditions
#------------------------------------

Show # %D3 $size->small
	Width <= 2
	Height <= 2
	ItemLevel >= 75
	Rarity Rare
	SocketGroup RGB
	SetFontSize 36
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D3 %UP $size->small
	Width <= 2
	Height <= 2
	ItemLevel >= 65
	Rarity Rare
	SocketGroup RGB
	SetFontSize 36
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D3 $size->small
	Width <= 1
	Height <= 4
	ItemLevel >= 75
	Rarity Rare
	SocketGroup RGB
	SetFontSize 36
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D3 %UP $size->small
	Width <= 1
	Height <= 4
	ItemLevel >= 65
	Rarity Rare
	SocketGroup RGB
	SetFontSize 36
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	SocketGroup RGB
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T2 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	SocketGroup RGB
	SetTextColor 255 255 119 255            # TEXTCOLOR:	 T2 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

#------------------------------------
#   [2804] 1H Rune Dagger
#------------------------------------

Show # %D2 $size->small
	ItemLevel >= 75
	DropLevel >= 50
	Rarity Rare
	Class "Rune Dagger"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	ItemLevel >= 65
	DropLevel >= 50
	Rarity Rare
	Class "Rune Dagger"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	ItemLevel >= 75
	Rarity Rare
	Class "Rune Dagger"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	Class "Rune Dagger"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2805] 1H Daggers
#------------------------------------

Show # %D2 $size->small
	ItemLevel >= 75
	DropLevel >= 56
	Rarity Rare
	Class "Daggers"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	ItemLevel >= 65
	DropLevel >= 56
	Rarity Rare
	Class "Daggers"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	ItemLevel >= 75
	Rarity Rare
	Class "Daggers"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	Class "Daggers"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2806] 1H Claws
#------------------------------------

Show # %D2 $size->small
	ItemLevel >= 75
	DropLevel >= 55
	Rarity Rare
	Class "Claws"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	ItemLevel >= 65
	DropLevel >= 55
	Rarity Rare
	Class "Claws"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	ItemLevel >= 75
	Rarity Rare
	Class "Claws"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	Class "Claws"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2807] 1H Wands
#------------------------------------

Show # %D2 $size->small
	ItemLevel >= 75
	DropLevel >= 55
	Rarity Rare
	Class "Wands"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	ItemLevel >= 65
	DropLevel >= 55
	Rarity Rare
	Class "Wands"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	ItemLevel >= 75
	Rarity Rare
	Class "Wands"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	Class "Wands"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2808] 1H Foils
#------------------------------------

Show # %D2 $size->small
	Height 4
	ItemLevel >= 75
	DropLevel >= 58
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	Height 4
	ItemLevel >= 65
	DropLevel >= 58
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	Height 4
	ItemLevel >= 75
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	Height 4
	ItemLevel >= 65
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2809] 1H Swords
#------------------------------------

Show # %D2
	Height < 4
	ItemLevel >= 75
	DropLevel >= 56
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	Height < 4
	ItemLevel >= 65
	DropLevel >= 56
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	Height < 4
	ItemLevel >= 75
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	Height < 4
	ItemLevel >= 65
	Rarity Rare
	Class "One Hand Swords"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2810] 1H Maces
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 62
	Rarity Rare
	Class "One Hand Maces"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 62
	Rarity Rare
	Class "One Hand Maces"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "One Hand Maces"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "One Hand Maces"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2811] 1H Axes
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 57
	Rarity Rare
	Class "One Hand Axes"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 57
	Rarity Rare
	Class "One Hand Axes"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "One Hand Axes"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "One Hand Axes"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2812] 1H Sceptres
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 50
	Rarity Rare
	Class "Sceptres"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 50
	Rarity Rare
	Class "Sceptres"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Sceptres"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Sceptres"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2813] Warstaves
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 65
	Rarity Rare
	Class "Warstaves"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 65
	Rarity Rare
	Class "Warstaves"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Warstaves"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Warstaves"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2814] 2H Staves
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 68
	Rarity Rare
	Class "Staves"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 68
	Rarity Rare
	Class "Staves"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Staves"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Staves"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2815] 2H Swords, Axes, Maces
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 63
	Rarity Rare
	Class "Two Hand Axes" "Two Hand Maces" "Two Hand Swords"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 63
	Rarity Rare
	Class "Two Hand Axes" "Two Hand Maces" "Two Hand Swords"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Two Hand Axes" "Two Hand Maces" "Two Hand Swords"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Two Hand Axes" "Two Hand Maces" "Two Hand Swords"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2816] 2H Bows
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 57
	Rarity Rare
	Class "Bows"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 57
	Rarity Rare
	Class "Bows"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Bows"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Bows"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2817] AR: Gloves, Boots, Helmets
#------------------------------------

#Show # %D2 %UP $size->small
#	LinkedSockets 4
#	ItemLevel >= 65
#	Rarity Rare
#	Class "Boots" "Gloves" "Helmets"
#	SetFontSize 40
#	SetTextColor 220 220 119 200
#	SetBorderColor 0 140 240 219            # BORDERCOLOR:	 Rare 4L Experimental
#	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Rares - T3

Show # %D2 $size->small
	ItemLevel >= 75
	DropLevel >= 20
	Rarity Rare
	Class "Boots" "Gloves" "Helmets"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	ItemLevel >= 65
	DropLevel >= 20
	Rarity Rare
	Class "Boots" "Gloves" "Helmets"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	ItemLevel >= 75
	Rarity Rare
	Class "Boots" "Gloves" "Helmets"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	ItemLevel >= 65
	Rarity Rare
	Class "Boots" "Gloves" "Helmets"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2818] AR: Body Armors
#------------------------------------

Show # %D2
	ItemLevel >= 75
	DropLevel >= 55
	Rarity Rare
	Class "Body Armour"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	DropLevel >= 55
	Rarity Rare
	Class "Body Armour"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Body Armour"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Body Armour"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2819] OH: Shields
#------------------------------------

Show # %D2 $size->small
	Height <= 2
	ItemLevel >= 75
	DropLevel >= 58
	Rarity Rare
	Class "Shields"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP $size->small
	Height <= 2
	ItemLevel >= 65
	DropLevel >= 58
	Rarity Rare
	Class "Shields"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1 $size->small
	Height <= 2
	ItemLevel >= 75
	Rarity Rare
	Class "Shields"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP $size->small
	Height <= 2
	ItemLevel >= 65
	Rarity Rare
	Class "Shields"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D2
	Height >= 3
	ItemLevel >= 75
	DropLevel > 62
	Rarity Rare
	Class "Shields"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	Height >= 3
	ItemLevel >= 65
	DropLevel > 62
	Rarity Rare
	Class "Shields"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	Height >= 3
	ItemLevel >= 75
	Rarity Rare
	Class "Shields"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	Height >= 3
	ItemLevel >= 65
	Rarity Rare
	Class "Shields"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#------------------------------------
#   [2820] OH: Quivers
#------------------------------------

Show # %D2
	ItemLevel >= 75
	Rarity Rare
	Class "Quivers"
	BaseType "Penetrating Arrow Quiver"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Quivers"
	BaseType "Penetrating Arrow Quiver"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	ItemLevel >= 75
	Rarity Rare
	Class "Quivers"
	SetTextColor 255 190 0 255              # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

Show # %D1 %UP
	ItemLevel >= 65
	Rarity Rare
	Class "Quivers"
	SetTextColor 220 220 119 220            # TEXTCOLOR:	 T3 Rare
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 150            # BACKGROUND:	 Neutral T6

#===============================================================================================================
# [[2900]] HIDE LAYER 2 - RARE ITEMS (65+ ONLY FOR NON-REGULAR VERSIONS)
#===============================================================================================================
#Hide

Hide # $size->small hide remaining rare endgame items (note: on the regular version this line never happens)
	Width <= 1
	Height <= 4
	ItemLevel >= 75
	Rarity Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 24
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

Hide # $size->small hide remaining rare endgame items (note: on the regular version this line never happens)
	Width <= 1
	Height <= 4
	ItemLevel >= 65
	Rarity Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 24
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

Hide # $size->small hide remaining rare endgame items (note: on the regular version this line never happens)
	Width <= 2
	Height <= 2
	ItemLevel >= 75
	Rarity Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 24
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

Hide # $size->small hide remaining rare endgame items (note: on the regular version this line never happens)
	Width <= 2
	Height <= 2
	ItemLevel >= 65
	Rarity Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 24
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

Hide # $size->small hide remaining rare endgame items (note: on the regular version this line never happens)
	ItemLevel >= 75
	Rarity Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 24
	SetTextColor 255 190 0                  # TEXTCOLOR:	 Rare 75+
	SetBorderColor 0 0 0 100                # BORDERCOLOR:	 Neutral T4
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

Hide # $size->small hide remaining rare endgame items (note: on the regular version this line never happens)
	ItemLevel >= 65
	Rarity Rare
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 24
	SetBorderColor 0 0 0 100                # BORDERCOLOR:	 Neutral T4
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

#===============================================================================================================
# [[3000]] OVERRIDE AREA 3 - Override Map, Gem and Flask drops here
#===============================================================================================================

#===============================================================================================================
# [[3100]] Gems
#===============================================================================================================

#------------------------------------
#   [3101] Awakened Gems
#------------------------------------

Show 
	Class Gems
	BaseType "Awakened"
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

#------------------------------------
#   [3102] Exceptional Gems
#------------------------------------

Show 
	GemLevel > 20
	Class Gems
	BaseType "Vaal"
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show 
	Quality > 20
	GemLevel > 20
	Class Gems
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

#------------------------------------
#   [3103] Special Gems
#------------------------------------

Show 
	GemLevel >= 2
	Class Gems
	BaseType "Empower" "Enhance" "Enlighten"
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show 
	Corrupted False
	Quality >= 15
	Class Gems
	BaseType "Empower" "Enlighten"
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Triangle

Show 
	Class Gems
	BaseType "Empower" "Enlighten" "Item Quantity" "Portal" "Vaal Breach" "Vaal Grace" "Vaal Haste"
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect White
	MinimapIcon 2 Yellow Triangle

#------------------------------------
#   [3104] High Tier Gems
#------------------------------------

Show 
	GemLevel >= 20
	Class Gems
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 6 0 60               # BACKGROUND:	 20QualGem
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Triangle

Show 
	Quality >= 20
	Class Gems
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 6 0 60               # BACKGROUND:	 20QualGem
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Triangle

Show # %D4
	GemLevel >= 6
	Class Gems
	BaseType "Blood and Sand" "Brand Recall"
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 150 180 255           # BORDERCOLOR:	 Gem T1
	SetBackgroundColor 6 0 60               # BACKGROUND:	 20QualGem
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Yellow
	MinimapIcon 0 Yellow Triangle

#------------------------------------
#   [3105] Quality Gems
#------------------------------------

Show 
	Quality >= 14
	Class Gems
	SetFontSize 45
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 30 200 200 255           # BORDERCOLOR:	 Gem T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White Temp
	MinimapIcon 2 White Triangle

Show # %D4 %C3
	Quality >= 1
	Class Gems
	SetFontSize 40
	SetBorderColor 30 150 180 150           # BORDERCOLOR:	 Gem T3

#------------------------------------
#   [3106] Leveled Gems
#------------------------------------

Show # %D4
	GemLevel >= 5
	Class Gems
	BaseType "Blood and Sand" "Brand Recall" "Flesh and Stone"
	SetFontSize 40
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

Show # %D4
	GemLevel >= 18
	Class Gems
	SetFontSize 40
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

Show # %D3
	GemLevel >= 10
	Class Gems
	SetFontSize 40
	SetTextColor 30 200 200 255             # TEXTCOLOR:	 Gem High
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#------------------------------------
#   [3107] Leveling Rules
#------------------------------------

Show # %H4
	AreaLevel < 65
	Class Gems
	BaseType "Vaal"
	SetFontSize 45
	SetBorderColor 30 150 180 200           # BORDERCOLOR:	 Gems Leveling

Show # first areas
	AreaLevel 1
	Class Gems
	SetFontSize 45
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

Show # %H4
	AreaLevel < 65
	Class Gems
	SetFontSize 40
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#------------------------------------
#   [3108] Other gems
#------------------------------------

Show # %D4
	Class Gems
	BaseType "Enhance" "Vaal"
	SetFontSize 40
	SetBorderColor 30 150 180 150           # BORDERCOLOR:	 Gem T3

Show # %H2
	Class Gems
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#===============================================================================================================
# [[3200]] UTILITY FLASKS (Levelling Rules)
#===============================================================================================================

Show # %REMS1 $lvl
	Quality >= 1
	ItemLevel <= 65
	Rarity <= Magic
	BaseType "Basalt Flask" "Bismuth Flask" "Diamond Flask" "Granite Flask" "Jade Flask" "Quicksilver Flask" "Ruby Flask" "Sapphire Flask" "Silver Flask" "Stibnite Flask" "Topaz Flask"
	SetFontSize 45
	SetBorderColor 50 200 125               # BORDERCOLOR:	 Flask
	SetBackgroundColor 25 100 75            # BACKGROUND:	 Flasks
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

Show # %REMS1 $lvl
	ItemLevel <= 65
	Rarity <= Magic
	BaseType "Basalt Flask" "Bismuth Flask" "Diamond Flask" "Granite Flask" "Jade Flask" "Quicksilver Flask" "Ruby Flask" "Sapphire Flask" "Silver Flask" "Stibnite Flask" "Topaz Flask"
	SetFontSize 45
	SetBorderColor 50 200 125               # BORDERCOLOR:	 Flask
	SetBackgroundColor 25 100 75            # BACKGROUND:	 Flasks
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

#===============================================================================================================
# [[3300]] HIDE LAYER 3: Random Endgame Flasks
#===============================================================================================================

Hide 
	ItemLevel >= 69
	Rarity <= Magic
	BaseType Flask
	SetFontSize 18
	SetBorderColor 0 0 0 150                # BORDERCOLOR:	 Neutral T3
	SetBackgroundColor 0 0 0 165            # BACKGROUND:	 Neutral T5

#===============================================================================================================
# [[3400]] Maps, fragments and labyrinth items
#===============================================================================================================

#------------------------------------
#   [3401] Unique Maps
#------------------------------------

Show # $tier->t1 $type->unique->maps
	Rarity Unique
	Class Maps
	BaseType "Basilica Map" "Chateau Map" "Courthouse Map" "Courtyard Map" "Cursed Crypt Map" "Harbinger Map" "Maze Map" "Museum Map" "Park Map" "Relic Chambers Map" "Siege Map" "Underground River Map"
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 175 96 37 255            # BORDERCOLOR:	 Aspect Unique
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t2 $type->unique->maps
	Rarity Unique
	Class Maps
	BaseType "Moon Temple Map" "Reef Map"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Yellow
	MinimapIcon 0 Yellow Star

Show # $tier->rest $type->unique->maps
	Rarity Unique
	Class Maps
	SetFontSize 45
	SetBorderColor 175 96 37 255            # BORDERCOLOR:	 Aspect Unique
	SetBackgroundColor 53 13 13 255         # BACKGROUND:	 Unique T3
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Brown
	MinimapIcon 2 Brown Star

#------------------------------------
#   [3402] Labyrinth items, Offerings
#------------------------------------

Show 
	BaseType "Offering to the Goddess"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Hexagon

Show 
	Class "Labyrinth"
	SetFontSize 45
	SetTextColor 74 230 58                  # TEXTCOLOR:	 Quest
	SetBorderColor 74 230 58                # BORDERCOLOR:	 Quest Item
	PlayEffect Green
	MinimapIcon 1 Green Hexagon

#------------------------------------
#   [3403] Blighted maps
#------------------------------------

Show 
	BlightedMap True
	MapTier >= 15
	Class Maps
	SetFontSize 45
	SetTextColor 20 50 20 255
	SetBorderColor 20 50 20 255
	SetBackgroundColor 255 255 255 255
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show 
	BlightedMap True
	Class Maps
	SetFontSize 45
	SetTextColor 20 50 20 255
	SetBorderColor 20 50 20 255
	SetBackgroundColor 170 220 170
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Star

#------------------------------------
#   [3404] Top tier maps (T16)
#------------------------------------

Show # $lvl->11
	MapTier >= 16
	Class Maps
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 5 300                    # DROPSOUND:	 High Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Red Square

#------------------------------------
#   [3405] High tier maps(T11-15)
#------------------------------------

Show # $lvl->15
	MapTier >= 15
	Class Maps
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 200 200 200 255      # BACKGROUND:	 High Maps
	PlayAlertSound 5 300                    # DROPSOUND:	 High Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Red Square

Show # $lvl->14
	MapTier >= 14
	Class Maps
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 200 200 200 255      # BACKGROUND:	 High Maps
	PlayAlertSound 5 300                    # DROPSOUND:	 High Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Red Square

Show # $lvl->13
	MapTier >= 13
	Class Maps
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 200 200 200 255      # BACKGROUND:	 High Maps
	PlayAlertSound 5 300                    # DROPSOUND:	 High Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Red Square

Show # $lvl->12
	MapTier >= 12
	Class Maps
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 200 200 200 255      # BACKGROUND:	 High Maps
	PlayAlertSound 5 300                    # DROPSOUND:	 High Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Red Square

Show # $lvl->11
	MapTier >= 11
	Class Maps
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 200 200 200 255      # BACKGROUND:	 High Maps
	PlayAlertSound 5 300                    # DROPSOUND:	 High Map Sound
	PlayEffect Yellow
	MinimapIcon 1 Red Square

#------------------------------------
#   [3406] Mid tier maps (T6-10)
#------------------------------------

Show # $lvl->10
	Identified True
	Class Maps
	HasExplicitMod "Vaal"
	SetFontSize 45
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White
	MinimapIcon 2 Yellow Square

Show # $lvl->10
	MapTier >= 10
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White
	MinimapIcon 2 Yellow Square

#------------------------------------
# T9 - Maps
#------------------------------------

Show # $lvl->9
	MapTier >= 9
	ItemLevel < 88
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	DisableDropSound True
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White
	MinimapIcon 2 Yellow Square

Show # %H4 %C4
	MapTier >= 9
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T8 - Maps
#------------------------------------

Show # $lvl->8
	MapTier >= 8
	ItemLevel < 87
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	DisableDropSound True
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White
	MinimapIcon 2 Yellow Square

Show # %H4 %C4
	MapTier >= 8
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T7 - Maps
#------------------------------------

Show # $lvl->7
	MapTier >= 7
	ItemLevel < 86
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	DisableDropSound True
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White
	MinimapIcon 2 Yellow Square

Show # %H4 %C4
	MapTier >= 7
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T6 - Maps
#------------------------------------

Show # $lvl->6
	MapTier >= 6
	ItemLevel < 85
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	DisableDropSound True
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White
	MinimapIcon 2 Yellow Square

Show # %H4 %C4
	MapTier >= 6
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
#   [3407] Low tier maps (T1-T5)
#------------------------------------

Show # $lvl->5
	MapTier >= 5
	ItemLevel < 84
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4
	DisableDropSound True
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound
	PlayEffect White Temp
	MinimapIcon 2 White Square

Show # %H3 %C4
	MapTier >= 5
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T4 - Maps
#------------------------------------

Show # $lvl->4
	MapTier >= 4
	ItemLevel < 83
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4
	DisableDropSound True
	PlayAlertSound 4 150                    # DROPSOUND:	 Low Map Sound
	PlayEffect White Temp
	MinimapIcon 2 White Square

Show # %H3 %C4
	MapTier >= 4
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T3 - Maps
#------------------------------------

Show # $lvl->3
	MapTier >= 3
	ItemLevel < 82
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4
	DisableDropSound True
	PlayAlertSound 4 150                    # DROPSOUND:	 Low Map Sound
	PlayEffect White Temp
	MinimapIcon 2 White Square

Show # %H3 %C4
	MapTier >= 3
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T2 - Maps
#------------------------------------

Show # $lvl->2
	MapTier >= 2
	ItemLevel < 81
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4
	DisableDropSound True
	PlayAlertSound 4 150                    # DROPSOUND:	 Low Map Sound
	PlayEffect White Temp
	MinimapIcon 2 White Square

Show # %H3 %C4
	MapTier >= 2
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

#------------------------------------
# T1 - Maps
#------------------------------------

Show # $lvl->1
	MapTier <= 1
	ItemLevel < 80
	Class Maps
	SetFontSize 45
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4
	DisableDropSound True
	PlayAlertSound 4 150                    # DROPSOUND:	 Low Map Sound
	PlayEffect White Temp
	MinimapIcon 2 White Square

Show # %H3 %C4
	MapTier <= 1
	Class Maps
	SetTextColor 150 150 150                # TEXTCOLOR:	 outleveled
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3
	DisableDropSound True

# This should never happen. If you find pink maps, you probably deleted/commented sections above
# or should update the filter. Alternatively use www.filterblade.xyz

Show # safetyline / missing map
	Class Maps
	SetFontSize 45
	SetTextColor 255 0 255 255              # TEXTCOLOR:	 Error
	SetBorderColor 255 0 255 255            # BORDERCOLOR:	 Error
	PlayAlertSound 4 300                    # DROPSOUND:	 Map Sound

#===============================================================================================================
# [[3500]] Misc Map Items (relic keys)
#===============================================================================================================

Show 
	Class "Misc Map Items"
	BaseType "Ancient Reliquary Key" "Timeworn Reliquary Key"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show 
	Class "Misc Map Items"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Blue
	MinimapIcon 0 Blue Hexagon

#===============================================================================================================
# [[3600]] Fragments
#===============================================================================================================

#------------------------------------
#   [3601] Scarabs
#------------------------------------

Show # $tier->t1 $type->fragments->scarabs
	Class "Map Fragments"
	BaseType "Gilded Legion Scarab"
	SetFontSize 45
	SetTextColor 159 15 213 255
	SetBorderColor 159 15 213 255
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Yellow
	MinimapIcon 0 Red Hexagon

Show # $tier->t2 $type->fragments->scarabs
	Class "Map Fragments"
	BaseType "Gilded Ambush Scarab" "Gilded Bestiary Scarab" "Gilded Breach Scarab" "Gilded Divination Scarab" "Gilded Harbinger Scarab" "Gilded Sulphite Scarab" "Polished Bestiary Scarab" "Polished Harbinger Scarab" "Polished Legion Scarab" "Polished Sulphite Scarab" "Rusted Bestiary Scarab" "Rusted Sulphite Scarab"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 High Special Base
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Hexagon

Show # $tier->rest $type->fragments->scarabs
	Class "Map Fragments"
	BaseType "Scarab"
	SetFontSize 45
	SetTextColor 159 15 213 255             # TEXTCOLOR:	 Fragment
	SetBorderColor 159 15 213 255           # BORDERCOLOR:	 Map Fragment
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Hexagon

#------------------------------------
#   [3602] Regular Fragment Tiering
#------------------------------------

Show # $tier->t1 $type->fragments
	Class "Map Fragments"
	BaseType "Chayula's Breachstone" "Chayula's Charged Breachstone" "Chayula's Enriched Breachstone" "Chayula's Pure Breachstone" "Esh's Pure Breachstone" "Timeless Maraketh Emblem" "Timeless Templar Emblem" "Tul's Pure Breachstone" "Uul-Netol's Enriched Breachstone" "Uul-Netol's Pure Breachstone" "Xoph's Pure Breachstone"
	SetFontSize 45
	SetTextColor 159 15 213 255
	SetBorderColor 159 15 213 255
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t1p $type->fragments
	Class "Map Fragments"
	BaseType "Fragment of Knowledge" "Fragment of Shape"
	SetFontSize 45
	SetTextColor 0 0 0 255
	SetBorderColor 0 0 0 255
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Hexagon

Show # $tier->t2 $type->fragments
	Class "Map Fragments"
	BaseType "Esh's Enriched Breachstone" "Fragment of Constriction" "Fragment of Emptiness" "Fragment of Enslavement" "Fragment of Eradication" "Fragment of Purification" "Fragment of Terror" "Fragment of the Chimera" "Fragment of the Hydra" "Fragment of the Minotaur" "Fragment of the Phoenix" "Inya's Key" "Mortal Ignorance" "Timeless Eternal Emblem" "Timeless Karui Emblem" "Timeless Vaal Emblem" "Tul's Charged Breachstone" "Tul's Enriched Breachstone" "Uul-Netol's Breachstone" "Uul-Netol's Charged Breachstone" "Volkuur's Key" "Xoph's Enriched Breachstone" "Yriel's Key"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 High Special Base
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Hexagon

Show # $tier->t3 $type->fragments
	Class "Map Fragments"
	BaseType "Divine Vessel" "Eber's Key" "Esh's Breachstone" "Esh's Charged Breachstone" "Mortal Grief" "Mortal Hope" "Mortal Rage" "Sacrifice at Midnight" "Tul's Breachstone" "Xoph's Breachstone" "Xoph's Charged Breachstone"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 1 Yellow Hexagon

Show # $tier->t4 $type->fragments
	Class "Map Fragments"
	BaseType "Sacrifice at Dawn" "Sacrifice at Dusk" "Sacrifice at Noon"
	SetFontSize 45
	SetTextColor 159 15 213 255             # TEXTCOLOR:	 Fragment
	SetBorderColor 159 15 213 255           # BORDERCOLOR:	 Map Fragment
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White Temp
	MinimapIcon 2 White Hexagon

# SafetyEntry for Fragments

Show # $tier->rest $type->fragments
	Class "Map Fragments"
	SetFontSize 45
	SetTextColor 159 15 213 255             # TEXTCOLOR:	 Fragment
	SetBorderColor 159 15 213 255           # BORDERCOLOR:	 Map Fragment
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Hexagon

#===============================================================================================================
# [[3700]] Currency - Exceptions - Stacked Currency
#===============================================================================================================

Show 
	StackSize >= 3
	Class Currency
	BaseType "Splinter of Chayula" "Timeless Maraketh Splinter" "Timeless Templar Splinter"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Circle

Show 
	StackSize >= 3
	Class Currency
	BaseType "Splinter of Esh" "Splinter of Tul" "Splinter of Uul-Netol" "Splinter of Xoph" "Timeless Eternal Empire Splinter" "Timeless Karui Splinter" "Timeless Vaal Splinter"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show 
	StackSize >= 3
	Class Currency
	BaseType "Blessed Orb" "Chromatic Orb" "Glassblower's Bauble" "Jeweller's Orb" "Orb of Alteration" "Orb of Chance" "Silver Coin"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show 
	StackSize >= 4
	Class Currency
	BaseType "Blacksmith's Whetstone" "Orb of Augmentation" "Orb of Transmutation"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show 
	StackSize >= 6
	Class Currency
	BaseType "Armourer's Scrap" "Portal Scroll" "Scroll of Wisdom"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

#===============================================================================================================
# [[3800]] Currency - Exceptions - Leveling Currencies
#===============================================================================================================

Show # %H4 %C4 $tier->ex $type->currency
	AreaLevel < 65
	Class Currency
	BaseType "Blacksmith's Whetstone" "Orb of Transmutation"
	SetFontSize 45
	SetTextColor 170 158 130 255            # TEXTCOLOR:	 Transmutation Leveling Tier
	SetBorderColor 190 178 135 255          # BORDERCOLOR:	 Transmutation Leveling Tier
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %H3 %C3 $tier->ex $type->currency
	AreaLevel < 65
	Class Currency
	BaseType "Armourer's Scrap" "Orb of Augmentation"
	SetFontSize 45
	SetTextColor 170 158 130 255            # TEXTCOLOR:	 Transmutation Leveling Tier
	SetBorderColor 75 75 75 255             # BORDERCOLOR:	 Currency Augment
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %H3 %C3 $tier->ex $type->currency
	AreaLevel < 65
	Class Currency
	BaseType "Portal Scroll"
	SetFontSize 45
	SetTextColor 170 158 130 255            # TEXTCOLOR:	 Transmutation Leveling Tier
	SetBorderColor 30 50 100 255            # BORDERCOLOR:	 Portal
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %H3 %C3 $tier->ex $type->currency
	AreaLevel < 65
	Class Currency
	BaseType "Scroll of Wisdom"
	SetFontSize 45
	SetTextColor 170 158 130 255            # TEXTCOLOR:	 Transmutation Leveling Tier
	SetBorderColor 100 50 30 255            # BORDERCOLOR:	 Wisdom
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#===============================================================================================================
# [[3900]] Currency - PART 1 - Common currency
#===============================================================================================================

Show # %H5 %C5 $tier->t31 $type->currency
	Class Currency
	BaseType "Blessed Orb" "Silver Coin"
	SetFontSize 45
	SetTextColor 45 50 130 255              # TEXTCOLOR:	 Silver Coin
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 210 178 135 255      # BACKGROUND:	 Currency T5

Show # %H4 %C4 $tier->t32 $type->currency
	Class Currency
	BaseType "Chaos Shard" "Chromatic Orb" "Engineer's Shard" "Glassblower's Bauble" "Horizon Shard" "Jeweller's Orb" "Orb of Alteration" "Orb of Chance" "Regal Shard"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 200                # BORDERCOLOR:	 Neutral T2
	SetBackgroundColor 210 178 135 255      # BACKGROUND:	 Currency T5

Show # %H3 %C3 $tier->t33 $type->currency
	Class Currency
	BaseType "Alchemy Shard" "Binding Shard" "Blacksmith's Whetstone" "Orb of Augmentation" "Orb of Transmutation"
	SetFontSize 45
	SetTextColor 170 158 130                # TEXTCOLOR:	 Currency Cosmetic
	SetBorderColor 190 178 135 180          # BORDERCOLOR:	 Transmutation
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %H2 %C2 $tier->t41 $type->currency
	Class Currency
	BaseType "Alteration Shard" "Armourer's Scrap" "Transmutation Shard"
	SetFontSize 40
	SetTextColor 170 158 130 220            # TEXTCOLOR:	 Currency Cosmetic 2
	SetBorderColor 75 75 75 255             # BORDERCOLOR:	 Currency Augment
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %RF1 %H2 %C2 $tier->t42 $type->currency
	Class Currency
	BaseType "Portal Scroll"
	SetFontSize 40
	SetTextColor 170 158 130 220            # TEXTCOLOR:	 Currency Cosmetic 2
	SetBorderColor 30 50 100 255            # BORDERCOLOR:	 Portal
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %RF1 %H2 %C2 $tier->t43 $type->currency
	Class Currency
	BaseType "Scroll of Wisdom"
	SetFontSize 40
	SetTextColor 170 158 130 220            # TEXTCOLOR:	 Currency Cosmetic 2
	SetBorderColor 100 50 30 255            # BORDERCOLOR:	 Wisdom
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#===============================================================================================================
# [[4000]] Currency - PART 2 - Rare currency
#===============================================================================================================

#------------------------------------
#   [4001] Regular Rare Currency
#------------------------------------

Show # $tier->t21 $type->currency
	Class Currency
	BaseType "Awakened Sextant" "Exalted Shard" "Prime Sextant" "Stacked Deck"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Circle

Show # $tier->t22 $type->currency
	Class Currency
	BaseType "Ancient Shard" "Annulment Shard" "Chaos Orb" "Engineer's Orb" "Gemcutter's Prism" "Harbinger's Shard"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 249 150 25 255       # BACKGROUND:	 Currency T3
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show # $tier->t23 $type->currency
	Class Currency
	BaseType "Bestiary Orb" "Cartographer's Chisel" "Orb of Alchemy" "Orb of Binding" "Orb of Fusing" "Orb of Horizons" "Orb of Regret" "Orb of Scouring" "Regal Orb" "Simple Sextant" "Vaal Orb"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	DisableDropSound True
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

#------------------------------------
#   [4002] Incursion Currency
#------------------------------------

Show # $type->currency->incursion $tier->t1
	Class Currency
	BaseType "Vial of Awakening" "Vial of Sacrifice" "Vial of Summoning" "Vial of the Ghost"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $type->currency->incursion $tier->t2
	Class Currency
	BaseType "Vial of Consequence" "Vial of Dominance" "Vial of Fate" "Vial of the Ritual" "Vial of Transcendence"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Hexagon

#------------------------------------
#   [4003] Delve Currency - Resonators
#------------------------------------

Show # $type->currency->resonator $tier->t1
	BaseType "Prime Alchemical Resonator" "Prime Chaotic Resonator"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	DisableDropSound True
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Hexagon

Show # $type->currency->resonator $tier->t2
	BaseType "Potent Chaotic Resonator" "Powerful Chaotic Resonator" "Primitive Chaotic Resonator"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	DisableDropSound True
	PlayAlertSound 2 100                    # DROPSOUND:	 Splinter Sound
	PlayEffect White
	MinimapIcon 2 White Hexagon

Show # $type->currency->resonator $tier->t3
	BaseType "Potent Alchemical Resonator" "Powerful Alchemical Resonator" "Primitive Alchemical Resonator"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 200                # BORDERCOLOR:	 Neutral T2
	SetBackgroundColor 210 178 135 255      # BACKGROUND:	 Currency T5
	DisableDropSound True
	PlayAlertSound 2 100                    # DROPSOUND:	 Splinter Sound
	PlayEffect White
	MinimapIcon 2 White Hexagon

#------------------------------------
#   [4004] Delve Currency - Fossil
#------------------------------------

Show # $tier->t1 $type->currency->fossil
	Class Currency
	BaseType "Faceted Fossil" "Fractured Fossil" "Glyphic Fossil" "Hollow Fossil"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t2 $type->currency->fossil
	Class Currency
	BaseType "Gilded Fossil" "Perfect Fossil" "Sanctified Fossil" "Serrated Fossil" "Tangled Fossil"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Circle

Show # $tier->t4 $type->currency->fossil
	Class Currency
	BaseType "Aberrant Fossil" "Frigid Fossil" "Lucent Fossil" "Metallic Fossil" "Scorched Fossil"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 213 159 0 255        # BACKGROUND:	 Currency T4
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show # $tier->rest $type->currency->fossil
	Class Currency
	BaseType "Fossil"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 249 150 25 255       # BACKGROUND:	 Currency T3
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Circle

#------------------------------------
#   [4005] Metamorph Currency Catalysts
#------------------------------------

#Show # $type->currency->catalyst $tier->t1
#	SetFontSize 45
#	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
#	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
#	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
#	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
#	PlayEffect Red
#	MinimapIcon 0 Red Star

Show # $type->currency->catalyst $tier->t2
	BaseType "Fertile Catalyst" "Prismatic Catalyst"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Circle

Show # $type->currency->catalyst $tier->t3
	BaseType "Abrasive Catalyst" "Imbued Catalyst" "Intrinsic Catalyst" "Tempering Catalyst" "Turbulent Catalyst"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 249 150 25 255       # BACKGROUND:	 Currency T3
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

#------------------------------------
#   [4006] Top Currency
#------------------------------------

# I know the new exalted orbs are technically redundant, because it's a contains search, but people will PANIC, if they try searching for it and won't find it, so I'm keeping them here for now.

Show # $tier->t13 $type->currency
	Class Currency
	BaseType "Awakener's Orb" "Crusader's Exalted Orb" "Hunter's Exalted Orb" "Redeemer's Exalted Orb" "Warlord's Exalted Orb"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t11 $type->currency
	Class Currency
	BaseType "Albino Rhoa Feather" "Eternal Orb" "Exalted Orb" "Mirror of Kalandra" "Mirror Shard"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t12 $type->currency
	Class Currency
	BaseType "Ancient Orb" "Divine Orb" "Harbinger's Orb" "Orb of Annulment"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	DisableDropSound True
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Circle

#------------------------------------
#   [4007] Oil Tier List
#------------------------------------

Show # $tier->t1 $type->currency->oil
	Class Currency
	BaseType "Golden Oil"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t2 $type->currency->oil
	Class Currency
	BaseType "Opalescent Oil" "Silver Oil"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Hexagon

Show # $tier->t3 $type->currency->oil
	Class Currency
	BaseType "Black Oil" "Crimson Oil"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 249 150 25 255       # BACKGROUND:	 Currency T3
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 1 Yellow Hexagon

Show # %H5 $tier->t4 $type->currency->oil
	Class Currency
	BaseType "Amber Oil" "Azure Oil" "Clear Oil" "Sepia Oil" "Teal Oil" "Verdant Oil" "Violet Oil"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 200                # BORDERCOLOR:	 Neutral T2
	SetBackgroundColor 210 178 135 255      # BACKGROUND:	 Currency T5
	PlayEffect White Temp
	MinimapIcon 2 White Hexagon

#------------------------------------
#   [4008] Essence Tier List
#------------------------------------

Show 
	Class Currency
	BaseType "Deafening Essence of" "Essence of Delirium" "Essence of Horror" "Essence of Hysteria" "Essence of Insanity" "Remnant of Corruption" "Shrieking Essence of"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Circle

Show 
	Class Currency
	BaseType "Screaming Essence of"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 15 180 200 255       # BACKGROUND:	 Ess T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

Show 
	Class Currency
	BaseType "Wailing Essence of"
	SetFontSize 40
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 30 159 200 255       # BACKGROUND:	 Ess T3
	PlayEffect White Temp
	MinimapIcon 2 White Circle

Show # %H4 %C4
	Class Currency
	BaseType "Weeping Essence of"
	SetFontSize 40
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 30 159 200 225       # BACKGROUND:	 Ess T4
	PlayEffect White Temp
	MinimapIcon 2 White Circle

Show # %H4 %C4
	Class Currency
	BaseType "Muttering Essence of"
	SetFontSize 40
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 30 159 200 200       # BACKGROUND:	 Ess T5

Show # %H4 %C4
	Class Currency
	BaseType "Whispering Essence of"
	SetFontSize 40
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 30 159 200 175       # BACKGROUND:	 Ess T6

#------------------------------------
#   [4009] Perandus
#------------------------------------

Show 
	StackSize >= 15
	Class Currency
	BaseType "Perandus Coin"
	SetFontSize 45
	SetTextColor 255 178 135 255            # TEXTCOLOR:	 Perandus Coin
	SetBorderColor 255 178 135 135          # BORDERCOLOR:	 Perandus Coin
	PlayEffect White

Show # %H3 %C4
	StackSize < 4
	Class Currency
	BaseType "Perandus Coin"
	SetFontSize 40
	SetTextColor 255 178 135 255            # TEXTCOLOR:	 Perandus Coin

Show 
	Class Currency
	BaseType "Perandus Coin"
	SetFontSize 40
	SetTextColor 255 178 135 255            # TEXTCOLOR:	 Perandus Coin
	SetBorderColor 255 178 135 135          # BORDERCOLOR:	 Perandus Coin
	PlayEffect White Temp

#------------------------------------
#   [4010] Legion
#------------------------------------

Show # $tier->t1 $type->currency->legionsplinters
	Class Currency
	BaseType "Timeless Maraketh Splinter" "Timeless Templar Splinter"
	SetFontSize 45
	SetTextColor 255 235 235 255            # TEXTCOLOR:	 Splinter
	SetBorderColor 210 20 210 255           # BORDERCOLOR:	 Chayula
	SetBackgroundColor 65 20 80             # BACKGROUND:	 Breach
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 1 Yellow Hexagon

Show # $tier->t2 $type->currency->legionsplinters
	Class Currency
	BaseType "Timeless Eternal Empire Splinter" "Timeless Karui Splinter" "Timeless Vaal Splinter"
	SetFontSize 45
	SetTextColor 255 235 235 255            # TEXTCOLOR:	 Splinter
	SetBorderColor 130 25 255 255           # BORDERCOLOR:	 Breach
	SetBackgroundColor 65 20 80             # BACKGROUND:	 Breach
	PlayAlertSound 2 100                    # DROPSOUND:	 Splinter Sound
	PlayEffect White Temp
	MinimapIcon 2 White Hexagon

#------------------------------------
#   [4011] Incubator
#------------------------------------

Show # $tier->t1 $type->currency->incubators
	Class Incubator
	BaseType "Gemcutter's Incubator"
	SetFontSize 45
	SetTextColor 255 0 0 255                # TEXTCOLOR:	 T0 Item
	SetBorderColor 255 0 0 255              # BORDERCOLOR:	 T0 Item
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t2 $type->currency->incubators
	Class Incubator
	BaseType "Diviner's Incubator" "Foreboding Incubator" "Geomancer's Incubator" "Thaumaturge's Incubator" "Time-Lost Incubator"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 240 90 35 255        # BACKGROUND:	 Currency T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Circle

Show # $tier->rest $type->currency->incubators
	Class Incubator
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 249 150 25 255       # BACKGROUND:	 Currency T3
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

#------------------------------------
#   [4012] Breach
#------------------------------------

Show # $tier->t1 $type->currency->blessings
	Class Currency
	BaseType "Blessing of Chayula"
	SetFontSize 45
	SetTextColor 130 25 255 255             # TEXTCOLOR:	 Blessing
	SetBorderColor 130 25 255 255           # BORDERCOLOR:	 Breach
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t2 $type->currency->blessings
	Class Currency
	BaseType "Blessing of Esh" "Blessing of Tul" "Blessing of Uul-Netol" "Blessing of Xoph"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Hexagon

Show # $tier->t1 $type->currency->splinters
	Class Currency
	BaseType "Splinter of Chayula"
	SetFontSize 45
	SetTextColor 255 235 235 255            # TEXTCOLOR:	 Splinter
	SetBorderColor 210 20 210 255           # BORDERCOLOR:	 Chayula
	SetBackgroundColor 65 20 80             # BACKGROUND:	 Breach
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 1 Yellow Hexagon

Show # %H5 %C4 $tier->t2 $type->currency->splinters
	Class Currency
	BaseType "Splinter of Esh" "Splinter of Tul" "Splinter of Uul-Netol" "Splinter of Xoph"
	SetFontSize 45
	SetTextColor 255 235 235 255            # TEXTCOLOR:	 Splinter
	SetBorderColor 130 25 255 255           # BORDERCOLOR:	 Breach
	SetBackgroundColor 65 20 80             # BACKGROUND:	 Breach
	PlayAlertSound 2 100                    # DROPSOUND:	 Splinter Sound
	MinimapIcon 2 White Hexagon

#------------------------------------
#   [4013] Others
#------------------------------------

Show 
	Class Currency
	BaseType "Cartographer's Seal" "Imprint" "Unshaping Orb" "Vial of"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Circle

#===============================================================================================================
# [[4100]] Prophecies
#===============================================================================================================

Show # $tier->t1 $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 45
	SetTextColor 130 25 255 255             # TEXTCOLOR:	 Blessing
	SetBorderColor 130 25 255 255           # BORDERCOLOR:	 Breach
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

Show # $tier->t2 $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	DisableDropSound True
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Hexagon

Show # $tier->t3 $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Hexagon

Show # $tier->t3mapping $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 45
	SetTextColor 159 15 213 255
	SetBorderColor 159 15 213 255
	SetBackgroundColor 0 0 0 255            # BORDERCOLOR:	 Neutral T1
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 1 White Hexagon

Show # %H4 $tier->t4upgrade $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 40
	SetTextColor 159 15 213 255
	SetBorderColor 159 15 213 255
	SetBackgroundColor 0 0 0 255            # BORDERCOLOR:	 Neutral T1
	PlayEffect White Temp
	MinimapIcon 1 White Hexagon

Show # %H4 $tier->t4drop $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 40
	SetTextColor 159 15 213 255
	SetBorderColor 159 15 213 255
	SetBackgroundColor 0 0 0 255            # BORDERCOLOR:	 Neutral T1
	PlayEffect White Temp
	MinimapIcon 1 White Hexagon

Show # %H3 $tier->t4 $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 40
	SetTextColor 159 15 213 255
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 255            # BORDERCOLOR:	 Neutral T1
	PlayEffect White Temp

Show # $tier->rest $type->currency->prophecy
	Class Currency
	BaseType "Prophecy"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 159 15 213 255       # BACKGROUND:	 Special
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 1 Yellow Circle

#===============================================================================================================
# [[4200]] Divination cards (yes the strange sorting is intended)
#===============================================================================================================

#------------------------------------
#   [4201] Exceptions to prevent ident. mistakes
#------------------------------------

Show # $tier->ex $type->divination
	Class "Divination"
	BaseType "The Demoness" "The Wolf's Legacy" "The Wolf's Shadow"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 100 150 255            # BORDERCOLOR:	 Divi T4
	SetBackgroundColor 145 215 230 225      # BACKGROUND:	 Divi T4
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Triangle

Show # $tier->ex $type->divination
	Class "Divination"
	BaseType "The Master Artisan"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 100 150 255            # BORDERCOLOR:	 Divi T4
	SetBackgroundColor 145 215 230 225      # BACKGROUND:	 Divi T4
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Triangle

#------------------------------------
#   [4202] T1 - Top tier cards
#------------------------------------

Show # $tier->t1 $type->divination
	Class "Divination"
	BaseType "Abandoned Wealth" "Alluring Bounty" "Beauty Through Death" "House of Mirrors" "Hunter's Reward" "Immortal Resolve" "Nook's Crown" "Pride of the First Ones" "Seven Years Bad Luck" "Succor of the Sinless" "The Damned" "The Demon" "The Doctor" "The Dragon's Heart" "The Eye of Terror" "The Fiend" "The Immortal" "The Iron Bard" "The Nurse" "The Price of Loyalty" "The Samurai's Eye" "The Spark and the Flame" "Void of the Elements" "Wealth and Power"
	SetFontSize 45
	SetTextColor 0 0 255 255                # TEXTCOLOR:	 Divi T1
	SetBorderColor 0 0 255 255              # BORDERCOLOR:	 Divi T1
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

#------------------------------------
#   [4203] T2 - Great cards
#------------------------------------

Show # $tier->t2 $type->divination
	Class "Divination"
	BaseType "Akil's Prophecy" "Azyran's Reward" "Blessing of God" "Chaotic Disposition" "Divine Justice" "Etched in Blood" "Pride Before the Fall" "Remembrance" "Squandered Prosperity" "The Bargain" "The Cartographer" "The Celestial Justicar" "The Celestial Stone" "The Enlightened" "The Escape" "The Fishmonger" "The Landing" "The Mayor" "The Polymath" "The Queen" "The Saint's Treasure" "The Sephirot" "The Soul" "The Undaunted" "The Void" "The World Eater"
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 High Special Base
	SetBorderColor 255 255 255 255
	SetBackgroundColor 0 20 180 255         # BACKGROUND:	 Divi T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Red
	MinimapIcon 0 Red Triangle

#------------------------------------
#   [4204] T3 - Decent cards
#------------------------------------

Show # $tier->t3 $type->divination
	Class "Divination"
	BaseType "Baited Expectations" "Boon of the First Ones" "Bowyer's Dream" "Buried Treasure" "Burning Blood" "Dark Dreams" "Deathly Designs" "Dialla's Subjugation" "Emperor of Purity" "Friendship" "Humility" "Last Hope" "Lucky Deck" "Mawr Blaidd" "Rebirth" "The Artist" "The Bones" "The Brittle Emperor" "The Chains that Bind" "The Craving" "The Dapper Prodigy" "The Dark Mage" "The Dreamer" "The Endless Darkness" "The Ethereal" "The Hale Heart" "The Heroic Shot" "The Hoarder" "The Jeweller's Boon" "The Journey" "The King's Heart" "The Last One Standing" "The Life Thief" "The Offering" "The Old Man" "The Porcupine" "The Price of Protection" "The Professor" "The Risk" "The Rite of Elements" "The Sacrifice" "The Seeker" "The Side Quest" "The Skeleton" "The Throne" "The Valkyrie" "The Valley of Steel Boxes" "The Vast" "The Warlord" "The Wilted Rose" "The Wolven King's Bite" "The Wretched" "Underground Forest" "Vanity" "Volatile Power"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255
	SetBackgroundColor 50 220 240 255       # BACKGROUND:	 Divi T3
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Yellow
	MinimapIcon 2 Yellow Triangle

#------------------------------------
#   [4205] Special - Special Currency Cards
#------------------------------------

Show # %HS5 %C5 $tier->t4c $type->divination
	Class "Divination"
	BaseType "Boon of Justice" "Coveted Possession" "Demigod's Wager" "Emperor's Luck" "Harmony of Souls" "Imperial Legacy" "Loyalty" "Lucky Connections" "Monochrome" "More is Never Enough" "No Traces" "Sambodhi's Vow" "The Cacophony" "The Catalyst" "The Deal" "The Fool" "The Gemcutter" "The Innocent" "The Inventor" "The Puzzle" "The Survivalist" "The Union" "The Wrath" "Three Faces in the Dark" "Three Voices" "Vinia's Token"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 100 150 255            # BORDERCOLOR:	 Divi T4
	SetBackgroundColor 145 215 230 225      # BACKGROUND:	 Divi T4
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White
	MinimapIcon 2 White Triangle

Show # %H4 %C5 $tier->t5c $type->divination
	Class "Divination"
	BaseType "Her Mask" "Rain of Chaos" "The Flora's Gift" "The Gambler" "The Scholar"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 175 215 230 180      # BACKGROUND:	 Divi T5

#------------------------------------
#   [4206] T5 - Format trash tier cards... before
#------------------------------------

Show # %H2 %C3 $tier->t5 $type->divination
	Class "Divination"
	BaseType "A Mother's Parting Gift" "Anarchy's Price" "Audacity" "Birth of the Three" "Dark Temptation" "Destined to Crumble" "Dying Anguish" "Lantador's Lost Love" "Light and Truth" "Lingering Remnants" "Might is Right" "Prosperity" "Rain Tempter" "Rats" "The Blazing Fire" "The Carrion Crow" "The Coming Storm" "The Conduit" "The Deceiver" "The Fathomless Depths" "The Hermit" "The Incantation" "The Inoculated" "The King's Blade" "The Lich" "The Lover" "The Lunaris Priestess" "The Metalsmith's Gift" "The Oath" "The Rabid Rhoa" "The Ruthless Ceinture" "The Scarred Meadow" "The Sigil" "The Siren" "The Sun" "The Twins" "The Warden" "The Watcher" "The Web" "The Witch" "Thunderous Skies" "Tranquillity" "Turn the Other Cheek"
	SetFontSize 36
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 175 215 230 180      # BACKGROUND:	 Divi T5

#------------------------------------
#   [4207] T4 - ...showing the remaining cards
#------------------------------------

Show # %HS4 %C5 $tier->rest $type->divination
	Class "Divination"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 100 150 255            # BORDERCOLOR:	 Divi T4
	SetBackgroundColor 145 215 230 225      # BACKGROUND:	 Divi T4
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect White Temp
	MinimapIcon 2 White Triangle

#===============================================================================================================
# [[4300]] Currency - PART 4 - remaining items
#===============================================================================================================

Show # %H2
	Class Currency
	BaseType "Scroll Fragment"
	SetFontSize 28
	SetTextColor 170 158 130 165            # TEXTCOLOR:	 Currency Cosmetic 3
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

Show # %H3
	Class Currency
	SetFontSize 36
	SetTextColor 170 158 130                # TEXTCOLOR:	 Currency Cosmetic
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1

#===============================================================================================================
# [[4400]] Metamorph Items
#===============================================================================================================

Show 
	ItemLevel >= 80
	Class "Metamorph"
	SetFontSize 45
	SetTextColor 74 230 58 255              # TEXTCOLOR:	 Quest
	SetBorderColor 74 230 58                # BORDERCOLOR:	 Quest Item
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Green
	MinimapIcon 1 Green Hexagon

Show 
	Class "Metamorph"
	BaseType "Eye" "Liver"
	SetFontSize 45
	SetTextColor 74 230 58 255              # TEXTCOLOR:	 Quest
	SetBorderColor 74 230 58                # BORDERCOLOR:	 Quest Item
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Green
	MinimapIcon 1 Green Hexagon

Show 
	Class "Metamorph"
	SetFontSize 45
	SetTextColor 74 230 58 255              # TEXTCOLOR:	 Quest
	SetBorderColor 0 0 0 255
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Green Temp
	MinimapIcon 1 Green Hexagon

#===============================================================================================================
# [[4500]] Uniques!
#===============================================================================================================

#------------------------------------
#   [4501] Exceptions
#------------------------------------

Show # $type->uniques $tier->ex
	Rarity Unique
	SocketGroup WWWWWW
	BaseType "Simple Robe"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Star

Show # $tier->ex->6l $type->uniques
	LinkedSockets 6
	Rarity Unique
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 175 96 37 255            # BORDERCOLOR:	 Aspect Unique
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

#------------------------------------
#   [4502] Harbinger - Pieces
#------------------------------------

Show # $tier->ex->harbinger $type->uniques $league->harbinger
	Class Piece
	SetFontSize 45
	SetTextColor 255 255 255 255            # TEXTCOLOR:	 Cosmetic White
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 37 105 175 255       # BACKGROUND:	 Harbinger Piece
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Blue
	MinimapIcon 0 Blue Star

#------------------------------------
#   [4503] Tier 1 uniques
#------------------------------------

Show # $tier->t1 $type->uniques
	Rarity Unique
	BaseType "Ambush Mitts" "Blood Raiment" "Carnal Boots" "Crusader Boots" "Crusader Helmet" "Ezomyte Tower Shield" "Gemstone Sword" "Jewelled Foil" "Jingling Spirit Shield" "Long Staff" "Nubuck Boots" "Ornate Quiver" "Prismatic Jewel" "Prophecy Wand" "Rawhide Boots" "Ruby Flask" "Savant's Robe" "Siege Axe" "Silk Gloves" "Timeless Jewel" "Vaal Rapier" "Wyrmscale Doublet"
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 175 96 37 255            # BORDERCOLOR:	 Aspect Unique
	SetBackgroundColor 255 255 255 255      # BACKGROUND:	 T0 Drop
	PlayAlertSound 6 300                    # DROPSOUND:	 T0 Drop
	PlayEffect Red
	MinimapIcon 0 Red Star

#------------------------------------
#   [4504] Double Corrupted Uniques
#------------------------------------

Show # $type->uniques $tier->ex->2xcorrupted
	Corrupted True
	CorruptedMods >= 2
	Rarity Unique
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Star

#------------------------------------
#   [4505] Tier 2 uniques
#------------------------------------

Show # $tier->t2 $type->uniques
	Rarity Unique
	BaseType "Arcanist Gloves" "Archon Kite Shield Piece" "Assassin's Boots" "Brass Spirit Shield" "Clasped Mitts" "Coiled Staff" "Deerskin Gloves" "Elegant Ringmail" "Ezomyte Burgonet" "Ezomyte Dagger" "Glorious Plate" "Gold Ring" "Highborn Staff" "Imperial Maul" "Ivory Watchstone" "Karui Maul" "Large Hybrid Flask" "Legion Gloves" "Nightmare Mace" "Occultist's Vestment" "Rawhide Tower Shield" "Riveted Gloves" "Sanctified Life Flask" "Sapphire Flask" "Steel Ring" "Steelscale Gauntlets" "Tyrant's Sekhem" "Vaal Blade" "Zodiac Leather"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Star

Show # $tier->ex->5l $type->uniques
	LinkedSockets 5
	Rarity Unique
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Yellow
	MinimapIcon 0 Yellow Star

#------------------------------------
#   [4506] Multi-Unique bases.
#------------------------------------
# These bases have multiple uniques. One of the uniques, is a high value one
# While others are cheap. We give them a high quality display, while making a normal unique
# Sound to prevent false excitement.

Show # $tier->multileague $type->uniques
	Rarity Unique
	BaseType "Jade Amulet" "Leather Belt" "Penetrating Arrow Quiver" "Saint's Hauberk" "Sapphire Ring" "Topaz Ring" "Triumphant Lamellar" "Two-Stone Ring"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Blue
	MinimapIcon 0 Blue Star

Show # $tier->multispecial $type->uniques
	Rarity Unique
	BaseType "Crusader Gloves" "Granite Flask" "Imperial Skean" "Iron Ring" "Magistrate Crown" "Murder Boots" "Murder Mitts" "Onyx Amulet" "Stealth Boots" "Stibnite Flask" "Studded Belt" "Sulphur Flask" "Turquoise Amulet"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 175 96 37 255        # BACKGROUND:	 Unique T2
	PlayAlertSound 1 300                    # DROPSOUND:	 T1 Dropsound
	PlayEffect Blue
	MinimapIcon 0 Blue Star

#------------------------------------
#   [4507] Early Game Predictions
#------------------------------------

#Show # $tier->earlyleague $type->uniques
#	Rarity Unique
#	SetFontSize 45
#	SetTextColor 0 255 54 255
#	SetBorderColor 0 255 54 255
#	SetBackgroundColor 1 43 0 255
#	PlayAlertSound 3 300
#	PlayEffect Green
#	MinimapIcon 1 Green Star

#------------------------------------
#   [4508] Special Unique Searches
#------------------------------------

#Show # $type->uniques
#	ItemLevel >= 85
#	Rarity Unique
#	Class "Rings"
#	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
#	SetBorderColor 255 0 0
#	SetBackgroundColor 53 13 13 255         # BACKGROUND:	 Unique T3
#	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
#	PlayEffect Brown
#	MinimapIcon 2 Brown Star

Show # %D5 $tier->ex->loreweave $type->uniques
	Rarity Unique
	Class "Rings"
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 53 13 13 255         # BACKGROUND:	 Unique T3
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Brown
	MinimapIcon 2 Brown Star

Show # $tier->ex->jewels $type->uniques
	Rarity Unique
	Class "Jewel"
	BaseType "Cobalt Jewel" "Crimson Jewel" "Viridian Jewel"
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 0 240 190 240            # BORDERCOLOR:	 Special Base
	SetBackgroundColor 53 13 13 255         # BACKGROUND:	 Unique T3
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Blue
	MinimapIcon 2 Blue Star

#------------------------------------
#   [4509] Prophecy-Material Uniques
#------------------------------------

Show # %D4 $tier->prophecy $type->uniques
	Rarity Unique
	BaseType "Brass Maul" "Clasped Boots" "Cleaver" "Coral Ring" "Crude Bow" "Crusader Plate" "Crystal Wand" "Death Bow" "Fire Arrow Quiver" "Gavel" "Gilded Sallet" "Gnarled Branch" "Goathide Gloves" "Gold Amulet" "Golden Buckler" "Great Crown" "Great Mallet" "Iron Circlet" "Iron Hat" "Iron Mask" "Iron Staff" "Ironscale Boots" "Jade Hatchet" "Jagged Maul" "Latticed Ringmail" "Leather Hood" "Long Bow" "Moonstone Ring" "Ornate Sword" "Painted Buckler" "Plank Kite Shield" "Plate Vest" "Reaver Sword" "Reinforced Greaves" "Royal Bow" "Royal Staff" "Rusted Sword" "Scholar Boots" "Serrated Arrow Quiver" "Sharktooth Arrow Quiver" "Skinning Knife" "Sledgehammer" "Spiraled Wand" "Strapped Leather" "Tarnished Spirit Shield" "Velvet Gloves" "Velvet Slippers" "Vine Circlet" "War Buckler" "Wild Leather" "Woodsplitter"
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 100 37 255 200           # BORDERCOLOR:	 Prophecy Unique
	SetBackgroundColor 31 9 46 255          # BACKGROUND:	 Prophecy
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Brown
	MinimapIcon 2 Brown Star

#------------------------------------
#   [4510] Random Uniques
#------------------------------------

Show # %H5 %C4 $tier->hideable $type->uniques
	Rarity Unique
	BaseType "Abyssal Axe" "Ambusher" "Ancient Gauntlets" "Antique Greaves" "Antique Rapier" "Assassin's Garb" "Astral Plate" "Auric Mace" "Aventail Helmet" "Awl" "Baroque Round Shield" "Basket Rapier" "Bastard Sword" "Bone Armour" "Bone Circlet" "Boot Blade" "Boot Knife" "Branded Kite Shield" "Broadhead Arrow Quiver" "Bronze Gauntlets" "Bronze Sceptre" "Bronzescale Gauntlets" "Buckskin Tunic" "Burnished Spiked Shield" "Chiming Spirit Shield" "Colossal Tower Shield" "Compound Spiked Shield" "Conjurer Gloves" "Conquest Chainmail" "Copper Plate" "Corrugated Buckler" "Crusader Chainmail" "Crystal Belt" "Crystal Sceptre" "Cutthroat's Garb" "Decimation Bow" "Decorative Axe" "Deerskin Boots" "Deicide Mask" "Demon Dagger" "Demon's Horn" "Desert Brigandine" "Destiny Leather" "Destroyer Regalia" "Diamond Flask" "Dragonscale Boots" "Dragonscale Gauntlets" "Dread Maul" "Dream Mace" "Driftwood Wand" "Dusk Blade" "Elder Sword" "Embroidered Gloves" "Engraved Wand" "Estoc" "Ezomyte Axe" "Flaying Knife" "Fright Claw" "Full Scale Armour" "Gladius" "Goat's Horn" "Golden Mask" "Goliath Gauntlets" "Great Helmet" "Greater Mana Flask" "Grinning Fetish" "Harmonic Spirit Shield" "Headsman Axe" "Hellion's Paw" "Highland Blade" "Imbued Wand" "Infernal Axe" "Iron Gauntlets" "Ivory Spirit Shield" "Jagged Foil" "Karui Sceptre" "Lacquered Buckler" "Lacquered Helmet" "Laminated Kite Shield" "Lathi" "Lion Sword" "Lunaris Circlet" "Marble Amulet" "Mesh Boots" "Mesh Gloves" "Military Staff" "Mosaic Kite Shield" "Nailed Fist" "Necromancer Silks" "Opal Sceptre" "Ornate Mace" "Ornate Ringmail" "Pine Buckler" "Plague Mask" "Plated Greaves" "Platinum Kris" "Platinum Sceptre" "Poleaxe" "Polished Spiked Shield" "Primordial Staff" "Quartz Wand" "Quicksilver Flask" "Recurve Bow" "Reinforced Tower Shield" "Riveted Boots" "Rock Breaker" "Rotted Round Shield" "Sabre" "Sage's Robe" "Saintly Chainmail" "Samite Gloves" "Samite Helmet" "Satin Gloves" "Scholar's Robe" "Secutor Helm" "Sentinel Jacket" "Serpentine Staff" "Serpentscale Gauntlets" "Shadow Axe" "Shagreen Boots" "Shagreen Gloves" "Sharkskin Boots" "Short Bow" "Silk Slippers" "Sinner Tricorne" "Slaughter Knife" "Soldier Boots" "Sorcerer Gloves" "Spidersilk Robe" "Spiked Club" "Spike-Point Arrow Quiver" "Steel Gauntlets" "Stiletto" "Strapped Boots" "Studded Round Shield" "Sundering Axe" "Supreme Spiked Shield" "Terror Maul" "Thresher Claw" "Throat Stabber" "Tiger Sword" "Tomahawk" "Tribal Circlet" "Tricorne" "Twilight Blade" "Ursine Pelt" "Vaal Buckler" "Vaal Claw" "Vaal Hatchet" "Vanguard Belt" "Vile Staff" "Visored Sallet" "War Sword" "Whalebone Rapier" "Wool Gloves" "Wool Shoes" "Wrapped Mitts" "Wyrmscale Gauntlets" "Zealot Helmet"
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 175 96 37 255            # BORDERCOLOR:	 Aspect Unique
	SetBackgroundColor 0 0 0 255
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Brown
	MinimapIcon 2 Brown Star

Show # $tier->rest $type->uniques
	Rarity Unique
	SetFontSize 45
	SetTextColor 175 96 37 255              # TEXTCOLOR:	 Unique
	SetBorderColor 175 96 37 255            # BORDERCOLOR:	 Aspect Unique
	SetBackgroundColor 53 13 13 255         # BACKGROUND:	 Unique T3
	PlayAlertSound 3 300                    # DROPSOUND:	 Unique
	PlayEffect Brown
	MinimapIcon 2 Brown Star

#===============================================================================================================
# [[4600]] Quest Items and Event Items
#===============================================================================================================

Show 
	BaseType "Watchstone"
	SetFontSize 45
	SetTextColor 74 230 58 255              # TEXTCOLOR:	 Quest
	SetBorderColor 74 230 58                # BORDERCOLOR:	 Quest Item
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Green
	MinimapIcon 1 Green Hexagon

Show 
	Class "Incursion Item"
	SetFontSize 45
	SetTextColor 74 230 58 255              # TEXTCOLOR:	 Quest
	SetBorderColor 74 230 58                # BORDERCOLOR:	 Quest Item
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 2 300                    # DROPSOUND:	 Currency Sound
	PlayEffect Green
	MinimapIcon 1 Green Hexagon

Show 
	Class "Pantheon Soul" "Quest"
	SetFontSize 45
	SetBorderColor 74 230 58                # BORDERCOLOR:	 Quest Item
	PlayEffect Green
	MinimapIcon 1 Green Hexagon

#===============================================================================================================
# [[4700]] OVERRIDE AREA 4 - Insert your custom Leveling adjustments here
#===============================================================================================================

#===============================================================================================================
# [[4800]] Leveling - Flasks
#===============================================================================================================

#------------------------------------
#   [4801] Hide outdated flasks
#------------------------------------

Hide # lvl
	Quality 0
	ItemLevel >= 35
	Class "Life Flask" "Mana Flask"
	BaseType Grand Greater Large Medium Small
	SetFontSize 20
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

Hide # lvl
	Quality 0
	ItemLevel >= 53
	Class "Life Flask" "Mana Flask"
	BaseType Colossal Giant Sacred
	SetFontSize 20
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

Hide # lvl
	Quality 0
	ItemLevel >= 67
	Class "Life Flask" "Mana Flask"
	BaseType Divine Eternal Hallowed Sanctified
	SetFontSize 20
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#------------------------------------
#   [4802] Hybrid flasks (normal)
#------------------------------------

Show # %D2
	ItemLevel <= 20
	Class "Hybrid Flask"
	BaseType "Small"
	SetFontSize 40
	SetBorderColor 100 0 100                # BORDERCOLOR:	 Hybrid
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	ItemLevel <= 30
	Class "Hybrid Flask"
	BaseType "Medium"
	SetFontSize 40
	SetBorderColor 100 0 100                # BORDERCOLOR:	 Hybrid
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	ItemLevel <= 40
	Class "Hybrid Flask"
	BaseType "Large"
	SetFontSize 40
	SetBorderColor 100 0 100                # BORDERCOLOR:	 Hybrid
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	ItemLevel <= 50
	Class "Hybrid Flask"
	BaseType "Colossal"
	SetFontSize 40
	SetBorderColor 100 0 100                # BORDERCOLOR:	 Hybrid
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	ItemLevel <= 60
	Class "Hybrid Flask"
	BaseType "Sacred"
	SetFontSize 40
	SetBorderColor 100 0 100                # BORDERCOLOR:	 Hybrid
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	ItemLevel <= 67
	Class "Hybrid Flask"
	BaseType "Hallowed"
	SetFontSize 40
	SetBorderColor 100 0 100                # BORDERCOLOR:	 Hybrid
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [4803] Life Flasks - Normal (Kudos to Antnee)
#------------------------------------

Show # %D5
	ItemLevel <= 5
	Class "Life Flasks"
	BaseType "Small"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 9
	Class "Life Flasks"
	BaseType "Medium"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 14
	Class "Life Flasks"
	BaseType "Large"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 19
	Class "Life Flasks"
	BaseType "Greater"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 25
	Class "Life Flasks"
	BaseType "Grand"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 31
	Class "Life Flasks"
	BaseType "Giant"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 37
	Class "Life Flasks"
	BaseType "Colossal"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 43
	Class "Life Flasks"
	BaseType "Sacred"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 51
	Class "Life Flasks"
	BaseType "Hallowed"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 60
	Class "Life Flasks"
	BaseType "Sanctified"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 67
	Class "Life Flasks"
	BaseType "Divine"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 70
	Class "Life Flasks"
	BaseType "Eternal"
	SetFontSize 45
	SetBorderColor 120 0 0                  # BORDERCOLOR:	 Aspect Life Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [4804] Mana Flasks - Magic (Kudos to Antnee)
#------------------------------------

Show # %D5
	ItemLevel <= 5
	Class "Mana Flasks"
	BaseType "Small"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 9
	Class "Mana Flasks"
	BaseType "Medium"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 13
	Class "Mana Flasks"
	BaseType "Large"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 19
	Class "Mana Flasks"
	BaseType "Greater"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 25
	Class "Mana Flasks"
	BaseType "Grand"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 31
	Class "Mana Flasks"
	BaseType "Giant"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 37
	Class "Mana Flasks"
	BaseType "Colossal"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 43
	Class "Mana Flasks"
	BaseType "Sacred"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 51
	Class "Mana Flasks"
	BaseType "Hallowed"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 60
	Class "Mana Flasks"
	BaseType "Sanctified"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 67
	Class "Mana Flasks"
	BaseType "Divine"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D5
	ItemLevel <= 70
	Class "Mana Flasks"
	BaseType "Eternal"
	SetFontSize 45
	SetBorderColor 0 0 120                  # BORDERCOLOR:	 Aspect: Mana Flask
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [4805] Show remaining flasks
#------------------------------------

Show # %D4
	Quality 20
	ItemLevel <= 65
	Rarity <= Magic
	BaseType "Flask"
	SetFontSize 40
	SetBorderColor 255 255 255 255          # BORDERCOLOR:	 T1 highlight
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D3
	Quality >= 15
	ItemLevel <= 65
	Rarity <= Magic
	BaseType "Flask"
	SetFontSize 40
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D2
	Quality > 1
	ItemLevel <= 65
	Rarity <= Magic
	BaseType "Flask"
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D3
	ItemLevel <= 65
	Rarity <= Magic
	Class "Utility Flasks"
	SetFontSize 36
	SetBorderColor 50 200 125               # BORDERCOLOR:	 Flask
	SetBackgroundColor 25 100 75            # BACKGROUND:	 Flasks

Show # %D1
	Rarity <= Magic
	BaseType Flask
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#===============================================================================================================
# [[4900]] Leveling - Merged Rules
#===============================================================================================================

Show # %REMS1 %D5
	LinkedSockets 4
	Rarity <= Normal
	SocketGroup RGB
	Class "Body Armour" "Boots" "Gloves" "Helmets"
	SetFontSize 45
	SetTextColor 255 255 255 255
	SetBorderColor 0 140 240 255            # BORDERCOLOR:	 Leveling Strong Highlight
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

Show # %REMS1 %D5 %RVR
	LinkedSockets 4
	Rarity <= Magic
	SocketGroup RGB
	Class "Body Armour" "Boots" "Gloves" "Helmets"
	SetFontSize 45
	SetTextColor 25 95 235 255
	SetBorderColor 0 140 240 255            # BORDERCOLOR:	 Leveling Strong Highlight
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

Show # %REMS1 %D5
	LinkedSockets 4
	Rarity Rare
	SocketGroup RGB
	Class "Body Armour" "Boots" "Gloves" "Helmets"
	SetFontSize 45
	SetBorderColor 0 140 240 255            # BORDERCOLOR:	 Leveling Strong Highlight
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

#===============================================================================================================
# [[5000]] Leveling - RGB Recipes
#===============================================================================================================

Show # %D3
	Width <= 2
	Height <= 2
	SocketGroup RGB
	SetFontSize 45
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D3
	Width <= 1
	Height <= 4
	SocketGroup RGB
	SetFontSize 45
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D2
	Width >= 2
	Height >= 4
	SocketGroup RGB
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

Show # %D2
	Height <= 3
	SocketGroup RGB
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipe T2

#===============================================================================================================
# [[5100]] Leveling - RARES
#===============================================================================================================

#------------------------------------
#   [5101] Leveling rares - specific items
#------------------------------------

Show # %REMS1 %D4
	LinkedSockets >= 4
	Rarity Rare
	SetFontSize 45
	SetBorderColor 0 140 240 255            # BORDERCOLOR:	 Leveling Strong Highlight
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

Show # %REMS1 %D4
	Rarity Rare
	Class "Amulets" "Belts" "Rings"
	SetFontSize 45
	SetTextColor 0 0 0 255                  # TEXTCOLOR:	 High Special Base
	SetBorderColor 0 0 0 255                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 170 225 70 255       # BACKGROUND:	 Trinket T1
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

#------------------------------------
#   [5102] Leveling rares - Armors
#------------------------------------

Show # %D4
	Rarity Rare
	Class "Body" "Body Armour" "Boots" "Gloves" "Helmets" "Shields"
	SetFontSize 45
	SetBorderColor 150 150 150              # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 75 30 255          # BACKGROUND:	 Rare T1

#------------------------------------
#   [5103] Leveling rares - Caster
#------------------------------------

Show # %D4
	ItemLevel <= 15
	Rarity Rare
	Class "Rune Dagger" "Sceptres" "Wands"
	SetFontSize 45
	SetBorderColor 50 50 150                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	Rarity Rare
	Class "Rune Dagger" "Sceptres" "Wands"
	SetFontSize 40
	SetBorderColor 50 50 150                # BORDERCOLOR:	 Neutral T1
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [5104] Leveling rares - Melee Weapons
#------------------------------------

Show # %D3
	ItemLevel <= 12
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 45
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 15
	DropLevel > 5
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 45
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 20
	DropLevel > 10
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 25
	DropLevel > 15
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 30
	DropLevel > 20
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 35
	DropLevel > 25
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 40
	DropLevel > 30
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 45
	DropLevel > 35
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 50
	DropLevel > 40
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 55
	DropLevel > 45
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 60
	DropLevel > 50
	Rarity Rare
	Class "Claws" "Dagger" "One Hand" "Two"
	SetFontSize 40
	SetBorderColor 150 50 50                # BORDERCOLOR:	 Melee Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [5105] Leveling rares - Ranged
#------------------------------------

Show # %D3
	ItemLevel <= 12
	Rarity Rare
	Class "Bows"
	SetFontSize 45
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 15
	DropLevel > 5
	Rarity Rare
	Class "Bows"
	SetFontSize 45
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 20
	DropLevel > 10
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 25
	DropLevel > 15
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 30
	DropLevel > 20
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 35
	DropLevel > 25
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 40
	DropLevel > 30
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 45
	DropLevel > 35
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 50
	DropLevel > 40
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 55
	DropLevel > 45
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	ItemLevel < 60
	DropLevel > 50
	Rarity Rare
	Class "Bows"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [5106] Leveling rares - Quivers
#------------------------------------

Show # %D3
	ItemLevel < 12
	Rarity Rare
	Class "Quivers"
	SetFontSize 45
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D3
	Rarity Rare
	Class "Quivers"
	SetFontSize 40
	SetBorderColor 50 150 150               # BORDERCOLOR:	 Bow Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [5107] Leveling rares - remaining rules
#------------------------------------

Show # %D2
	Width <= 1
	Height <= 3
	Rarity Rare
	SetFontSize 36
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D2
	Width <= 2
	Height <= 2
	Rarity Rare
	SetFontSize 36
	SetBorderColor 120 120 120              # BORDERCOLOR:	 Rares: small
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

Show # %D1
	Rarity Rare
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 219            # BACKGROUND:	 Neutral T4

#===============================================================================================================
# [[5200]] Leveling - Useful items
#===============================================================================================================

#------------------------------------
#   [5201] Linked gear - 4links
#------------------------------------

Show # %D3 %REMS1
	LinkedSockets >= 4
	Rarity <= Normal
	SetFontSize 45
	SetTextColor 255 255 255 255
	SetBorderColor 0 140 240 255            # BORDERCOLOR:	 Leveling Strong Highlight
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

Show # %D3 %REMS1 %RVR
	LinkedSockets >= 4
	Rarity <= Magic
	SetFontSize 45
	SetTextColor 25 95 235 255
	SetBorderColor 0 140 240 255            # BORDERCOLOR:	 Leveling Strong Highlight
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2
	PlayAlertSound 12 300                   # DROPSOUND:	 Underrated Leveling Sound

#------------------------------------
#   [5202] Linked gear - 3links
#------------------------------------

Show # %D2
	LinkedSockets >= 3
	ItemLevel <= 16
	Rarity <= Magic
	Class "Body Armour" "Boots" "Gloves" "Helmets" "Rune Dagger" "Sceptres" "Shields" "Wands"
	SetFontSize 36
	SetBorderColor 0 120 120 255            # BORDERCOLOR:	 3Link
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	LinkedSockets >= 3
	ItemLevel <= 24
	Rarity <= Magic
	SetBorderColor 0 120 120 255            # BORDERCOLOR:	 3Link
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

#------------------------------------
#   [5203] Act1
#------------------------------------

# Certain trinkets in act 1 provide quite a definitive advantage and can be used for recipes

Show # %D4
	ItemLevel <= 16
	Rarity <= Normal
	BaseType "Coral Ring" "Iron Ring" "Leather Belt" "Ruby Ring" "Rustic Sash" "Sapphire Ring" "Topaz Ring"
	SetFontSize 45
	SetTextColor 255 255 255 255
	SetBorderColor 100 100 100 255          # BORDERCOLOR:	 Aspect Small Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D4 %RVR
	ItemLevel <= 16
	Rarity <= Magic
	BaseType "Coral Ring" "Iron Ring" "Leather Belt" "Ruby Ring" "Rustic Sash" "Sapphire Ring" "Topaz Ring"
	SetFontSize 45
	SetTextColor 25 95 235 255
	SetBorderColor 100 100 100 255          # BORDERCOLOR:	 Aspect Small Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

# Getting access to movementspeed boots early on is very useful/important

Show # %D2
	ItemLevel <= 16
	Rarity Magic
	Class "Boots"
	SetFontSize 45
	SetTextColor 25 95 235 255              # TEXTCOLOR:	 Leveling Strong Highlight
	SetBorderColor 100 100 100 255          # BORDERCOLOR:	 Aspect Small Leveling
	SetBackgroundColor 0 0 0 255            # BACKGROUND:	 Neutral T2

Show # %D2
	ItemLevel <= 16
	Rarity <= Magic
	Class "Amulets" "Belts" "Rings"
	SetFontSize 40
	SetBorderColor 100 100 100 255          # BORDERCOLOR:	 Aspect Small Leveling

Show # %D2
	ItemLevel <= 16
	Rarity Magic
	Class "Rune Dagger" "Sceptres" "Wands"
	SetFontSize 36
	SetBorderColor 50 50 150                # BORDERCOLOR:	 Neutral T1

#------------------------------------
#   [5204] Act 2+3
#------------------------------------

# We can also give boots an extra highlight, that being said, a player has likely obtained movementspeed boots at that point, so we're hiding it on higher  strictnesses

Show # %D2
	ItemLevel <= 24
	Rarity Magic
	Class "Boots"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

# Act 2 and 3 hosts several high lightning damage sources. We highlight topaz rings to help us out. On top of that we highlight a plethore of stat amulets and some belts.

Show # %D2
	ItemLevel <= 36
	Rarity <= Magic
	BaseType "Agate Amulet" "Amber Amulet" "Citrine Amulet" "Heavy Belt" "Jade Amulet" "Lapis Amulet" "Leather Belt" "Onyx Amulet" "Rustic Sash" "Topaz Ring" "Turquoise Amulet" "Two-Stone Ring"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5205] Act 4+5+6
#------------------------------------
# Act 4-6 have a highly varying damage composition
# However several of the strongest elemental attacks are fire-typed

Show # %D1
	ItemLevel <= 50
	ItemLevel >= 36
	Rarity <= Magic
	BaseType "Onyx Amulet" "Ruby Ring" "Two-Stone Ring"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5206] Optional Recipes
#------------------------------------

#Show # summoner recipe shield
#	ItemLevel < 40
#	BaseType "Bone Spirit Shield"
#	SetBorderColor 100 100 100 255          # BORDERCOLOR:	 Leveling: strong highlight

#------------------------------------
#   [5207] 20% quality items for those strange people who want them
#------------------------------------

#Show # quality, lvl, nonmf
#	Quality 20
#	ItemLevel <= 60
#	Rarity <= Magic
#	Class "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Gloves" "Helmets" "One Hand" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Cosmetic: Neutral Highlight
#	SetBackgroundColor 75 75 75 255         # BACKGROUND:	 Recipes

#===============================================================================================================
# [[5300]] Leveling - natural weapon progression
#===============================================================================================================

#------------------------------------
#   [5301] Quivers - Progression
#------------------------------------

# Quivers - early gear acquisition

Show # %D2
	ItemLevel <= 16
	Rarity <= Magic
	BaseType "Serrated Arrow Quiver"
	SetFontSize 40
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

# Quivers - possible upgrades

Show # %D2
	ItemLevel <= 24
	Rarity <= Magic
	BaseType "Serrated Arrow Quiver" "Two-Point Arrow Quiver"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

# Quivers - first appearance of broadhead arrow quivers

Show # %D2
	ItemLevel < 35
	Rarity <= Magic
	BaseType "Broadhead Arrow Quiver"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D1
	ItemLevel <= 48
	Rarity <= Magic
	BaseType "Broadhead Arrow Quiver" "Penetrating Arrow Quiver" "Spike-Point Arrow Quiver"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5302] Progression - Part 1 1-11
#------------------------------------

Show # %D2
	ItemLevel <= 9
	DropLevel >= 5
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 11
	DropLevel >= 8
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5303] Progression - Part 2 11-26
#------------------------------------

Show # %D2
	ItemLevel <= 14
	DropLevel >= 11
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 16
	DropLevel >= 13
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 18
	DropLevel >= 16
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 20
	DropLevel >= 18
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 22
	DropLevel >= 20
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 24
	DropLevel >= 22
	Rarity <= Magic
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5304] Progression - Part 3 26-65
#------------------------------------

Show # %D2
	ItemLevel <= 26
	DropLevel >= 24
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 28
	DropLevel >= 26
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 30
	DropLevel >= 28
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 32
	DropLevel >= 30
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 34
	DropLevel >= 32
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 36
	DropLevel >= 34
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 40
	DropLevel >= 38
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 42
	DropLevel >= 40
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 44
	DropLevel >= 42
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 46
	DropLevel >= 44
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 48
	DropLevel >= 46
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 50
	DropLevel >= 48
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 52
	DropLevel >= 50
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 54
	DropLevel >= 52
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 56
	DropLevel >= 54
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 58
	DropLevel >= 56
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 60
	DropLevel >= 58
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 62
	DropLevel >= 60
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 64
	DropLevel >= 62
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 66
	DropLevel >= 64
	Rarity Normal
	Class "Bows" "Claws" "Daggers" "One Hand" "Two Hand" "Warstaves"
	SetTextColor 200 200 200 210            # TEXTCOLOR:	 Neutral Priority
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#===============================================================================================================
# [[5400]] Leveling - misc normal items
#===============================================================================================================

#------------------------------------
#   [5401] Normal items - 3-Socketed Items
#------------------------------------

Show # %D2
	Sockets >= 3
	ItemLevel <= 8
	Rarity <= Magic
	Class "Boots" "Gloves" "Helmets" "Shields"
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#------------------------------------
#   [5402] Normal items - First 4-8 levels - useful items
#------------------------------------

Show # %D2
	Width <= 1
	Height <= 4
	ItemLevel <= 4
	Rarity Normal
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	Width <= 2
	Height <= 2
	ItemLevel <= 4
	Rarity Normal
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5403] Vendor Normal items - Until level 3 (Remaining)
#------------------------------------

Show # %D2
	ItemLevel <= 3
	Rarity Normal
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#Show # %D0
#	ItemLevel <= 5
#	Rarity Normal
#	Class "Body Armours"
#	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
#	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#===============================================================================================================
# [[5500]] Leveling - misc magic items
#===============================================================================================================

#------------------------------------
#   [5501] Vendor Magic items - until 3
#------------------------------------

Show # %D2
	ItemLevel <= 3
	Rarity Magic
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5

#------------------------------------
#   [5502] Vendor Magic items - until 16
#------------------------------------

Show # %D2
	Width <= 1
	Height <= 4
	ItemLevel <= 16
	Rarity Magic
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	Width <= 2
	Height <= 2
	ItemLevel <= 16
	Rarity Magic
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	ItemLevel <= 16
	Rarity Magic
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5503] Vendor Magic items - Jewellery
#------------------------------------

Show # %D2
	ItemLevel <= 24
	Rarity Magic
	Class Amulets Belts Rings
	SetFontSize 36
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D1
	ItemLevel <= 32
	Rarity Magic
	Class Amulets Belts Rings
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

#------------------------------------
#   [5504] Vendor Magic items - Until 24
#------------------------------------

Show # %D2
	Width <= 1
	Height <= 4
	ItemLevel <= 24
	Rarity Magic
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

Show # %D2
	Width <= 2
	Height <= 2
	ItemLevel <= 24
	Rarity Magic
	SetBorderColor 0 0 0                    # BORDERCOLOR:	 Neutral T1.5
	SetBackgroundColor 0 0 0 185            # BACKGROUND:	 Neutral T3

# Later on keep them shown, but really small

#===============================================================================================================
# [[5600]] HIDE LAYER 5 - Remaining Items
#===============================================================================================================

Hide # minimize junk instead of hiding (if "show")
	Class "Amulets" "Belts" "Body Armour" "Boots" "Bows" "Claws" "Daggers" "Flask" "Gloves" "Helmets" "Jewel" "One Hand" "Quivers" "Rings" "Rune Dagger" "Sceptre" "Shields" "Staves" "Two Hand" "Wand" "Warstaves"
	SetFontSize 18
	SetBorderColor 0 0 0 150                # BORDERCOLOR:	 Neutral T3
	SetBackgroundColor 0 0 0 75             # BACKGROUND:	 Hidden

#===============================================================================================================
# [[5700]] CATCHALL - if you see pink items - update or revert your changes! This should not be happening!
#===============================================================================================================

Show # safetyline!
	SetFontSize 45
	SetTextColor 255 0 255 255              # TEXTCOLOR:	 Error
	SetBorderColor 255 0 255 255            # BORDERCOLOR:	 Error

#===============================================================================================================
# [[5800]] Special thanks to!
#===============================================================================================================
#
# SPECIAL THANKS:
# Tobnac & Haggis - I'd need to a document to list everything they've done. Building www.FilterBlade.xyz together is just a single example.
#
# PATREON ( https://www.patreon.com/Neversink ):
# Mike E., Justin F., Henry G., Aaron, Greg D., Reilly M., Jon P., Ryndaar, Matt O., Dmitry R, "Megatron", "The One Guy What's His Name Again?"
# You guys are awesome, thanks!
#
# COMMUNITY & FRIENDS:
# C4pture, MrPing, Mighty, Antnee, Ghudda, Malchron, ZiggyD, Zizaran, Helmannn, StarRune, TheZensei, Eruyome!
#
# Special thanks to the supporters, stream-viewers and my guild :)
# Everyone who provided feedback on my thread/github and on reddit.
#
# GRINDING GEAR GAMES with a special thanks to: Bex, Chris, Jonathan 
#
# Script by NeverSink
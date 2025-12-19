// Advanced Skyblock & Automation Integration
// Late-game QoL and resource multiplication
import mods.gregtech.recipe.RecipeMap;

// ==========================================
// ADVANCED SIEVE PROCESSING
// ==========================================

// Auto-sieve with GregTech automation
<recipemap:macerator>.recipeBuilder()
    .inputs(<excompressum:compressed_block:0> * 1) // Compressed Cobble
    .outputs(<minecraft:gravel> * 9)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

<recipemap:macerator>.recipeBuilder()
    .inputs(<minecraft:gravel> * 1)
    .outputs(<minecraft:sand> * 1)
    .chancedOutput(<exnihilocreatio:item_ore_iron:2>, 1000, 250)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

// Sieve mesh recycling
<recipemap:assembler>.recipeBuilder()
    .inputs(<exnihilocreatio:item_mesh:4> * 1) // Damaged Diamond Mesh
    .inputs(<gregtech:meta_wire_fine:1028> * 16) // Fine Diamond Wire
    .outputs(<exnihilocreatio:item_mesh:4>) // Repaired
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// PACKAGED AUTO/EXCRAFTING
// ==========================================

// Packaged recipes for complex items
recipes.remove(<packagedexcrafting:combination_crafter>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<packagedauto:packager> * 1)
    .inputs(<extendedcrafting:table_advanced> * 1)
    .inputs(<gregtech:meta_item_1:427> * 4) // Workstation
    .inputs(<appliedenergistics2:material:44> * 4) // Logic Processor
    .fluidInputs([<liquid:soldering_alloy> * 576])
    .outputs(<packagedexcrafting:combination_crafter>)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// ADVANCED RESOURCE MULTIPLICATION
// ==========================================

// 5x ore processing with full byproducts
<recipemap:macerator>.recipeBuilder()
    .inputs(<minecraft:iron_ore> * 1)
    .outputs(<gregtech:meta_ore_crushed:1033> * 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

<recipemap:ore_washer>.recipeBuilder()
    .inputs(<gregtech:meta_ore_crushed:1033> * 1)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:meta_ore_purified:1033> * 1)
    .outputs(<gregtech:meta_dust_tiny:1060> * 1) // Nickel
    .chancedOutput(<gregtech:meta_dust:21>, 1400, 850) // Tin
    .duration(300)
    .EUt(16)
    .buildAndRegister();

<recipemap:thermal_centrifuge>.recipeBuilder()
    .inputs(<gregtech:meta_ore_purified:1033> * 1)
    .outputs(<gregtech:meta_dust:1033> * 2) // 2x Iron Dust
    .outputs(<gregtech:meta_dust_small:1060> * 1) // Small Nickel
    .chancedOutput(<gregtech:meta_dust_tiny:21>, 2000, 1000) // Tin
    .duration(500)
    .EUt(60)
    .buildAndRegister();

<recipemap:chemical_bath>.recipeBuilder()
    .inputs(<gregtech:meta_ore_purified:1033> * 1)
    .fluidInputs([<liquid:mercury> * 100])
    .outputs(<gregtech:meta_dust:1033> * 3) // 3x Iron Dust!
    .chancedOutput(<gregtech:meta_dust_small:1060>, 7000, 580)
    .duration(400)
    .EUt(60)
    .buildAndRegister();

// ==========================================
// ADVANCED FLUID PROCESSING
// ==========================================

// UU-Matter for creative item replication
<recipemap:mass_fabricator>.recipeBuilder()
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:uu_matter> * 1])
    .duration(4000)
    .EUt(1920)
    .buildAndRegister();

// Replicator recipes for rare materials
<recipemap:replicator>.recipeBuilder()
    .inputs(<gregtech:meta_dust:1028> * 1) // Diamond Dust as template
    .fluidInputs([<liquid:uu_matter> * 1000])
    .outputs(<minecraft:diamond> * 4)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();

<recipemap:replicator>.recipeBuilder()
    .inputs(<minecraft:ender_pearl> * 1) // Ender Pearl template
    .fluidInputs([<liquid:uu_matter> * 500])
    .outputs(<minecraft:ender_pearl> * 3)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// CROSS-MOD AUTOMATION HELPERS
// ==========================================

// Botania rune automation
<recipemap:assembler>.recipeBuilder()
    .inputs(<botania:manaresource:0> * 1) // Manasteel
    .inputs(<botania:manaresource:23> * 8) // Mana Powder
    .inputs(<minecraft:stone> * 4)
    .fluidInputs([<liquid:mana> * 500])
    .outputs(<botania:rune:0>) // Water Rune
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// Blood Magic slate automation
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:stone> * 1)
    .fluidInputs([<liquid:lifeessence> * 1000])
    .outputs(<bloodmagic:slate:0>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

<recipemap:assembler>.recipeBuilder()
    .inputs(<bloodmagic:slate:0> * 1)
    .fluidInputs([<liquid:lifeessence> * 2000])
    .outputs(<bloodmagic:slate:1>)
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// Thaumcraft vis crystal automation
<recipemap:autoclave>.recipeBuilder()
    .inputs(<minecraft:quartz> * 1)
    .fluidInputs([<liquid:mana> * 1000])
    .outputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}))
    .duration(600)
    .EUt(60)
    .buildAndRegister();

// ==========================================
// STORAGE OPTIMIZATION
// ==========================================

// Super compressed blocks
<recipemap:compressor>.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed:1033> * 9) // Compressed Iron
    .outputs(<gregtech:meta_block_compressed:2000> * 1) // Super Compressed Iron (custom)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// ME Storage automation
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:38> * 1) // 64k Component
    .inputs(<gregtech:meta_item_1:427> * 2) // Workstation
    .inputs(<gregtech:meta_plate:1095> * 4) // Plastic Plate
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<appliedenergistics2:material:38> * 2) // 2x 64k Component
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// POWER GENERATION OPTIMIZATION
// ==========================================

// Upgraded fuel rods
<recipemap:assembler>.recipeBuilder()
    .inputs(<bigreactors:fuelrod> * 1)
    .inputs(<gregtech:meta_plate:111> * 4) // Iridium Plate
    .inputs(<gregtech:meta_item_1:194> * 1) // EV Field Generator
    .fluidInputs([<liquid:polytetrafluoroethylene> * 288])
    .outputs(<bigreactors:fuelrod> * 2) // Upgraded fuel rod
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// Draconic energy storage upgrade
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<draconicevolution:draconic_energy_core> * 1)
    .inputs(<gregtech:meta_item_1:194> * 8) // EV Field Generator
    .inputs(<avaritia:resource:1> * 4) // Crystal Matrix
    .inputs(<appliedenergistics2:material:48> * 4) // Singularity
    .fluidInputs([<liquid:awakened_draconium> * 2304])
    .fluidInputs([<liquid:mana> * 16000])
    .outputs(<draconicevolution:draconic_energy_core> * 2)
    .duration(2400)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// ENDGAME AUTOMATION
// ==========================================

// Automatic cobblestone generation
<recipemap:rock_breaker>.recipeBuilder()
    .notConsumable(<minecraft:lava_bucket>)
    .notConsumable(<minecraft:water_bucket>)
    .outputs(<minecraft:cobblestone> * 1)
    .duration(16)
    .EUt(30)
    .buildAndRegister();

// Automatic dirt generation
<recipemap:centrifuge>.recipeBuilder()
    .inputs(<exnihilocreatio:block_dust> * 4)
    .inputs(<minecraft:sand> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:dirt> * 8)
    .duration(400)
    .EUt(30)
    .buildAndRegister();

// Automatic grass block creation
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:dirt> * 1)
    .inputs(<minecraft:wheat_seeds> * 1)
    .fluidInputs([<liquid:mana> * 100])
    .outputs(<minecraft:grass>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ==========================================
// MOB DROP AUTOMATION
// ==========================================

// Synthetic mob drops with Mystical Agriculture
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<mysticalagriculture:crafting:21> * 4) // Zombie Essence
    .inputs(<minecraft:rotten_flesh> * 1)
    .fluidInputs([<liquid:lifeessence> * 500])
    .outputs(<minecraft:rotten_flesh> * 16)
    .chancedOutput(<minecraft:iron_ingot>, 500, 100)
    .duration(300)
    .EUt(60)
    .buildAndRegister();

<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<mysticalagriculture:crafting:23> * 4) // Skeleton Essence
    .inputs(<minecraft:bone> * 1)
    .fluidInputs([<liquid:lifeessence> * 500])
    .outputs(<minecraft:bone> * 16)
    .chancedOutput(<minecraft:arrow>, 1000, 500)
    .duration(300)
    .EUt(60)
    .buildAndRegister();

// ==========================================
// CREATIVE ITEM UNLOCKS (Quest Rewards)
// ==========================================

// Creative Energy Cell (from quest reward)
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<draconicevolution:draconic_energy_core> * 8)
    .inputs(<gregtech:meta_item_1:194> * 16) // EV Field Generator
    .inputs(<avaritia:resource:5> * 1) // Infinity Catalyst
    .inputs(<appliedenergistics2:material:48> * 16) // Singularity
    .inputs(<gregtech:machine:1679> * 4) // EV Energy Hatch
    .fluidInputs([<liquid:awakened_draconium> * 9216])
    .fluidInputs([<liquid:uu_matter> * 10000])
    .outputs(<appliedenergistics2:creative_energy_cell>)
    .duration(24000)
    .EUt(7680)
    .buildAndRegister();

// Creative Tank (extreme endgame)
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<gregtech:machine:1669> * 8) // EV Fluid Tank
    .inputs(<gregtech:meta_item_1:194> * 16)
    .inputs(<avaritia:resource:5> * 1) // Infinity Catalyst
    .inputs(<appliedenergistics2:material:48> * 16)
    .fluidInputs([<liquid:polytetrafluoroethylene> * 9216])
    .fluidInputs([<liquid:uu_matter> * 10000])
    .outputs(<thermalexpansion:tank>.withTag({Level: 4b, Creative: 1b}))
    .duration(24000)
    .EUt(7680)
    .buildAndRegister();

// ==========================================
// SKYBLOCK BALANCE TWEAKS
// ==========================================

// Make lava easier to get for skyblock
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<minecraft:netherrack> * 4)
    .inputs(<minecraft:blaze_powder> * 1)
    .fluidInputs([<liquid:lava> * 100])
    .fluidOutputs([<liquid:lava> * 1000]) // 10x multiplication
    .duration(200)
    .EUt(60)
    .buildAndRegister();

// Water source blocks
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:ice> * 1)
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:water> * 2000])
    .duration(100)
    .EUt(16)
    .buildAndRegister();

// Obsidian creation without lava source
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<minecraft:stone> * 1)
    .fluidInputs([<liquid:lava> * 1000])
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:obsidian> * 1)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// ==========================================
// QUALITY OF LIFE
// ==========================================

// Faster IC2 crops with Mystical Agriculture
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<mysticalagriculture:crafting:5> * 1) // Prosperity Shard
    .inputs(<minecraft:wheat_seeds> * 1)
    .fluidInputs([<liquid:mana> * 500])
    .outputs(<mysticalagriculture:crafting:0> * 16) // Inferium Essence
    .duration(400)
    .EUt(60)
    .buildAndRegister();

// Enchantment automation
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:book> * 1)
    .inputs(<minecraft:diamond> * 1)
    .inputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}) * 4)
    .fluidInputs([<liquid:mana> * 1000])
    .outputs(<minecraft:enchanted_book>) // Random enchantment
    .duration(800)
    .EUt(120)
    .buildAndRegister();

// Fast tree farming
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:sapling:0> * 1)
    .inputs(<minecraft:bone_meal> * 4)
    .fluidInputs([<liquid:mana> * 100])
    .outputs(<minecraft:log:0> * 8)
    .outputs(<minecraft:sapling:0> * 2)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

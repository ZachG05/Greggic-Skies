// Expert Mode Integration - Early Game (Pre-LV to LV)
// Forces cross-mod dependencies for true expert progression
import mods.gregtech.recipe.RecipeMap;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Compactor;
import mods.tconstruct.Casting;
import mods.bloodmagic.AlchemyTable;
import mods.botania.RuneAltar;

// ==========================================
// CRAFTING TABLE RESTRICTIONS
// ==========================================

// Remove vanilla crafting table - force using Tinkers' Crafting Station
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<tconstruct:crafting_station>, [
    [<ore:plankWood>, <ore:plankWood>],
    [<ore:stickWood>, <ore:stickWood>]
]);

// ==========================================
// TOOL INTEGRATION - Tinkers + GregTech
// ==========================================

// Require GregTech steel for Tinkers' tool forge
recipes.remove(<tconstruct:toolforge>);
recipes.addShaped(<tconstruct:toolforge>, [
    [<gregtech:meta_block_compressed:1071>, <gregtech:meta_block_compressed:1071>, <gregtech:meta_block_compressed:1071>],
    [<ore:stickSteel>, <tconstruct:tooltables:3>, <ore:stickSteel>],
    [<ore:stickSteel>, null, <ore:stickSteel>]
]);

// Seared bricks require GregTech materials
furnace.remove(<tconstruct:materials:0>);
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<exnihilocreatio:block_dust> * 2)
    .inputs(<minecraft:gravel> * 2)
    .outputs(<tconstruct:materials:0> * 8)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

// ==========================================
// MEKANISM INTEGRATION
// ==========================================

// Osmium requires GregTech processing
furnace.remove(<mekanism:ingot:1>);
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<mekanism:dust:2> * 1) // Osmium Dust
    .outputs(<mekanism:ingot:1> * 1)
    .property("temperature", 1200)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// Steel Casing requires GregTech steel
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped(<mekanism:basicblock:8> * 4, [
    [<gregtech:meta_plate:1071>, <ore:ingotOsmium>, <gregtech:meta_plate:1071>],
    [<ore:ingotOsmium>, <ore:circuitBasic>, <ore:ingotOsmium>],
    [<gregtech:meta_plate:1071>, <ore:ingotOsmium>, <gregtech:meta_plate:1071>]
]);

// Control Circuit needs AE2 components
recipes.remove(<mekanism:controlcircuit:0>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<ore:circuitBasic> * 1)
    .inputs(<appliedenergistics2:material:23> * 1) // Engineering Processor
    .inputs(<gregtech:meta_plate:1071> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<mekanism:controlcircuit:0>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// ==========================================
// ENDER IO INTEGRATION
// ==========================================

// Machine Chassis requires multiple mods
recipes.remove(<enderio:item_material:0>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1033> * 4) // Iron Plate
    .inputs(<mekanism:basicblock:8> * 1) // Steel Casing
    .inputs(<gregtech:meta_item_1:400> * 1) // Basic Circuit
    .inputs(<thermalfoundation:material:32> * 2) // Copper Gear
    .fluidInputs([<liquid:construction_foam> * 100])
    .outputs(<enderio:item_material:0>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// Pulsating Crystal requires Botania mana
mods.botania.ManaInfusion.addInfusion(<enderio:item_material:14>, <minecraft:diamond>, 10000);

// Vibrant Crystal needs Blood Magic
mods.bloodmagic.AlchemyTable.addRecipe(<enderio:item_material:15>, [
    <enderio:item_material:14>,
    <minecraft:ender_pearl>,
    <minecraft:glowstone_dust>,
    <botania:manaresource:0>
], 1000, 200, 1);

// ==========================================
// APPLIED ENERGISTICS 2 INTEGRATION
// ==========================================

// Certus Quartz Seed requires GregTech Autoclave
recipes.remove(<appliedenergistics2:crystal_seed:600>);
<recipemap:autoclave>.recipeBuilder()
    .inputs(<appliedenergistics2:material:2> * 1) // Certus Dust
    .fluidInputs([<liquid:water> * 200])
    .outputs(<appliedenergistics2:crystal_seed:600>)
    .duration(600)
    .EUt(24)
    .buildAndRegister();

// ME Controller needs cross-mod materials
recipes.remove(<appliedenergistics2:controller>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:12> * 4) // Engineering Processor
    .inputs(<appliedenergistics2:quartz_vibrant_glass> * 4)
    .inputs(<gregtech:meta_plate:1071> * 4) // Steel Plate
    .inputs(<enderio:item_material:14> * 2) // Pulsating Crystal
    .fluidInputs([<liquid:polyethylene> * 288])
    .outputs(<appliedenergistics2:controller>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// THERMAL EXPANSION INTEGRATION
// ==========================================

// Machine Frame needs GregTech + Mekanism
recipes.remove(<thermalexpansion:frame:0>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1033> * 4) // Iron Plate
    .inputs(<thermalfoundation:material:32> * 4) // Copper Gear
    .inputs(<mekanism:basicblock:8> * 1) // Steel Casing
    .inputs(<ore:blockGlass> * 2)
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<thermalexpansion:frame:0>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// Redstone Reception Coil needs EnderIO
recipes.remove(<thermalfoundation:material:513>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:redstone> * 8)
    .inputs(<enderio:item_material:4> * 2) // Conduit Binder
    .inputs(<gregtech:meta_plate:330> * 4) // Electrum Plate
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<thermalfoundation:material:513>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// ==========================================
// BOTANIA INTEGRATION
// ==========================================

// Mana Pool requires Tinkers' seared brick
recipes.remove(<botania:pool:0>);
recipes.addShaped(<botania:pool:0>, [
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <botania:livingrock>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
]);

// Runic Altar needs GregTech steel
recipes.remove(<botania:runealtar>);
recipes.addShaped(<botania:runealtar>, [
    [<botania:livingrock>, <gregtech:meta_plate:1071>, <botania:livingrock>],
    [null, <botania:livingrock>, null],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

// Mana Spreader needs Forestry
recipes.remove(<botania:spreader:0>);
recipes.addShaped(<botania:spreader:0>, [
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
    [<forestry:thermionic_tubes:0>, <botania:petal:*>, null],
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
]);

// ==========================================
// FORESTRY INTEGRATION
// ==========================================

// Sturdy Casing requires GregTech bronze
recipes.remove(<forestry:sturdy_machine>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1008> * 8) // Bronze Plate
    .inputs(<minecraft:redstone> * 4)
    .inputs(<ore:circuitBasic> * 1)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:sturdy_machine>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// Carpenter needs Thermal + GregTech
recipes.remove(<forestry:carpenter>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<forestry:sturdy_machine> * 1)
    .inputs(<thermalfoundation:material:32> * 2) // Copper Gear
    .inputs(<gregtech:meta_plate:1008> * 4) // Bronze Plate
    .inputs(<minecraft:crafting_table> * 1)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<forestry:carpenter>)
    .duration(300)
    .EUt(30)
    .buildAndRegister();

// ==========================================
// PNEUMATICCRAFT INTEGRATION
// ==========================================

// Pressure Chamber Wall needs GregTech steel
recipes.remove(<pneumaticcraft:pressure_chamber_wall>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1071> * 8) // Steel Plate
    .inputs(<ore:blockGlass> * 1)
    .fluidInputs([<liquid:concrete> * 576])
    .outputs(<pneumaticcraft:pressure_chamber_wall> * 4)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

// PCB Blueprint needs AE2 processors
recipes.remove(<pneumaticcraft:pcb_blueprint>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<pneumaticcraft:plastic:0> * 4)
    .inputs(<appliedenergistics2:material:16> * 1) // Logic Processor
    .inputs(<gregtech:meta_wire_fine:1002> * 16) // Fine Copper Wire
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<pneumaticcraft:pcb_blueprint>)
    .duration(400)
    .EUt(60)
    .buildAndRegister();

// ==========================================
// MYSTICAL AGRICULTURE INTEGRATION
// ==========================================

// Inferium Essence requires multiple sources
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<botania:manaresource:23> * 1) // Mana Powder
    .inputs(<minecraft:wheat_seeds> * 4)
    .fluidInputs([<liquid:lifeessence> * 100]) // Blood Magic
    .outputs(<mysticalagriculture:crafting:0> * 4) // Inferium Essence
    .duration(300)
    .EUt(30)
    .buildAndRegister();

// Prosperity Shard needs Thaumcraft vis
recipes.remove(<mysticalagriculture:crafting:5>);
<recipemap:autoclave>.recipeBuilder()
    .inputs(<minecraft:diamond> * 1)
    .fluidInputs([<liquid:mana> * 500]) // Botania mana
    .outputs(<mysticalagriculture:crafting:5>)
    .duration(800)
    .EUt(60)
    .buildAndRegister();

// ==========================================
// BLOOD MAGIC INTEGRATION
// ==========================================

// Blood Altar Tier 1 needs cross-mod
recipes.remove(<bloodmagic:altar>);
recipes.addShaped(<bloodmagic:altar>, [
    [<gregtech:meta_plate:330>, null, <gregtech:meta_plate:330>], // Electrum
    [<minecraft:stone>, <botania:livingrock>, <minecraft:stone>],
    [<gregtech:meta_block_compressed:330>, <minecraft:furnace>, <gregtech:meta_block_compressed:330>]
]);

// Weak Blood Orb requires GregTech diamond
recipes.remove(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}));
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), 
    <gregtech:meta_gem:1028>, 0, 2000, 5, 5); // GregTech Diamond

// ==========================================
// THAUMCRAFT INTEGRATION (if available)
// ==========================================

// Salis Mundus requires multiple mods
recipes.remove(<thaumcraft:salis_mundus>);
<recipemap:mixer>.recipeBuilder()
    .inputs(<minecraft:redstone> * 2)
    .inputs(<botania:manaresource:23> * 1) // Mana Powder
    .inputs(<minecraft:flint> * 1)
    .inputs(<minecraft:bowl> * 1)
    .outputs(<thaumcraft:salis_mundus> * 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ==========================================
// EXTREME REACTORS INTEGRATION
// ==========================================

// Reactor Casing needs GregTech steel + Mekanism
recipes.remove(<bigreactors:reactorcasing>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1071> * 4) // Steel Plate
    .inputs(<mekanism:basicblock:8> * 2) // Steel Casing
    .inputs(<minecraft:obsidian> * 2)
    .inputs(<ore:dustGraphite> * 4)
    .fluidInputs([<liquid:concrete> * 288])
    .outputs(<bigreactors:reactorcasing> * 4)
    .duration(300)
    .EUt(60)
    .buildAndRegister();

// ==========================================
// STORAGE DRAWERS INTEGRATION
// ==========================================

// Upgrade Template needs GregTech circuit
recipes.remove(<storagedrawers:upgrade_template>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<ore:stickWood> * 4)
    .inputs(<minecraft:paper> * 2)
    .inputs(<gregtech:meta_item_1:400> * 1) // Basic Circuit
    .fluidInputs([<liquid:glue> * 100])
    .outputs(<storagedrawers:upgrade_template> * 2)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// ==========================================
// SKYBLOCK SIEVE PROGRESSION
// ==========================================

// Iron Mesh needs GregTech steel
recipes.remove(<exnihilocreatio:item_mesh:3>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_wire_fine:1033> * 32) // Fine Iron Wire
    .inputs(<ore:stickSteel> * 4)
    .outputs(<exnihilocreatio:item_mesh:3>)
    .duration(300)
    .EUt(30)
    .buildAndRegister();

// Diamond Mesh requires cross-mod
recipes.remove(<exnihilocreatio:item_mesh:4>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_wire_fine:1028> * 32) // Fine Diamond Wire
    .inputs(<enderio:item_material:14> * 2) // Pulsating Crystal
    .inputs(<appliedenergistics2:quartz_vibrant_glass> * 4)
    .fluidInputs([<liquid:mana> * 500])
    .outputs(<exnihilocreatio:item_mesh:4>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// PACKAGED AUTO/EXCRAFTING
// ==========================================

// Package Crafter needs AE2 + GregTech
recipes.remove(<packagedauto:packager>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:44> * 1) // Logic Processor
    .inputs(<gregtech:meta_plate:1071> * 8) // Steel Plate
    .inputs(<thermalexpansion:frame:0> * 1)
    .inputs(<minecraft:crafting_table> * 1)
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<packagedauto:packager>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// EARLY POWER GENERATION
// ==========================================

// Steam Dynamo requires multi-mod
recipes.remove(<thermalexpansion:dynamo:0>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<thermalexpansion:frame:0> * 1)
    .inputs(<gregtech:meta_item_1:101> * 1) // LV Steam Turbine
    .inputs(<thermalfoundation:material:514> * 2) // Transmission Coil
    .inputs(<forestry:thermionic_tubes:5> * 1) // Copper Electron Tube
    .fluidInputs([<liquid:redstone> * 288])
    .outputs(<thermalexpansion:dynamo:0>)
    .duration(300)
    .EUt(30)
    .buildAndRegister();

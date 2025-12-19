// Expert Mode Integration - MV Tier
// Advanced cross-mod dependencies
import mods.gregtech.recipe.RecipeMap;
import mods.thermalexpansion.Transposer;
import mods.bloodmagic.AlchemyArray;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;

// ==========================================
// BOTANIA MV INTEGRATION
// ==========================================

// Terrasteel requires GregTech steel alloy
mods.botania.RuneAltar.removeRecipe(<botania:manaresource:4>);
mods.botania.RuneAltar.addRecipe(<botania:manaresource:4>, [
    <botania:manaresource:0>, // Manasteel
    <gregtech:meta_ingot:1071>, // Steel
    <botania:manaresource:1>, // Mana Pearl
    <botania:manaresource:2>, // Mana Diamond
    <appliedenergistics2:material:1> // Charged Certus Quartz
], 50000);

// Gaia Spirit synthesis requires multi-mod
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<botania:manaresource:14> * 1) // Pixie Dust
    .inputs(<bloodmagic:slate:2> * 1) // Demonic Slate
    .inputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 1)
    .fluidInputs([<liquid:lifeessence> * 1000])
    .outputs(<botania:manaresource:5> * 2) // Gaia Spirit
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// Elementium needs Mekanism infusion
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:7>);
mods.botania.ElvenTrade.addRecipe([<botania:manaresource:7> * 2], [
    <botania:manaresource:0>, // Manasteel
    <mekanism:enrichedalloy>, // Enriched Alloy
    <gregtech:meta_plate:1082> // Tungstensteel Plate
]);

// ==========================================
// BLOOD MAGIC MV TIER
// ==========================================

// Apprentice Blood Orb needs AE2
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), 
    <appliedenergistics2:material:1>, 1, 5000, 5, 5); // Charged Certus

// Demonic Slate requires EnderIO alloy
recipes.remove(<bloodmagic:slate:2>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<bloodmagic:slate:1> * 1) // Imbued Slate
    .inputs(<enderio:item_alloy_ingot:0> * 4) // Electrical Steel
    .inputs(<gregtech:meta_plate:1071> * 4) // Steel Plate
    .fluidInputs([<liquid:lifeessence> * 2000])
    .outputs(<bloodmagic:slate:2>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// Rune of Sacrifice integration
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_sacrifice>, 
    <gregtech:meta_item_1:102>, // MV Electric Motor
    <botania:rune:3>); // Water Rune

// ==========================================
// THAUMCRAFT MV INTEGRATION
// ==========================================

// Thaumium requires GregTech processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<minecraft:iron_ingot> * 1)
    .inputs(<thaumcraft:salis_mundus> * 1)
    .fluidInputs([<liquid:mana> * 250])
    .outputs(<thaumcraft:ingot:0> * 2) // Thaumium
    .property("temperature", 1500)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// Vis Resonator needs multi-mod
recipes.remove(<thaumcraft:vis_resonator>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_plate:330> * 4) // Electrum Plate
    .inputs(<thaumcraft:ingot:0> * 2) // Thaumium
    .inputs(<botania:manaresource:2> * 1) // Mana Diamond
    .inputs(<appliedenergistics2:material:12> * 1) // Engineering Processor
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<thaumcraft:vis_resonator>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// Arcane Workbench upgrade
recipes.remove(<thaumcraft:arcane_workbench>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:crafting_table> * 1)
    .inputs(<thaumcraft:salis_mundus> * 4)
    .inputs(<gregtech:meta_item_1:401> * 2) // MV Circuit
    .inputs(<botania:livingwood> * 8)
    .fluidInputs([<liquid:mana> * 1000])
    .outputs(<thaumcraft:arcane_workbench>)
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// ENDER IO MV ALLOYS
// ==========================================

// Dark Steel requires Blood Magic
recipes.remove(<enderio:item_alloy_ingot:6>);
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:0> * 1) // Electrical Steel
    .inputs(<bloodmagic:slate:0> * 1) // Blank Slate
    .outputs(<enderio:item_alloy_ingot:6> * 2) // Dark Steel
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// Soularium needs actual souls (Botania)
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<minecraft:soul_sand> * 4)
    .inputs(<botania:manaresource:8> * 1) // Gaia Ingot
    .outputs(<enderio:item_alloy_ingot:7> * 4) // Soularium
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// End Steel requires End dimension materials
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:6> * 1) // Dark Steel
    .inputs(<minecraft:end_stone> * 4)
    .inputs(<gregtech:meta_dust:66> * 1) // Osmium
    .fluidInputs([<liquid:obsidian> * 288])
    .outputs(<enderio:item_alloy_ingot:8> * 2) // End Steel
    .property("temperature", 2400)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// MEKANISM MV TIER
// ==========================================

// Elite Control Circuit needs multiple processors
recipes.remove(<mekanism:controlcircuit:1>);
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<mekanism:controlcircuit:0> * 2)
    .inputs(<appliedenergistics2:material:23> * 2) // Engineering Processor
    .inputs(<appliedenergistics2:material:28> * 1) // Calculation Processor
    .inputs(<gregtech:meta_plate:330> * 4) // Electrum Plate
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<mekanism:controlcircuit:1> * 2)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// Enriched Alloy requires Botania
recipes.remove(<mekanism:enrichedalloy>);
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<mekanism:enrichediron> * 2)
    .inputs(<botania:manaresource:0> * 1) // Manasteel
    .outputs(<mekanism:enrichedalloy> * 3)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

// Atomic Alloy needs Thaumcraft
recipes.remove(<mekanism:atomicalloy>);
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<mekanism:enrichedalloy> * 2)
    .inputs(<thaumcraft:ingot:0> * 2) // Thaumium
    .inputs(<gregtech:meta_dust:1082> * 1) // Tungstensteel Dust
    .outputs(<mekanism:atomicalloy> * 4)
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// PNEUMATICCRAFT MV
// ==========================================

// Advanced PCB needs complex assembly
recipes.remove(<pneumaticcraft:advanced_pcb>);
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<pneumaticcraft:unassembled_pcb> * 1)
    .inputs(<appliedenergistics2:material:23> * 2) // Engineering Processor
    .inputs(<gregtech:meta_wire_fine:330> * 16) // Fine Electrum Wire
    .inputs(<mekanism:controlcircuit:0> * 1)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<pneumaticcraft:advanced_pcb>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// Compressed Iron Block needs high pressure
<recipemap:forming_press>.recipeBuilder()
    .inputs(<minecraft:iron_block> * 1)
    .inputs(<gregtech:meta_plate:1071> * 4) // Steel Plate
    .outputs(<pneumaticcraft:compressed_iron_block> * 2)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// EXTREME REACTORS MV
// ==========================================

// Reactor Controller needs AE2 + Mekanism
recipes.remove(<bigreactors:reactorcontroller>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<bigreactors:reactorcasing> * 1)
    .inputs(<appliedenergistics2:material:24> * 2) // Engineering Processor
    .inputs(<mekanism:controlcircuit:1> * 2)
    .inputs(<gregtech:meta_item_1:142> * 1) // MV Electric Piston
    .inputs(<enderio:item_alloy_ingot:0> * 4) // Electrical Steel
    .fluidInputs([<liquid:redstone> * 1152])
    .outputs(<bigreactors:reactorcontroller>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// Reactor Control Rod needs Botania runes
recipes.remove(<bigreactors:reactorcontrolrod>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<bigreactors:reactorcasing> * 2)
    .inputs(<botania:rune:1> * 1) // Fire Rune
    .inputs(<botania:rune:2> * 1) // Earth Rune
    .inputs(<minecraft:diamond> * 4)
    .inputs(<ore:dustGraphite> * 8)
    .fluidInputs([<liquid:steel> * 576])
    .outputs(<bigreactors:reactorcontrolrod>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// MYSTICAL AGRICULTURE MV
// ==========================================

// Prudentium Essence needs cross-mod
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<mysticalagriculture:crafting:0> * 4) // Inferium
    .inputs(<botania:manaresource:0> * 1) // Manasteel
    .inputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 1)
    .fluidInputs([<liquid:lifeessence> * 500])
    .outputs(<mysticalagriculture:crafting:1> * 4) // Prudentium
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// Intermedium needs more complex processing
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<mysticalagriculture:crafting:1> * 4) // Prudentium
    .inputs(<enderio:item_alloy_ingot:0> * 1) // Electrical Steel
    .inputs(<bloodmagic:slate:1> * 1) // Imbued Slate
    .fluidInputs([<liquid:mana> * 1000])
    .outputs(<mysticalagriculture:crafting:2> * 4) // Intermedium
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// APPLIED ENERGISTICS 2 MV
// ==========================================

// ME Drive needs multi-mod
recipes.remove(<appliedenergistics2:drive>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:24> * 4) // Engineering Processor
    .inputs(<enderio:item_material:14> * 2) // Pulsating Crystal
    .inputs(<gregtech:meta_plate:1071> * 8) // Steel Plate
    .inputs(<mekanism:enrichedalloy> * 4)
    .fluidInputs([<liquid:polyethylene> * 576])
    .outputs(<appliedenergistics2:drive>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// Molecular Assembler needs Botania
recipes.remove(<appliedenergistics2:molecular_assembler>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:44> * 2) // Logic Processor
    .inputs(<botania:manaresource:2> * 2) // Mana Diamond
    .inputs(<enderio:item_material:0> * 1) // Machine Chassis
    .inputs(<minecraft:crafting_table> * 1)
    .inputs(<appliedenergistics2:quartz_glass> * 4)
    .fluidInputs([<liquid:mana> * 1000])
    .outputs(<appliedenergistics2:molecular_assembler>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// THERMAL EXPANSION MV
// ==========================================

// Hardened Glass needs Thaumcraft vis
<recipemap:chemical_bath>.recipeBuilder()
    .inputs(<ore:blockGlass> * 1)
    .fluidInputs([<liquid:mana> * 250])
    .outputs(<thermalfoundation:glass:0>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

// Signalum requires multiple alloys
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<thermalfoundation:material:128> * 3) // Copper
    .inputs(<thermalfoundation:material:129> * 1) // Silver  
    .inputs(<enderio:item_material:14> * 1) // Pulsating Crystal
    .outputs(<thermalfoundation:material:133> * 4) // Signalum
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// Lumium needs Botania glimmering flowers
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<thermalfoundation:material:132> * 3) // Tin
    .inputs(<thermalfoundation:material:129> * 1) // Silver
    .inputs(<botania:shinyflower:*> * 2) // Glimmering Flower
    .outputs(<thermalfoundation:material:134> * 4) // Lumium
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// FORESTRY MV INTEGRATION
// ==========================================

// Hardened Machine needs Thermal + Mekanism
recipes.remove(<forestry:hardened_machine>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<forestry:sturdy_machine> * 1)
    .inputs(<thermalfoundation:material:160> * 4) // Invar Gear
    .inputs(<mekanism:enrichedalloy> * 4)
    .inputs(<gregtech:meta_plate:1071> * 8) // Steel Plate
    .fluidInputs([<liquid:bronze> * 576])
    .outputs(<forestry:hardened_machine>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// GALACTICRAFT MV PREPARATION
// ==========================================

// Heavy Duty Plate needs multi-mod
<recipemap:forming_press>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1071> * 8) // Steel Plate
    .inputs(<thermalfoundation:material:160> * 2) // Invar
    .inputs(<mekanism:compressedcarbonneed> * 2)
    .outputs(<galacticraftcore:heavy_plating> * 2)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// STORAGE AND LOGISTICS MV
// ==========================================

// Controller Slave needs AE2 + RS
recipes.remove(<refinedstorage:controller>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:24> * 2) // Engineering Processor
    .inputs(<gregtech:meta_plate:1071> * 4) // Steel Plate
    .inputs(<enderio:item_material:14> * 1) // Pulsating Crystal
    .inputs(<mekanism:controlcircuit:0> * 2)
    .fluidInputs([<liquid:redstone> * 1152])
    .outputs(<refinedstorage:controller>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

// ==========================================
// CUSTOM SKYBLOCK MV CHAINS
// ==========================================

// Compressed Cobblestone processing
<recipemap:macerator>.recipeBuilder()
    .inputs(<excompressum:compressed_block:0> * 1) // Compressed Cobble
    .outputs(<gregtech:meta_dust:1> * 9) // Stone Dust
    .chancedOutput(<gregtech:meta_dust_tiny:1033>, 5000, 1000) // Iron
    .duration(300)
    .EUt(120)
    .buildAndRegister();

// Mesh upgrades with cross-mod
<recipemap:assembler>.recipeBuilder()
    .inputs(<exnihilocreatio:item_mesh:3> * 1) // Iron Mesh
    .inputs(<enderio:item_alloy_ingot:0> * 4) // Electrical Steel
    .inputs(<botania:manaresource:0> * 2) // Manasteel
    .fluidInputs([<liquid:mana> * 500])
    .outputs(<exnihilocreatio:item_mesh:4>) // Diamond Mesh equivalent
    .duration(400)
    .EUt(120)
    .buildAndRegister();

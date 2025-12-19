// Expert Mode Integration - HV and EV Tiers
// Maximum cross-mod synergy for endgame
import mods.gregtech.recipe.RecipeMap;
import mods.avaritia.ExtremeCrafting;
import mods.draconicevolution.FusionCrafting;
import mods.botania.ManaInfusion;

// ==========================================
// HV TIER CROSS-MOD INTEGRATION
// ==========================================

// Draconic Core requires multi-mod mastery
recipes.remove(<draconicevolution:draconic_core>);
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:426> * 4) // Processor Assembly
    .inputs(<botania:manaresource:5> * 2) // Gaia Spirit
    .inputs(<bloodmagic:slate:3> * 2) // Ethereal Slate
    .inputs(<thaumcraft:ingot:1> * 4) // Void Metal
    .inputs(<enderio:item_alloy_ingot:8> * 4) // End Steel
    .inputs(<appliedenergistics2:material:47> * 2) // Matter Ball
    .fluidInputs([<liquid:mana> * 8000])
    .fluidInputs([<liquid:lifeessence> * 4000])
    .outputs(<draconicevolution:draconic_core> * 4)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();

// Wyvern Core needs Botania + Blood Magic
recipes.remove(<draconicevolution:wyvern_core>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<draconicevolution:draconic_core> * 2)
    .inputs(<botania:manaresource:14> * 8) // Pixie Dust
    .inputs(<bloodmagic:blood_shard:0> * 4) // Demon Shard
    .inputs(<gregtech:meta_item_1:193> * 1) // HV Field Generator
    .inputs(<appliedenergistics2:material:47> * 1) // Matter Ball
    .fluidInputs([<liquid:ender> * 2000])
    .outputs(<draconicevolution:wyvern_core> * 2)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// AVARITIA HV INTEGRATION
// ==========================================

// Neutronium requires fusion-level processing
<recipemap:fusion_reactor>.recipeBuilder()
    .fluidInputs([<liquid:tungstensteel> * 144])
    .fluidInputs([<liquid:neutronium> * 144])
    .fluidOutputs([<liquid:neutronium> * 288])
    .duration(200)
    .EUt(98304) // IV tier fusion
    .property("eu_to_start", 400000000)
    .buildAndRegister();

// Crystal Matrix needs all magic mods
recipes.remove(<avaritia:resource:1>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<minecraft:diamond> * 4)
    .inputs(<botania:manaresource:2> * 4) // Mana Diamond
    .inputs(<bloodmagic:item_demon_crystal:0> * 2) // Demon Crystallizer
    .inputs(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}) * 4)
    .inputs(<appliedenergistics2:material:1> * 8) // Charged Certus
    .fluidInputs([<liquid:mana> * 4000])
    .outputs(<avaritia:resource:1> * 2) // Crystal Matrix
    .duration(1200)
    .EUt(480)
    .buildAndRegister();

// Infinity Catalyst requires Assembly Line
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<avaritia:resource:1> * 8) // Crystal Matrix
    .inputs(<gregtech:meta_item_1:193> * 4) // HV Field Generator
    .inputs(<draconicevolution:wyvern_core> * 4)
    .inputs(<botania:manaresource:5> * 8) // Gaia Spirit
    .inputs(<bloodmagic:slate:4> * 4) // Demonic Slate
    .inputs(<appliedenergistics2:material:48> * 2) // Singularity
    .fluidInputs([<liquid:mana> * 16000])
    .fluidInputs([<liquid:lifeessence> * 8000])
    .fluidInputs([<liquid:ender> * 4000])
    .outputs(<avaritia:resource:5>) // Infinity Catalyst
    .duration(2400)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// BLOOD MAGIC HV TIER
// ==========================================

// Ethereal Slate needs Assembly Line
recipes.remove(<bloodmagic:slate:3>);
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<bloodmagic:slate:2> * 1) // Demonic Slate
    .inputs(<gregtech:meta_plate:109> * 4) // Tungsten Plate
    .inputs(<botania:manaresource:8> * 2) // Gaia Ingot
    .inputs(<thaumcraft:ingot:1> * 2) // Void Metal
    .inputs(<enderio:item_alloy_ingot:8> * 4) // End Steel
    .fluidInputs([<liquid:lifeessence> * 8000])
    .fluidInputs([<liquid:mana> * 4000])
    .outputs(<bloodmagic:slate:3> * 2)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();

// Demon Crucible needs complex assembly
recipes.remove(<bloodmagic:demon_crucible>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<bloodmagic:slate:3> * 4)
    .inputs(<gregtech:meta_item_1:142> * 2) // HV Electric Piston
    .inputs(<gregtech:meta_item_1:162> * 2) // HV Electric Pump
    .inputs(<minecraft:cauldron> * 1)
    .inputs(<botania:pool:1> * 1) // Diluted Mana Pool
    .fluidInputs([<liquid:lifeessence> * 16000])
    .outputs(<bloodmagic:demon_crucible>)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// BOTANIA HV INTEGRATION
// ==========================================

// Gaia Ingot processing optimization
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<botania:manaresource:5> * 1) // Gaia Spirit
    .inputs(<botania:manaresource:4> * 2) // Terrasteel
    .inputs(<gregtech:meta_dust:109> * 1) // Tungsten
    .fluidInputs([<liquid:mana> * 2000])
    .outputs(<botania:manaresource:8> * 2) // Gaia Ingot
    .property("temperature", 3600)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// Alfheim Portal needs HV tech
recipes.remove(<botania:alfheimportal>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<botania:livingwood> * 8)
    .inputs(<botania:manaresource:4> * 4) // Terrasteel
    .inputs(<gregtech:meta_item_1:193> * 1) // HV Field Generator
    .inputs(<gregtech:meta_item_1:183> * 1) // HV Emitter
    .inputs(<appliedenergistics2:material:48> * 1) // Singularity
    .fluidInputs([<liquid:mana> * 8000])
    .outputs(<botania:alfheimportal> * 2)
    .duration(1200)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// THAUMCRAFT HV INTEGRATION
// ==========================================

// Void Metal requires complex infusion
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<thaumcraft:ingot:0> * 2) // Thaumium
    .inputs(<minecraft:ender_pearl> * 4)
    .inputs(<bloodmagic:slate:2> * 1) // Demonic Slate
    .fluidInputs([<liquid:ender> * 1000])
    .outputs(<thaumcraft:ingot:1> * 2) // Void Metal
    .property("temperature", 4000)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// Primordial Pearl needs multi-mod
<recipemap:autoclave>.recipeBuilder()
    .inputs(<thaumcraft:primordial_pearl> * 1)
    .inputs(<botania:manaresource:5> * 1) // Gaia Spirit
    .inputs(<bloodmagic:blood_shard:0> * 4)
    .fluidInputs([<liquid:mana> * 8000])
    .outputs(<thaumcraft:primordial_pearl> * 2)
    .duration(2400)
    .EUt(480)
    .buildAndRegister();

// ==========================================
// EV TIER CROSS-MOD INTEGRATION
// ==========================================

// Awakened Draconium needs fusion
<recipemap:fusion_reactor>.recipeBuilder()
    .fluidInputs([<liquid:draconium> * 144])
    .fluidInputs([<liquid:mana> * 1000])
    .fluidOutputs([<liquid:awakened_draconium> * 144])
    .duration(400)
    .EUt(196608) // LuV tier
    .property("eu_to_start", 600000000)
    .buildAndRegister();

// Draconic Core EV upgrade
recipes.remove(<draconicevolution:awakened_core>);
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<draconicevolution:wyvern_core> * 4)
    .inputs(<gregtech:meta_item_1:427> * 8) // Workstation
    .inputs(<gregtech:meta_item_1:194> * 2) // EV Field Generator
    .inputs(<avaritia:resource:1> * 4) // Crystal Matrix
    .inputs(<bloodmagic:slate:4> * 4) // Awakening Slate
    .inputs(<botania:manaresource:9> * 4) // Elven Dragonstone
    .inputs(<appliedenergistics2:material:48> * 4) // Singularity
    .fluidInputs([<liquid:awakened_draconium> * 2304])
    .fluidInputs([<liquid:mana> * 32000])
    .fluidInputs([<liquid:lifeessence> * 16000])
    .outputs(<draconicevolution:awakened_core> * 2)
    .duration(4800)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// APPLIED ENERGISTICS 2 EV
// ==========================================

// Quantum Entangled Singularity needs fusion
<recipemap:fusion_reactor>.recipeBuilder()
    .fluidInputs([<liquid:ender> * 8000])
    .inputs(<appliedenergistics2:material:47> * 2) // Matter Ball
    .inputs(<appliedenergistics2:material:48> * 1) // Singularity
    .outputs(<appliedenergistics2:material:9> * 2) // Quantum Entangled
    .duration(800)
    .EUt(196608)
    .property("eu_to_start", 800000000)
    .buildAndRegister();

// ME Controller EV upgrade
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<appliedenergistics2:controller> * 1)
    .inputs(<gregtech:meta_item_1:427> * 4) // Workstation
    .inputs(<gregtech:meta_item_1:194> * 2) // EV Field Generator
    .inputs(<appliedenergistics2:material:48> * 2) // Singularity
    .inputs(<gregtech:meta_plate:111> * 8) // Iridium Plate
    .inputs(<draconicevolution:wyvern_core> * 2)
    .fluidInputs([<liquid:polytetrafluoroethylene> * 2304])
    .fluidInputs([<liquid:mana> * 16000])
    .outputs(<appliedenergistics2:creative_energy_cell>) // Creative as questline reward
    .duration(2400)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// MEKANISM EV TIER
// ==========================================

// Ultimate Control Circuit
recipes.remove(<mekanism:controlcircuit:3>);
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<mekanism:controlcircuit:2> * 2)
    .inputs(<gregtech:meta_item_1:427> * 2) // Workstation
    .inputs(<appliedenergistics2:material:47> * 1) // Matter Ball
    .inputs(<gregtech:meta_plate:111> * 4) // Iridium Plate
    .inputs(<draconicevolution:wyvern_core> * 1)
    .fluidInputs([<liquid:soldering_alloy> * 576])
    .outputs(<mekanism:controlcircuit:3> * 2)
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// Antimatter needs fusion reactor
<recipemap:fusion_reactor>.recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 1000])
    .fluidInputs([<liquid:helium> * 1000])
    .fluidOutputs([<liquid:antimatter> * 100])
    .duration(200)
    .EUt(393216) // ZPM tier
    .property("eu_to_start", 1600000000)
    .buildAndRegister();

// ==========================================
// PNEUMATICCRAFT EV
// ==========================================

// Supercondenser needs extreme compression
<recipemap:forming_press>.recipeBuilder()
    .inputs(<pneumaticcraft:advanced_pressure_tube> * 8)
    .inputs(<gregtech:meta_plate:1082> * 16) // Tungstensteel
    .inputs(<gregtech:meta_item_1:194> * 1) // EV Field Generator
    .inputs(<appliedenergistics2:material:48> * 1)
    .outputs(<pneumaticcraft:omnidirectional_hopper>) // As proxy
    .duration(1600)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// MYSTICAL AGRICULTURE EV
// ==========================================

// Supremium Essence ultimate recipe
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<mysticalagriculture:crafting:3> * 4) // Superium
    .inputs(<botania:manaresource:5> * 2) // Gaia Spirit
    .inputs(<draconicevolution:wyvern_core> * 1)
    .inputs(<bloodmagic:slate:4> * 1) // Awakening Slate
    .fluidInputs([<liquid:mana> * 8000])
    .fluidInputs([<liquid:lifeessence> * 4000])
    .outputs(<mysticalagriculture:crafting:4> * 4) // Supremium
    .duration(1200)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// EXTREME REACTORS EV
// ==========================================

// Reactor upgrade to Ludicrite
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<bigreactors:ingotblutonium> * 4)
    .inputs(<gregtech:meta_ingot:111> * 2) // Iridium
    .inputs(<avaritia:resource:1> * 1) // Crystal Matrix
    .fluidInputs([<liquid:cryotheum> * 1000])
    .outputs(<bigreactors:ingotludicrite> * 4)
    .property("temperature", 9000)
    .duration(2400)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// GALACTICRAFT EV
// ==========================================

// Tier 4 Rocket needs assembly line
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<galacticraftplanets:item_basic_asteroids:0> * 16) // Compressed Titanium
    .inputs(<gregtech:meta_item_1:427> * 8) // Workstation
    .inputs(<gregtech:meta_item_1:194> * 4) // EV Field Generator
    .inputs(<draconicevolution:wyvern_core> * 2)
    .inputs(<appliedenergistics2:material:48> * 2)
    .inputs(<gregtech:meta_plate:1082> * 64) // Tungstensteel
    .fluidInputs([<liquid:rocket_fuel> * 16000])
    .fluidInputs([<liquid:oxygen> * 32000])
    .outputs(<galacticraftplanets:rocket_t3> * 1)
    .duration(4800)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// ENDER IO EV ALLOYS
// ==========================================

// Stellar Alloy requires fusion
<recipemap:fusion_reactor>.recipeBuilder()
    .fluidInputs([<liquid:end_steel> * 144])
    .fluidInputs([<liquid:awakened_draconium> * 144])
    .fluidOutputs([<liquid:stellar_alloy> * 288])
    .duration(200)
    .EUt(196608)
    .property("eu_to_start", 800000000)
    .buildAndRegister();

// ==========================================
// FORESTRY EV AUTOMATION
// ==========================================

// Alveary needs advanced tech
recipes.remove(<forestry:alveary:0>);
<recipemap:assembler>.recipeBuilder()
    .inputs(<forestry:bee_house> * 1)
    .inputs(<gregtech:meta_item_1:427> * 2) // Workstation
    .inputs(<gregtech:meta_item_1:163> * 2) // EV Pump
    .inputs(<minecraft:slime_ball> * 16)
    .inputs(<ore:plankWood> * 32)
    .fluidInputs([<liquid:for.honey> * 2000])
    .outputs(<forestry:alveary:0> * 3)
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// ==========================================
// CUSTOM EV SKYBLOCK CHAINS
// ==========================================

// Ultimate Mesh for best sieve results
<recipemap:assembly_line>.recipeBuilder()
    .inputs(<exnihilocreatio:item_mesh:4> * 1) // Diamond Mesh
    .inputs(<gregtech:meta_wire_fine:111> * 64) // Fine Iridium Wire
    .inputs(<avaritia:resource:1> * 2) // Crystal Matrix
    .inputs(<botania:manaresource:8> * 4) // Gaia Ingot
    .inputs(<draconicevolution:wyvern_core> * 1)
    .fluidInputs([<liquid:mana> * 8000])
    .fluidInputs([<liquid:tungstensteel> * 2304])
    .outputs(<exnihilocreatio:item_mesh:4> * 2) // Enhanced version
    .duration(2400)
    .EUt(1920)
    .buildAndRegister();

// Nether Star automation
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<minecraft:skull:1> * 3) // Wither Skull
    .inputs(<minecraft:soul_sand> * 4)
    .inputs(<botania:manaresource:5> * 1) // Gaia Spirit
    .inputs(<bloodmagic:slate:3> * 1) // Ethereal Slate
    .fluidInputs([<liquid:lifeessence> * 8000])
    .outputs(<minecraft:nether_star> * 1)
    .duration(1200)
    .EUt(1920)
    .buildAndRegister();

// Dragon Egg replication for extreme late game
<recipemap:replicator>.recipeBuilder()
    .inputs(<minecraft:dragon_egg> * 1)
    .fluidInputs([<liquid:uu_matter> * 1000000])
    .outputs(<minecraft:dragon_egg> * 2)
    .duration(24000)
    .EUt(1920)
    .buildAndRegister();

// GregTech EV Tier Recipe Modifications
import mods.gregtech.recipe.RecipeMap;

// ==================================
// EV Circuits - Workstation Assembly
// ==================================

// EV Workstation requires cleanroom and advanced materials
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:406> * 1) // HV Circuit Board
    .inputs(<gregtech:meta_item_1:426> * 2) // Processor Assembly
    .inputs(<gregtech:meta_item_1:421> * 4) // Nano Processor
    .inputs(<gregtech:meta_item_1:415> * 8) // Resistors
    .inputs(<gregtech:meta_item_1:416> * 8) // Capacitors
    .inputs(<gregtech:meta_wire_fine:111> * 8) // Fine Iridium Wire
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:427>) // Workstation
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

// Alternative Workstation with PTFE
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:406> * 1)
    .inputs(<gregtech:meta_item_1:426> * 2)
    .inputs(<gregtech:meta_item_1:421> * 4)
    .inputs(<gregtech:meta_item_1:415> * 8)
    .inputs(<gregtech:meta_item_1:416> * 8)
    .inputs(<gregtech:meta_wire_fine:111> * 8)
    .fluidInputs([<liquid:polytetrafluoroethylene> * 288])
    .outputs(<gregtech:meta_item_1:427>)
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

// Nano Processor
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:405> * 1)
    .inputs(<gregtech:meta_item_1:420> * 4) // CPU
    .inputs(<gregtech:meta_item_1:422> * 4) // NAND Chip
    .inputs(<gregtech:meta_wire_fine:111> * 16) // Fine Iridium Wire
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<gregtech:meta_item_1:421>) // Nano Processor
    .duration(300)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Advanced Materials
// ==================================

// Iridium Processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:53> * 1) // Iridium Dust
    .outputs(<gregtech:meta_ingot_hot:53> * 1)
    .property("temperature", 4500)
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();

// Osmium Processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:66> * 1) // Osmium Dust
    .outputs(<gregtech:meta_ingot_hot:66> * 1)
    .property("temperature", 4500)
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();

// Tungstensteel Processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:1082> * 1) // Tungstensteel Dust
    .outputs(<gregtech:meta_ingot_hot:1082> * 1)
    .property("temperature", 3600)
    .duration(900)
    .EUt(1920)
    .buildAndRegister();

// HSS-G (High Speed Steel - Grade) Processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:109> * 5) // Tungsten
    .inputs(<gregtech:meta_dust:1051> * 1) // Chromium
    .inputs(<gregtech:meta_dust:1078> * 1) // Vanadium
    .inputs(<gregtech:meta_dust:1057> * 2) // Molybdenum
    .fluidOutputs([<liquid:hssg> * 1296])
    .property("temperature", 4200)
    .duration(1200)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Chemical Processing
// ==================================

// Polyvinyl Chloride (PVC) production
<recipemap:chemical_reactor>.recipeBuilder()
    .fluidInputs([<liquid:ethylene> * 1000])
    .fluidInputs([<liquid:chlorine> * 1000])
    .fluidOutputs([<liquid:vinyl_chloride> * 1000])
    .duration(160)
    .EUt(1920)
    .buildAndRegister();

<recipemap:chemical_reactor>.recipeBuilder()
    .fluidInputs([<liquid:vinyl_chloride> * 1000])
    .notConsumable(<gregtech:meta_dust:1056>) // Oxygen catalyst
    .fluidOutputs([<liquid:polyvinyl_chloride> * 1000])
    .duration(160)
    .EUt(1920)
    .buildAndRegister();

// Polybenzimidazole (PBI) - Advanced plastic
<recipemap:large_chemical_reactor>.recipeBuilder()
    .fluidInputs([<liquid:diphenyl_isophthalate> * 1000])
    .fluidInputs([<liquid:diaminobenzidine> * 1000])
    .fluidOutputs([<liquid:polybenzimidazole> * 1000])
    .duration(600)
    .EUt(1920)
    .buildAndRegister();

// Naquadah Enrichment (if available)
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<gregtech:meta_dust:324> * 1) // Naquadah Dust
    .fluidInputs([<liquid:fluorine> * 1000])
    .outputs(<gregtech:meta_dust:325> * 1) // Enriched Naquadah
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Machine Components
// ==================================

// EV Field Generator
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:427> * 2) // Workstation
    .inputs(<gregtech:meta_plate:53> * 4) // Iridium Plate
    .inputs(<gregtech:meta_item_1:173>) // EV Sensor
    .inputs(<gregtech:meta_wire_fine:111> * 64) // Fine Iridium Wire
    .fluidInputs([<liquid:tungstensteel> * 288])
    .outputs(<gregtech:meta_item_1:194>) // EV Field Generator
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Emitter
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:427> * 2)
    .inputs(<gregtech:meta_rod:53> * 4) // Iridium Rod
    .inputs(<gregtech:meta_item_1:173>) // EV Sensor
    .inputs(<gregtech:meta_wire_fine:111> * 64)
    .fluidInputs([<liquid:tungstensteel> * 288])
    .outputs(<gregtech:meta_item_1:184>) // EV Emitter
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Sensor
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:427> * 1)
    .inputs(<gregtech:meta_plate:1082> * 4) // Tungstensteel Plate
    .inputs(<gregtech:meta_foil:66> * 4) // Osmium Foil
    .inputs(<gregtech:meta_wire_fine:111> * 64)
    .fluidInputs([<liquid:tungstensteel> * 144])
    .outputs(<gregtech:meta_item_1:173>) // EV Sensor
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Electric Motor
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_rod:1082> * 2) // Tungstensteel Rod
    .inputs(<gregtech:meta_stick_long:1082> * 1)
    .inputs(<gregtech:meta_cable:111> * 4) // Iridium Cable
    .inputs(<gregtech:meta_wire_fine:111> * 64)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:153>) // EV Electric Motor
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Electric Piston
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:153> * 1) // EV Electric Motor
    .inputs(<gregtech:meta_plate:1082> * 6)
    .inputs(<gregtech:meta_gear:1082> * 4)
    .inputs(<gregtech:meta_stick:1082> * 4)
    .inputs(<gregtech:meta_cable:111> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 576])
    .outputs(<gregtech:meta_item_1:143>) // EV Electric Piston
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Electric Pump
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:153> * 1)
    .inputs(<gregtech:meta_rotor:1082> * 2)
    .inputs(<gregtech:meta_screw:1082> * 8)
    .inputs(<gregtech:meta_ring:1025> * 4) // Rubber Ring
    .inputs(<gregtech:meta_cable:111> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 576])
    .outputs(<gregtech:meta_item_1:163>) // EV Electric Pump
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Robot Arm
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:153> * 2) // EV Electric Motor
    .inputs(<gregtech:meta_item_1:143> * 1) // EV Electric Piston
    .inputs(<gregtech:meta_item_1:427> * 2) // Workstation
    .inputs(<gregtech:meta_cable:111> * 3)
    .inputs(<gregtech:meta_stick:1082> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 1152])
    .outputs(<gregtech:meta_item_1:133>) // EV Robot Arm
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// EV Conveyor Module
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:153> * 2)
    .inputs(<gregtech:meta_plate:1025> * 8) // Rubber Plate
    .inputs(<gregtech:meta_cable:111> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 576])
    .outputs(<gregtech:meta_item_1:123>) // EV Conveyor Module
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Multiblock Structures
// ==================================

// Assembly Line Controller
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:machine_casing:4> * 1) // EV Machine Hull
    .inputs(<gregtech:meta_item_1:427> * 4) // Workstation
    .inputs(<gregtech:meta_item_1:133> * 4) // EV Robot Arm
    .inputs(<gregtech:meta_item_1:163> * 4) // EV Electric Pump
    .inputs(<gregtech:meta_cable:111> * 16)
    .fluidInputs([<liquid:tungstensteel> * 1152])
    .outputs(<gregtech:machine:1012>) // Assembly Line
    .duration(1200)
    .EUt(1920)
    .buildAndRegister();

// Cleanroom Controller
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:machine_casing:4> * 1)
    .inputs(<gregtech:meta_item_1:427> * 4)
    .inputs(<gregtech:meta_item_1:163> * 2) // EV Pump for air filtering
    .inputs(<gregtech:meta_item_1:173> * 2) // EV Sensor for contamination detection
    .inputs(<gregtech:meta_plate:1095> * 16) // Plastic Plates
    .fluidInputs([<liquid:polytetrafluoroethylene> * 576])
    .outputs(<gregtech:machine:1015>) // Cleanroom
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Ore Processing
// ==================================

// Naquadah Ore Processing
<recipemap:ore_washer>.recipeBuilder()
    .inputs(<gregtech:meta_ore_crushed:324> * 1)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:meta_ore_purified:324> * 1)
    .outputs(<gregtech:meta_dust_tiny:66> * 1) // Osmium Tiny Dust
    .chancedOutput(<gregtech:meta_dust:53>, 500, 250) // Iridium Dust chance
    .duration(500)
    .EUt(1920)
    .buildAndRegister();

// Advanced Centrifuge Processing for Rare Earths
<recipemap:centrifuge>.recipeBuilder()
    .inputs(<gregtech:meta_dust:2023> * 8) // Rare Earth Dust
    .outputs(<gregtech:meta_dust:2011> * 1) // Cerium
    .outputs(<gregtech:meta_dust:2020> * 1) // Lanthanum
    .outputs(<gregtech:meta_dust:2016> * 1) // Neodymium
    .outputs(<gregtech:meta_dust:2029> * 1) // Yttrium
    .duration(600)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Power Generation
// ==================================

// EV Energy Hatch
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:machine:989> * 1) // EV Machine Hull
    .inputs(<gregtech:meta_item_1:427> * 2)
    .inputs(<gregtech:meta_cable:111> * 8)
    .inputs(<gregtech:meta_plate:1082> * 4)
    .fluidInputs([<liquid:tungstensteel> * 576])
    .outputs(<gregtech:machine:1679>) // EV Energy Hatch
    .duration(600)
    .EUt(1920)
    .buildAndRegister();

// Large Turbine components
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:427> * 2)
    .inputs(<gregtech:meta_rotor:1082> * 4) // Tungstensteel Rotor
    .inputs(<gregtech:meta_gear:1082> * 4)
    .inputs(<gregtech:meta_item_1:153> * 2) // EV Motor
    .fluidInputs([<liquid:tungstensteel> * 1152])
    .outputs(<gregtech:meta_item_1:625>) // Large Turbine Rotor
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV AE2 Integration
// ==================================

// Pattern Expansion Card
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:427> * 1)
    .inputs(<appliedenergistics2:material:23> * 2) // Engineering Processor
    .inputs(<appliedenergistics2:material:28> * 1) // Calculation Processor
    .inputs(<gregtech:meta_plate:1095> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<appliedenergistics2:material:58>) // Pattern Expansion Card
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

// Crafting Storage 64k
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<appliedenergistics2:material:38> * 1) // Storage Component 64k
    .inputs(<gregtech:meta_item_1:427> * 1)
    .inputs(<appliedenergistics2:material:23> * 2)
    .inputs(<gregtech:meta_plate:1095> * 8)
    .fluidInputs([<liquid:polytetrafluoroethylene> * 144])
    .outputs(<appliedenergistics2:crafting_storage_64k>)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Fusion Preparation
// ==================================

// Fusion Coil blocks
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:194> * 1) // EV Field Generator
    .inputs(<gregtech:meta_plate:111> * 4) // Iridium Plate
    .inputs(<gregtech:meta_wire_fine:115> * 64) // Fine Nichrome Wire
    .inputs(<gregtech:machine_casing:4> * 1) // EV Casing
    .fluidInputs([<liquid:tungstensteel> * 576])
    .outputs(<gregtech:fusion_casing:0> * 2) // Fusion Coil
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();

// Superconductor Base
<recipemap:mixer>.recipeBuilder()
    .inputs(<gregtech:meta_dust:80> * 1) // Yttrium Barium Cuprate
    .inputs(<gregtech:meta_dust:1060> * 1) // Nickel
    .inputs(<gregtech:meta_dust:53> * 1) // Iridium
    .outputs(<gregtech:meta_dust:2001> * 3) // Superconductor Base
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Skyblock Advanced Processing
// ==================================

// Sieve platinum processing
<recipemap:electromagnetic_separator>.recipeBuilder()
    .inputs(<exnihilocreatio:item_ore_platinum:2> * 1)
    .outputs(<gregtech:meta_dust:34> * 1) // Platinum Dust
    .chancedOutput(<gregtech:meta_dust_tiny:32>, 3000, 1000) // Palladium
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

// Nether star dust processing
<recipemap:macerator>.recipeBuilder()
    .inputs(<minecraft:nether_star> * 1)
    .outputs(<gregtech:meta_dust:2011> * 4) // Nether Star Dust
    .duration(600)
    .EUt(1920)
    .buildAndRegister();

// Advanced compressed blocks
<recipemap:forming_press>.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed:53> * 9) // Iridium Block
    .outputs(<gregtech:meta_block_compressed:324> * 1) // Dense Iridium Block
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Advanced Automation
// ==================================

// Data Orb for complex recipes
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:128> * 1) // Data Stick
    .inputs(<gregtech:meta_item_1:427> * 4)
    .inputs(<gregtech:meta_plate:53> * 4) // Iridium Plate
    .inputs(<appliedenergistics2:material:38> * 1) // 64k Storage Component
    .fluidInputs([<liquid:polytetrafluoroethylene> * 288])
    .outputs(<gregtech:meta_item_1:129>) // Data Orb
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// Wireless Energy Receiver
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:184> * 1) // EV Emitter
    .inputs(<gregtech:meta_item_1:173> * 1) // EV Sensor
    .inputs(<gregtech:meta_item_1:427> * 2)
    .inputs(<gregtech:meta_plate:111> * 8) // Iridium Plate
    .fluidInputs([<liquid:tungstensteel> * 576])
    .outputs(<gregtech:meta_item_1:267>) // Wireless Energy Receiver
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

// ==================================
// EV Fluid Storage
// ==================================

// Large Fluid Tank EV
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:machine_casing:4> * 4) // EV Machine Hull
    .inputs(<gregtech:meta_item_1:163> * 2) // EV Pump
    .inputs(<gregtech:meta_plate:1082> * 16) // Tungstensteel Plate
    .inputs(<gregtech:meta_cable:111> * 4)
    .fluidInputs([<liquid:polytetrafluoroethylene> * 1152])
    .outputs(<gregtech:machine:1669>) // Fluid Tank EV
    .duration(800)
    .EUt(1920)
    .buildAndRegister();

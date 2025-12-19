// GregTech HV Tier Recipe Modifications
import mods.gregtech.recipe.RecipeMap;

// ==================================
// HV Circuits - Processor Assembly
// ==================================

// HV Circuit Assembly requires more complex recipes
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:405> * 1) // MV Circuit Board
    .inputs(<gregtech:meta_item_1:420> * 2) // Central Processing Unit
    .inputs(<gregtech:meta_item_1:415> * 4) // Resistors
    .inputs(<gregtech:meta_item_1:416> * 4) // Capacitors
    .inputs(<gregtech:meta_item_1:417> * 4) // Transistors
    .inputs(<gregtech:meta_wire_fine:25> * 8) // Fine Platinum Wire
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<gregtech:meta_item_1:426>) // Processor Assembly
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// Alternative with plastic (use when soldering alloy is unavailable or more expensive)
<recipemap:circuit_assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:405> * 1) // MV Circuit Board
    .inputs(<gregtech:meta_item_1:420> * 2) // Central Processing Unit
    .inputs(<gregtech:meta_item_1:415> * 4)
    .inputs(<gregtech:meta_item_1:416> * 4)
    .inputs(<gregtech:meta_item_1:417> * 4)
    .inputs(<gregtech:meta_wire_fine:25> * 8)
    .fluidInputs([<liquid:plastic> * 144])
    .outputs(<gregtech:meta_item_1:426>)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Advanced Processing
// ==================================

// Platinum Processing Chain
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:34> * 1) // Platinum Dust
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs(<gregtech:meta_ingot_hot:34> * 1)
    .property("temperature", 2000)
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// Titanium Processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:102> * 1) // Titanium Dust
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs(<gregtech:meta_ingot_hot:102> * 1)
    .property("temperature", 2150)
    .duration(700)
    .EUt(480)
    .buildAndRegister();

// Tungsten Processing
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:109> * 1) // Tungsten Dust
    .outputs(<gregtech:meta_ingot_hot:109> * 1)
    .property("temperature", 3000)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Chemical Processing
// ==================================

// Epoxy Production
<recipemap:chemical_reactor>.recipeBuilder()
    .fluidInputs([<liquid:epichlorohydrin> * 1000])
    .fluidInputs([<liquid:bisphenol_a> * 1000])
    .fluidOutputs([<liquid:epoxy> * 1000])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// Polytetrafluoroethylene (PTFE/Teflon)
<recipemap:chemical_reactor>.recipeBuilder()
    .fluidInputs([<liquid:tetrafluoroethylene> * 1000])
    .notConsumable(<gregtech:meta_dust:1056>) // Oxygen catalyst
    .fluidOutputs([<liquid:polytetrafluoroethylene> * 1000])
    .duration(160)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Machine Components
// ==================================

// Advanced Circuit Board
<recipemap:chemical_bath>.recipeBuilder()
    .inputs(<gregtech:meta_plate:1095> * 1) // Plastic Plate
    .fluidInputs([<liquid:epoxy> * 288])
    .outputs(<gregtech:meta_item_1:405>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

// HV Field Generator
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:426> * 2) // Processor Assembly
    .inputs(<gregtech:meta_plate:324> * 4) // Osmium Plate
    .inputs(<gregtech:meta_item_1:172>) // HV Sensor
    .inputs(<gregtech:meta_wire_fine:32> * 64) // Fine Palladium Wire
    .fluidInputs([<liquid:stainless_steel> * 288])
    .outputs(<gregtech:meta_item_1:193>) // HV Field Generator
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Emitter
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:426> * 2)
    .inputs(<gregtech:meta_rod:324> * 4) // Osmium Rod
    .inputs(<gregtech:meta_item_1:172>) // HV Sensor
    .inputs(<gregtech:meta_wire_fine:32> * 64) // Fine Palladium Wire
    .fluidInputs([<liquid:stainless_steel> * 288])
    .outputs(<gregtech:meta_item_1:183>) // HV Emitter
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Sensor
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:426> * 1)
    .inputs(<gregtech:meta_plate:1071> * 4) // Steel Plate
    .inputs(<gregtech:meta_foil:330> * 4) // Electrum Foil
    .inputs(<gregtech:meta_wire_fine:25> * 64) // Fine Platinum Wire
    .fluidInputs([<liquid:stainless_steel> * 144])
    .outputs(<gregtech:meta_item_1:172>) // HV Sensor
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Electric Motor
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_rod:109> * 2) // Tungsten Rod
    .inputs(<gregtech:meta_stick_long:1071> * 1) // Steel Stick
    .inputs(<gregtech:meta_cable:25> * 4) // Platinum Cable
    .inputs(<gregtech:meta_wire_fine:25> * 64)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<gregtech:meta_item_1:152>) // HV Electric Motor
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Electric Piston
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:152> * 1) // HV Electric Motor
    .inputs(<gregtech:meta_plate:1071> * 6) // Steel Plate
    .inputs(<gregtech:meta_gear:1071> * 4) // Steel Gear
    .inputs(<gregtech:meta_stick:1071> * 4) // Steel Rod
    .inputs(<gregtech:meta_cable:25> * 2) // Platinum Cable
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:142>) // HV Electric Piston
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Electric Pump
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:152> * 1) // HV Electric Motor
    .inputs(<gregtech:meta_rotor:1071> * 2) // Steel Rotor
    .inputs(<gregtech:meta_screw:1071> * 8) // Steel Screw
    .inputs(<gregtech:meta_ring:1025> * 4) // Rubber Ring
    .inputs(<gregtech:meta_cable:25> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:162>) // HV Electric Pump
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Robot Arm
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:152> * 2) // HV Electric Motor
    .inputs(<gregtech:meta_item_1:142> * 1) // HV Electric Piston
    .inputs(<gregtech:meta_item_1:426> * 2) // Processor Assembly
    .inputs(<gregtech:meta_cable:25> * 3)
    .inputs(<gregtech:meta_stick:1071> * 2) // Steel Rod
    .fluidInputs([<liquid:soldering_alloy> * 576])
    .outputs(<gregtech:meta_item_1:132>) // HV Robot Arm
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// HV Conveyor Module
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:152> * 2) // HV Electric Motor
    .inputs(<gregtech:meta_plate:1025> * 6) // Rubber Plate
    .inputs(<gregtech:meta_cable:25> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:122>) // HV Conveyor Module
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Multiblock Components
// ==================================

// Vacuum Freezer recipes
<recipemap:vacuum_freezer>.recipeBuilder()
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:ice> * 1000])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

// Processing Array basic recipe
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:machine_casing:3> * 1) // HV Machine Hull
    .inputs(<gregtech:meta_item_1:426> * 4) // Processor Assembly
    .inputs(<gregtech:meta_item_1:132> * 2) // HV Robot Arm
    .inputs(<gregtech:meta_item_1:162> * 2) // HV Electric Pump
    .inputs(<gregtech:meta_cable:25> * 8)
    .fluidInputs([<liquid:stainless_steel> * 1152])
    .outputs(<gregtech:machine:1001>) // Processing Array
    .duration(800)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Ore Processing
// ==================================

// Advanced ore washing for increased byproducts
<recipemap:ore_washer>.recipeBuilder()
    .inputs(<gregtech:meta_ore_crushed:109> * 1) // Crushed Tungsten Ore
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:meta_ore_purified:109> * 1)
    .outputs(<gregtech:meta_dust_tiny:104> * 1) // Manganese Tiny Dust
    .chancedOutput(<gregtech:meta_dust:21>, 1000, 500) // Tin Dust chance
    .duration(400)
    .EUt(480)
    .buildAndRegister();

// Tungsten thermal centrifuge processing
<recipemap:thermal_centrifuge>.recipeBuilder()
    .inputs(<gregtech:meta_ore_crushed:109> * 1)
    .outputs(<gregtech:meta_dust:109> * 1)
    .outputs(<gregtech:meta_dust_small:104> * 1) // Small Manganese Dust
    .chancedOutput(<gregtech:meta_dust:21>, 2000, 750) // Tin Dust chance
    .duration(500)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Material Processing
// ==================================

// Stainless Steel EBF recipe optimization
<recipemap:electric_blast_furnace>.recipeBuilder()
    .inputs(<gregtech:meta_dust:1033> * 6) // Iron Dust
    .inputs(<gregtech:meta_dust:1051> * 1) // Chromium Dust
    .inputs(<gregtech:meta_dust:1054> * 1) // Manganese Dust
    .inputs(<gregtech:meta_dust:1060> * 1) // Nickel Dust
    .fluidOutputs([<liquid:stainless_steel> * 1296])
    .property("temperature", 2000)
    .duration(1000)
    .EUt(480)
    .buildAndRegister();

// Titanium Tetrachloride for advanced processing
<recipemap:chemical_reactor>.recipeBuilder()
    .inputs(<gregtech:meta_dust:102> * 1) // Titanium Dust
    .fluidInputs([<liquid:chlorine> * 4000])
    .fluidOutputs([<liquid:titanium_tetrachloride> * 1000])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Power Generation
// ==================================

// HV Energy Hatch recipe improvement
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:machine:988> * 1) // HV Machine Hull
    .inputs(<gregtech:meta_item_1:426> * 2) // Processor Assembly
    .inputs(<gregtech:meta_cable:25> * 8) // Platinum Cable
    .inputs(<gregtech:meta_plate:109> * 4) // Tungsten Plate
    .fluidInputs([<liquid:stainless_steel> * 576])
    .outputs(<gregtech:machine:1678>) // HV Energy Hatch
    .duration(400)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Skyblock Integration
// ==================================

// Compressed ore blocks for space efficiency
<recipemap:compressor>.recipeBuilder()
    .inputs(<gregtech:meta_ore_crushed:109> * 9)
    .outputs(<gregtech:compressed:4> * 1) // Compressed Tungsten Ore
    .duration(400)
    .EUt(480)
    .buildAndRegister();

// Sieve-to-HV processing integration
<recipemap:macerator>.recipeBuilder()
    .inputs(<exnihilocreatio:item_ore_gold:2> * 1) // Gold ore piece from sieve
    .outputs(<gregtech:meta_dust:1045> * 2) // Gold Dust
    .chancedOutput(<gregtech:meta_dust_tiny:2064>, 2000, 500) // Redstone chance
    .duration(300)
    .EUt(480)
    .buildAndRegister();

// Advanced dust processing
<recipemap:centrifuge>.recipeBuilder()
    .inputs(<gregtech:meta_dust:2517> * 4) // Redstone Alloy Dust
    .outputs(<gregtech:meta_dust:2064> * 2) // Redstone
    .outputs(<gregtech:meta_dust:2089> * 2) // Silicon
    .duration(600)
    .EUt(480)
    .buildAndRegister();

// ==================================
// HV Assembly Line Preparation
// ==================================

// Data Stick for HV-tier automation
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:426> * 1) // Processor Assembly
    .inputs(<gregtech:meta_plate:1095> * 4) // Plastic Plate
    .inputs(<gregtech:meta_wire_fine:330> * 16) // Electrum Fine Wire
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<gregtech:meta_item_1:128>) // Data Stick
    .duration(400)
    .EUt(480)
    .buildAndRegister();

// HV Fluid Regulators
<recipemap:assembler>.recipeBuilder()
    .inputs(<gregtech:meta_item_1:162> * 1) // HV Electric Pump
    .inputs(<gregtech:meta_item_1:426> * 2) // Processor Assembly
    .inputs(<gregtech:meta_plate:1071> * 2) // Steel Plate
    .fluidInputs([<liquid:plastic> * 144])
    .outputs(<gregtech:meta_item_1:308>) // Fluid Regulator HV
    .duration(400)
    .EUt(480)
    .buildAndRegister();

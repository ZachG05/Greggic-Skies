// Fertilizer
recipes.remove(<forestry:fertilizer_compound>);
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcite>, <metaitem:dustAsh> * 3], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcite>, <metaitem:dustDarkAsh>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustApatite>, <metaitem:dustAsh> * 3], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcium>, <metaitem:dustAsh> * 3], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustApatite>, <metaitem:dustDarkAsh>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcite>, <metaitem:dustSulfur>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcium>, <metaitem:dustDarkAsh>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcite>, <metaitem:dustPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustGlauconiteSand>, <metaitem:dustAsh> * 3], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustGlauconiteSand>, <metaitem:dustDarkAsh>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustApatite>, <metaitem:dustSulfur>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcium>, <metaitem:dustSulfur>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustApatite>, <metaitem:dustPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcium>, <metaitem:dustPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcite>, <metaitem:dustTricalciumPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustGlauconiteSand>, <metaitem:dustSulfur>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustGlauconiteSand>, <metaitem:dustPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustApatite>, <metaitem:dustTricalciumPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustCalcium>, <metaitem:dustTricalciumPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<metaitem:dustGlauconiteSand>, <metaitem:dustTricalciumPhosphate>], [<liquid:water> * 1000]).remove();
<recipemap:distillation_tower>.findRecipe(180, null, [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 4})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 5})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 6})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:distillery>.findRecipe(45, [<metaitem:circuit.integrated>.withTag({Configuration: 7})], [<liquid:fermented_biomass> * 1000]).remove();
<recipemap:mixer>.findRecipe(30, [<minecraft:dirt:0>, <metaitem:dustWood> * 2, <minecraft:sand:0> * 4], [<liquid:water> * 1000]).remove();

<recipemap:mixer>.recipeBuilder()
    .inputs(<ore:dustWood> * 2)
    .inputs(<minecraft:dye:15>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs(<gregtech:meta_item_1:1001> * 2)
    .duration(50)
    .EUt(50)
    .buildAndRegister();

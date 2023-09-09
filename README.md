# pf2e-spells
Shiny app that facilitates selection of random spells in Pathfinder 2e.

[Hosted here](https://cmshiny.shinyapps.io/pf2e-spells/)

Current functionality is to limit the spell list at the selected level to those with any domain matching any of the selected filters. The generate button then chooses a random entry from this filtered list.

Also includes spelllist.r, an r script for generating the required csv from a list of .json files. This is intended to be used on the folder of spells provided by the [PF2e System](https://github.com/foundryvtt/pf2e/tree/master/packs/spells) for Foundry VTT.

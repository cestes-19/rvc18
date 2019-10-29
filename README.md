# rvc18
Adding to RVC statistical analysis by mhepner

This is the setup for hepner_code.R 

The main output file is big_csv   
  Within that file there should be 3 more output files named exploited_species, trohpic_groups, and trophic_level

In trophic_level file there should be a csv named RVC_trophic_level file before you run the code (this does not change with years)

In trophic_groups file there should be 4 folders abundance, biomass, density, and diversity (this will contain most of your results)

There are no additional folders in exploited_species

hepner_code.R is for fish data and figures only (just for simplicity)




The Other_Groups.R is the code for updating corals, lobster, and queen conch

You will need to calculate the average coral cover for the next year from CREMP data and add to the existing csv
    This file is CREMP_Pcover_group.csv
    
Next you will need to get the coral richness for the next year and add to the exisiting csv
    This file is crichness.csv

Next you will need to get coral species percent cover from CREMP data and add it to the csv
    This file CREMP_Pcover_spp_tpose.csv
      THE NAMES NEED TO REMAIN IN THE SAME ORDER (not alphabetical)

This should give you an output file of coral_diversity
  You will need to move the years to the first column to run the biodiversity plots (coral_diversity_year_first.csv)
  
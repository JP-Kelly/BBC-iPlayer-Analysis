#
# Script JP Kelly 2020
# Shared under a GPL 3.0 license

# This script was used to clean and parse data scraped from BBC iPlayer
# It is based on a dataset with the following columns / observations
# 1. Programme_Title
# 2. Programme_Synopsis
# 3. Programme_Synopsis_URL
# 4. Programme_Duration
# 5. Programme_Availability
# 6. Programme_Genre
# 7. Programme_Categoty

# The script does the following:

# i. Creates a new column called “date” and adds the date of the scrape
# (this is taken from each filename).

# ii. Creates a new column called “series” and moves information regarding the
# series from the “Programme_Title” column into this new column. This works by
# searching for following syntax within the “Programme_Title” column:
# “: Series”. This syntax indicates whether a “title” within the interface
# refers to an individual episode or links to an entire series.

# iii. Identifies the horizontal position of a title within the interface
# (column) and assigns the relevant numerical value to a new column called
# “column”.

# iv. Identifies the vertical position of a title within the interface (row)
# and assigns the relevant numerical value to a new column called “row”.

# v.	Creates a new column called “Box_Set”. If there is a reference to “Box set” within “Programme_Synopsis”, add “yes” to this field, otherwise label it “no”.


# The following script will edit all .csv files within a chosen directory,
# adding in all of the relevant info (described above), and overwriting the
# original files

# First, clear environment
rm(list = ls())

# Dependencies / required libraries – these need to be installed in R before
# you can proceed
library(dplyr)
library(stringr)
library(data.table)
library(tidyverse)

# Set working directory – you need to add the path to the directory containing
# any/all of the scraped files. Edit “insert directory here” line so that it
# points to the correct directory
setwd("insert directory here")

# Read in files/filenames
filenames = dir(pattern = "*.csv")

# The following code executes a “for loop” that will go through every file
# and clean / parse the data. Descriptions / explanations are above each step
for (i in 1:length(filenames)) {
    tmp <- read.csv(filenames[i], stringsAsFactors = FALSE)
# Add “date part” of filename to column labelled "date". This applies to files
# using the following naming convention: “run_results 2018-08-09.csv”
    tmp$date <- str_sub(filenames[i], start = 13L, end = -5L)
# Parse Programme_Title into two columns: Programme_Title and Series
    tmp$Series <- ifelse(grepl(": Series", tmp$Programme_Title), "yes", "no")
    tmp <- tmp %>% separate(Programme_Title, c("Title", "Series"), sep = ": Series")
    for (row in 1:nrow(tmp)) {
        tmp$Series[row] <- ifelse(is.na(tmp$Series[row]), "", paste("Series", tmp$Series[row], sep = ""))
    }
# Create a new column called “column” and assign a numerical value for each
# title
    tmp$column <- sequence(rle(as.character(tmp$Programme_Category))$lengths)
# Create new column called "row" and assign a numerical value for each title
    DT = data.table(tmp)
    tmp <- DT[, row := .GRP, by = .(Programme_Category)][]
# Identify box sets and create new column with "yes" / "no" value
    tmp$Box_Set <- ifelse(grepl("Box Set", tmp$Programme_Synopsis), "yes", "no")
# Remove the data.table which we no longer need
    rm(DT)
# Write out the new file(s)
    write.csv(tmp, filenames[[i]], row.names = FALSE)
}


# Once the above files have all been cleaned / parsed, you can then combine
# these into a single dataset. There are numerous ways to do this.
# The following is just one option:

# This script will combine multiple csv files. It assumes that all files
# are located in the same folder and the they have identical column names.

# Preliminary steps - clear environment and then load relevant libraries
rm(list = ls())
require(plyr)

# Set working directory / folder
setwd("path to directory goes here")
folder <- "path to folder containing csv files goes here"

# Bind data
filenames <- list.files(folder)
all_files <- Reduce(rbind.fill, lapply(filenames, read.csv))
write.csv(all_files, "output filename goes here.csv")

# The above scripts and steps will produce a dataset similar to the one used
# for this research. It won’t however include details of the “channel”.
# This is because getting this data requires a much more complex approach
# that involves looking up each URL and searching for channel information
# within each page (the structure and naming conventions of which often change,
# making it impractical to share a script that will do this).

# Shared under a GPL 3.0 license
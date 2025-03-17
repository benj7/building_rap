
# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("dplyr", "ggplot2", "readr")
)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# tar_source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  tar_target(
    name = file,
    command = "data.csv",
    format = "file",
    description = "Base R air quality data file" 
  ),
  tar_target(
    name = data,
    command = get_data(file),
    description = "Base R air quality data object" 
  ),
  tar_target(
    name = model,
    command = fit_model(data),
    description = "Regression of ozone vs temp" 
  ),
  tar_target(
    name = plot,
    command = plot_model(model = model, data = data),
    description = "Scatterplot of model & data" 
  )
)

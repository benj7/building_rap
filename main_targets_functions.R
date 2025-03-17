# List verbose information about each target
tar_manifest(fields = all_of("command"))

#  displays the dependency graph of the pipeline
tar_visnetwork()

# Display what is outdated
tar_outdated()

#  Run the pipeline 
tar_make()

# Read or load outputs
tar_read(model)
tar_load(model)

#  Run the pipeline 
tar_make()

# Follow progres 
tar_progress()

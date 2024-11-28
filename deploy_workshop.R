
Sys.setenv(GCE_AUTH_FILE = '/Users/yue/Downloads/semiotic-vial-255604-401233702f0c.json')
library(googleComputeEngineR)


gce_global_project("semiotic-vial-255604")
gce_global_zone("us-central1-a")

## see gce_list_machinetype() for options of predefined_type
(tag = "gcr.io/semiotic-vial-255604/diseaseprediction:alpha")

the_list <- gce_list_instances()

vm1 <- gce_vm(template = "rstudio",
              name = "diseaseprediction",
              disk_size_gb = 500,
              predefined_type = "n2-standard-32",
              dynamic_image = tag,
              user = "rstudio",
              password = "test")

# gce_global_zone("us-west2-a")
vm2 <- gce_vm(template = "rstudio",
             name = "diseaseprediction2",
             disk_size_gb = 500,
             predefined_type = "n2-standard-32",
             dynamic_image = tag,
             user = "rstudio",
             password = "test")

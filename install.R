  

# DO NOT EDIT 'install.R'; instead, edit 'install.R.in' and
# use 'rake' to generate 'install.R'.

if ("BiocManager" %in% rownames(installed.packages()))
  remove.packages("BiocManager")

install.packages("BiocManager", repos="https://cran.rstudio.com")
#install.packages("devtools", repos="https://cran.rstudio.com")
#devtools::install_github("Bioconductor/BiocManager")
library(BiocManager)

if(BiocManager::version() != "3.19"){
  BiocManager::install(version="3.19",
                       update=TRUE, ask=FALSE)
}


for (thispackage in c("ggplot2", "UpSetR",  "ggthemes" , "Seurat" , "dplyr" ,
                      "devtools" , "BiocManager" , 'scattermore', "survival" , "survminer" , 
                      "spatstat" , "reshape" , "plotly" )){
  if(! thispackage %in% installed.packages() ){
    install.packages(thispackage )
  }
}



for (thispackage in c("SingleCellExperiment" ,"lisaClust"  , "spicyR" ,
                      "SPOTlight"  , "limma" , "org.Hs.eg.db",  "clusterProfiler" ,
                      "scater"  ,  "scran" , "simpleSeg")){
  BiocManager::install(thispackage)
}



devtools::install_github("SydneyBioX/scFeatures")

devtools::install_github("SydneyBioX/scClassify")

devtools::install_github("DarioS/ClassifyR")

 

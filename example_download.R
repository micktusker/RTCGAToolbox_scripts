library(RTCGAToolbox)
# Source: https://f1000research.com/articles/5-1542/v1
lastRunDate <- getFirehoseRunningDates()[1]
lastAnalyseDate <- getFirehoseAnalyzeDates(1)
7 # get DNA methylation data, RNAseq2 and clinical data for LGG
lgg.data <- getFirehoseData(dataset = "LGG",
                            gistic2_Date = getFirehoseAnalyzeDates(1), runDate = lastRunDate,
                            Methylation = TRUE, RNAseq2_Gene_Norm = TRUE, Clinic = TRUE,
                            Mutation = T,
                            fileSizeLimit = 10000)
# get DNA methylation data, RNAseq2 and clinical data for GBM
gbm.data <- getFirehoseData(dataset = "GBM",
                            runDate = lastDate, gistic2_Date = getFirehoseAnalyzeDates(1),
                            Methylation = TRUE, Clinic = TRUE, RNAseq2_Gene_Norm = TRUE,
                            fileSizeLimit = 10000)
# To access the data you should use the getData function
# or simply access with @ (for example gbm.data@Clinical)
gbm.mut <- getData(gbm.data,"Mutations")
gbm.clin <- getData(gbm.data,"Clinical")
gbm.gistic <- getData(gbm.data,"GISTIC")

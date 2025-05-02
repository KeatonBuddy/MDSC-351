#imports
library(dplyr)
library(progress)
install.packages("rrBLUP")
library(rrBLUP)
install.packages("fastman")
install.packages("remotes")
remotes::install_github("danioreo/fastman")
library(qqman)

#download data
gff = read.delim("gene_model.gff", header = FALSE)
View(gff)

#format genotype
genotype = read.csv("call_method_54.tair9.FT10.csv")
firstheaders = names(genotype[1:2])
lastheaders = substring(names(genotype)[3:ncol(genotype)], 2)
newheaders = c(firstheaders,lastheaders)
View(genotype)

#phenotype
phenotype = read.delim("FT10.txt")
View(phenotype)

genoID = lastheaders
phenoID = phenotype$ecotype_id

#remove samples without both genotype and phenotype data
for(i in phenoID){
  if(is.element(i,genoID) == FALSE){
    print(i)
    phenotype = phenotype[!(phenotype$ecotype_id == i),]
  }
}

#do the same for pheotype data without genotype
for(i in genoID){
  if(is.element(i,phenoID) == FALSE){
    print(i)
  }
}

#remove NA values
for(i in phenotype$ecotype_id){
  if(is.na(phenotype[(phenotype$ecotype_id == i),]$X5_FT10) == TRUE){
    phenotype = phenotype[!(phenotype$ecotype_id == i),]
    genotype = genotype %>% select(-contains(toString(i)))
  }
}

#turn genotype values Binary
for(i in 1:nrow(genotype)){
  print(i)
  bin1 = genotype[i,3]
  counter = 0
  bin2 = "nothing"
  for(j in 3:ncol(genotype)){
    if(genotype[i,j] == bin1){
      genotype[i,j] = 0
    }
    
    else if(counter == 0 ){
      bin2 = genotype[i,j]
      counter = 1
    }
    if(genotype[i,j]==bin2){
      genotype[i,j] = 1
    }
    
  }
}


#copy of data
genotypeCopy = genotype

genotype = genotypeCopy

View(genotype)

#data formatting
marker = c(1:214553)
genotype$marker = marker
columnNames = names(genotype[3:ncol(genotype)-1])
columnNames = columnNames[order(columnNames,decreasing = TRUE)]
columnNames = c(names(genotype[ncol(genotype)]),names(genotypeCopy[1:2]), columnNames)
genotype = genotype[,columnNames]

firstheaders = names(genotype[1:3])
lastheaders = substring(names(genotype)[4:ncol(genotype)], 2)
newheaders = c(firstheaders,lastheaders)
colnames(genotype) = newheaders

genMat = genotype[3:ncol(genotype)]


genMat = t(genMat)





m = as.matrix(genotype)
m[m==0] = -1
genotype <- as.data.frame(m)

genotype = genotype[1:(length(genotype)-1)]
genotype[] = as.numeric(as.matrix(genotype))
#genotype[is.na(genotype)] = 1

#Run the GWAS

gwas = GWAS(pheno = phenotype, geno = genotype, plot = TRUE)
gwas$X5_FT10[gwas$X5_FT10 == 0] = 0.00001

manhattan(gwas, chr = "Chromosome", bp = "Positions",p = "X5_FT10",annotateTop = TRUE)


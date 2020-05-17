CheckNumericClass <- function (InputData) {
	returnValue <- FALSE
	
	if (is.numeric(InputData)) {
		returnValue <- TRUE
	}

	return(returnValue)
}

CheckForNAs <- function (InputData) {
	returnValue <- FALSE
	
	if (is.na(InputData)) {
		returnValue <- TRUE
	}

	return(returnValue)
}

DataChecks <- function (PhenotypesVector, Genotypes, Pathways, Covariates, LogFile) {

	#Checking for NAs in phenotype vector
	#unit test
	if (is.na(PhenotypesVector)) {
		stop(Sys.time(), " -- there are NAs in the phenotype vector. Please remove and align the remaining files (eg genotype matrix).");
	}
	LogFile <- rbind(LogFile, paste(format(Sys.time()), " -- PhenotypesVector passed NA check.", sep=""))

	#Checking for missingness in genotype matrix
	#unit test
	if (apply(Genotypes, 2, is.na)) {
		stop(Sys.time(), " -- there are NAs in the genotype matrix. There must be zero missingness in the genotype matrix. Please correct and rerun.");
	}
	LogFile <- rbind(LogFile, paste(format(Sys.time()), " -- Genotypes passed NA check.", sep=""))

#	#Checking for NAs in pathways file
#	if (apply(Pathways, 1, 

#	#If using covariates, checking for NAs in covariate matrix

	return(LogFile)

}

PreprocessData <- function (PhenotypesVector, Genotypes, Pathways, Covariates, CenterStandardize, RegressPhenotypes, LogFile) {

	PreprocessData.Output <- list();
	PhenotypesMatrix <- c();

	#unit test this
	if (CenterStandardize == TRUE) {
		Genotypes.Mean <- apply(Genotypes, 2, mean); 
		Genotypes.SD <- apply(Genotypes, 2, sd); 
		Genotypes <- t((t(Genotypes)-Genotypes.Mean)/Genotypes.SD);
	}
	Data3.mean <- apply(Data3, 2, mean); Data3.sd <- apply(Data3, 2, sd); Data3 <- t((t(Data3)-Data3.mean)/Data3.sd); \i

	if (RegressPhenotypes == TRUE) { 
		for (i in 1:nrow(Pathways)) { 
			Genotypes.Pathway <- Genotypes[,Pathway];
		
			residuals(lm(Data1[,j] ~ Data2 - 1, na.action=na.exclude)))

		}
	} else {
		for (i in 1:nrow(Pathways)) { 
			PhenotypesMatrix <- cbind(PhenotypesMatrix, PhenotypesVector);
		}
	}

	return(PreprocessData.Output);

}

RunMAPITR.NothingProvided <- function (Phenotypes, Genotypes, Pathways, Covariates, CenterStandardize) {

	RunMAPITR.NothingProvided.Output <- list();



	GRM_Grand <- 1/ncol(Genotypes) * tcrossprod(as.matrix(Genotypes)); 
	GRM_Pathway <- 1/ncol(Genotypes.Pathway) * tcrossprod(as.matrix(Genotypes.Pathway)); 

	RunMAPITR.NothingProvided.Output.temp <- MAPITR(t(Genotypes.Pathway),Phenotypes,as.matrix(GRM_Grand),as.matrix(GRM_Pathway),t(as.matrix(Z)),cores=cores);


sourceCpp("/users/mturchin/LabMisc/RamachandranLab/InterPath/Vs1/InterPath.Vs2.GjDrop.mtEdits.SingleRun.vs1.wCovs.vs1.cpp"); 

 Y.Check.Pheno.noNAs <- Y.Check.Pheno[neg.is.na(Y.Check.Pheno)];
 
Pathways.Regions <- list(); 
cores = detectCores(); 
InterPath.output <- list(); 
InterPath.output$Est <- c();
 InterPath.output$Eigenvalues <- c(); 
InterPath.output$PVE <- c(); \

Pathways.Regions[[1]] 
                                       
K <- 1/ncol(X.Pheno.noNAs) * tcrossprod(as.matrix(X.Pheno.noNAs)); \

InterPath.output.temp <- InterPath(t(X.Pheno.noNAs),Y.Pheno.noNAs,as.matrix(X.cov.Pheno.noNAs),K,t(as.matrix(Z)),Pathways.Regions,nrow(X.Pheno.noNAs),as.numeric(as.character($NumSNPs)),cores=cores); 

InterPath.output$Est <- c(InterPath.output$Est, InterPath.output.temp$Est); InterPath.output$Eigenvalues <- cbind(InterPath.output$Eigenvalues, InterPath.output.temp$Eigenvalues); InterPath.output$PVE <- c(InterPath.output$PVE, InterPath.output.temp$PVE); 
                                
Lambda <- sort(InterPath.output.Eigenvalues[,Counter1], decreasing=TRUE); \
Davies.Output <- davies(InterPath.output.Est[Counter1,1], lambda=Lambda, acc=1e-8); \
pVal <- 2*min(1-Davies.Output\$Qq, Davies.Output\$Qq); \


	return(RunMAPITR.NothingProvided.Output)

}

RunMAPITR.wCovs <- function (Phenotypes, Genotypes, Pathway, Covariates, CenterStandardize) {

	RunMAPITR.wCovs.Output <- list()

	return(RunMAPITR.wCovs.Output)

}

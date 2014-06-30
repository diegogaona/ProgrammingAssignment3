best <- function(state, outcome) 
{ 
    ## Read outcome data
    outcome <- readData()
    
    colindex <- c("heart attack" = 3, "heart failure" = 4, "pneumonia" = 5)
    
    colnames(outcome) <- c("Hospital.Name","State",names(colindex))
    
    
    
    ## Check that state and outcome are valid
    ## Return hospital name in that state with lowest 30-day death ## rate
}

readData <- function()
{
    outcome <- suppressWarnings(read.csv("outcome-of-care-measures.csv", colClasses = "character"))
    
    ## Hospital 30-Day Death (Mortality) Rates from Heart Attack
    outcome[, 11] <- as.numeric(outcome[, 11])
    
    #Hospital 30-Day Death (Mortality) Rates from Heart Failure
    outcome[, 17] <- as.numeric(outcome[, 17])
    
    #Hospital 30-Day Death (Mortality) Rates from Pneumonia
    outcome[, 23] <- as.numeric(outcome[, 23])
    
    outcome[,c(2, 7, 11, 17, 23)]
}
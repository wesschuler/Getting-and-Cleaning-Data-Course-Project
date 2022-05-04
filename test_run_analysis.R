# Test First measureable

dim(X)
dim(y)
dim(subject)

# Test Second measureable

length(index)
dim(X)

# Test Third measureable

head(y)

# Test Fourth measureable

head(cleaned_data[,c(1:4)])

# Test Fifth measureable

dim(tidy_data)
head(tidy_data[order(Subject)][,c(1:4), with = FALSE],12) 

# ============================================================
# Assignment
# Name: Brian Punch-Eastman
# ============================================================

# ============================================================
# LOAD LIBRARIES
# ============================================================
library(ggplot2)
library(dplyr)


# ============================================================
# CHECK VARIABLES
# ============================================================
num <- 42
char <- "Hello, R!"
logic <- TRUE

# ============================================================
# CHECK DATA TYPES
# ============================================================
class(num)
class(char)
class(logic)


# ============================================================
# CREATE A DATA FRAME
# ============================================================
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(23, 25, 22),
  Passed = c(TRUE, FALSE, TRUE)
)

# ============================================================
# DISPLAY DATA FRAME
# ============================================================
print(students)


# ============================================================
# ADD A NEW COLUMN
# ============================================================
students$Grade <- c("A", "B", "A")

# ============================================================
# DISPLAY UPDATED DATA FRAME
# ============================================================
print(students)


# ============================================================
# BAR PLOT OF GRADES
# ============================================================
barplot(
  table(students$Grade),
  main = "Grade Distribution",
  col = "blue"
)

# ============================================================
# HISTOGRAM OF AGES
# ============================================================
hist(
  students$Age,
  main = "Age Distribution",
  xlab = "Age",
  col = "green"
)


# ============================================================
# READ CSV FILE
# ============================================================
data <- read.csv(
  "C:/Users/Brian Punch-Eastman/Downloads/data.csv"
)


# ============================================================
# DISPLAY FIRST FEW ROWS
# ============================================================
head(data)


# ============================================================
# CALCULATE MEAN OF AGE COLUMN
# ============================================================
mean_age <- mean(
  data$Age,
  na.rm = TRUE
)

print(mean_age)


# ============================================================
# FILTER ROWS WHERE PASSED IS TRUE
# ============================================================
passed_students <- subset(data, Passed == TRUE)

print(passed_students)


# ============================================================
# SCATTER PLOT: SCORE VS AGE
# ============================================================
plot(
  data$Age,
  data$Score,
  main = "Score vs Age",
  xlab = "Age",
  ylab = "Score",
  pch = 19,
  col = "blue"
)


# ============================================================
# HISTOGRAM OF SCORES
# ============================================================
hist(
  data$Score,
  main = "Score Distribution",
  xlab = "Score",
  col = "green"
)


# ============================================================
# PIE CHART OF PASSED DISTRIBUTION WITH PERCENTAGES
# ============================================================

passed_counts <- table(data$Passed)

passed_labels <- paste(
  names(passed_counts),
  "(",
  round(prop.table(passed_counts) * 100, 1),
  "%)"
)


# ============================================================
# PIE CHART: PASSED DISTRIBUTION
# ============================================================

pie(
  passed_counts,
  labels = passed_labels,
  main = "Passed Distribution",
  col = c("orange", "cyan")
)
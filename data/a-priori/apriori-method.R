library(arules)

tools <- c('evosuite', 'jtexpert', 'randoop')

print('EvoSuite')
file <- read.csv("method/evosuite.csv")

for (i in 1:6) {
  file[, i] <- as.factor(file[, i])
}

rules <-
  apriori(
    file,
    parameter = list(
      support = 0.01,
      confidence = 0.01,
      minlen = 2
    ),
    appearance = list(
      both = c("AR=1", "ET=1", "MG=1", "SE=1", "RO=1")
    )
  )
rules.count <- sort(rules, decreasing = TRUE, na.last = NA, by = "count")
inspect(rules.count)

print('JTExpert')
file <- read.csv("method/jtexpert.csv")

for (i in 1:6) {
  file[, i] <- as.factor(file[, i])
}

rules <-
  apriori(
    file,
    parameter = list(
      support = 0.01,
      confidence = 0.01,
      minlen = 2
    ),
    appearance = list(
      both = c("AR=1", "ET=1", "MG=1", "SE=1")
    )
  )
rules.count <- sort(rules, decreasing = TRUE, na.last = NA, by = "count")
inspect(rules.count)

print('Randoop')
file <- read.csv("method/randoop.csv")

for (i in 1:6) {
  file[, i] <- as.factor(file[, i])
}

rules <-
  apriori(
    file,
    parameter = list(
      support = 0.01,
      confidence = 0.01,
      minlen = 2
    ),
    appearance = list(
      both = c("AR=1", "ET=1", "MG=1")
    )
  )
rules.count <- sort(rules, decreasing = TRUE, na.last = NA, by = "count")
inspect(rules.count)
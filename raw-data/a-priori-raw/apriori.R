library(arules)

tools <- c('evo', 'jtexpert', 'randoop')

print('EvoSuite')
file <- read.csv("apriori/evo.csv")

for (i in 1:7) {
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
      both = c("AR=1", "ET=1", "MG=1", "SE=1", "RO=1", "FTO=1")
    )
  )
rules.count <- sort(rules, decreasing = TRUE, na.last = NA, by = "count")
inspect(rules.count)

print('JTExpert')
file <- read.csv("apriori/jtexpert.csv")

for (i in 1:7) {
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
file <- read.csv("apriori/randoop.csv")

for (i in 1:7) {
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
      both = c("AR=1", "ET=1", "MG=1", "FTO=1")
    )
  )
rules.count <- sort(rules, decreasing = TRUE, na.last = NA, by = "count")
inspect(rules.count)


### Overview

The package `"Binomial"` is a minimal implementation for calculating the probability, cumulative probability of a certain number of success in many trials. Also, this package allows you to find the summary of the result and plot it.

* `bin_choose(trials,k)` allowes you to find the number of combinations to have k success in n trials.
* `bin_probability(success, trials, prob)` find the probility of having k success in n trials with a given probabilty of success(prob).
* `bin_distribution(trials, prob)` create a probability table with columns: success and probilities
* `plot.bindis(table)` draw barplot of the distribution table
* `bin_cumulative(trials, prob)` gives us cumulative binomial distribution of all possible number of success
* `plot.bincum(table)`gives us a line diagram showing the trend of probability change
* `bin_variable()` outputs a list, listing number of trials and probability that the user set
* `summary.binvar()` output a list listing number of trials, probability, mean, variance, mode, skewness, and kurtosis
* `print.binvar()` display the result of `bin_variable()`
* `print.summary.binvar()` display the result of `summary.binvar()`


### Motivation

This package has been developed to the calculate data and plot result of a binomial process.


### Installation

Install the development version from GitHub via the package `"devtools"`:

development version from GitHub:
```{r}
install.packages("devtools")
```
install "Binomial" (without vignettes)
```{r}
devtools::install_github("stat133-sp19/hw-stat133-YifanXia0623/Binomial")
```
install "Binomial" (with vignettes)
```{r}
devtools::install_github("stat133-sp19/hw-stat133-YifanXia0623/Binomial", build_vignettes = TRUE)
```


### Usage

```{r}
#ways of having 3 success in 5 trials
bin_choose(trials=5,success=3)
#probability of having 3 success in 5 trials
bin_probability(success=3,trials=5,prob=0.5)

dis_table <- bin_distribution(trials = 5, prob = 0.5)
plot(dis_table)

cum_table <- bin_cumulative(trials=5, prob=0.5)
plot(cum_table)

bin_var <- bin_variable(trials=5,prob=0.5)
bin_var
summary(bin_var)
```

# Yelp Rating Predicting

A simple model predicting the rating (1-5) users give to businesses based on their provided feedback. This model was applied in this [Kaggle competition][1]. The idea was to consider each different word in the feedbacks as predictors. A multiple linear regression model was trained on the feedback data and the appropriate predictors where selected after trying different     combinations of these in order to minimize error and ignore redundant predictors. Adjusted $r^2$ was the main criteria for the model selection. Lasso and Ridge regressions were attempted but did not improve performance. A correlation matrix was checked in order to delete correlated predictors. The word `perfect` showed a clear presence in high rating reviews while the word `terrible` showed a clear presence in low rating reviews. At the end the model contained 424 predictors and adjusted $r^2 = 0.55$. The final model obtained a root mean squared error of $0.88$.

## Data

The original data files start with `Yelp`. `Yelp_test.csv`, `Yelp_train.csv`, `Yelp_validate.csv`
where used to train, validate, and test the model respectively. These files contain the original reviews, the given rating, and count the number of times some words appear each review. The file `Data.csv`contains the data merged into a single `.csv` file and includes some useful predictor variables. `out.csv` contains the data for the chosen predictors in the final model and attempts to predict the missing ratings in this file. This files are provided since producing them meant a very significant computational effort (various hours). It was simply a matter of counting the amount of specific words in the data using regex.

## Setup

After cloning the repository you can open the `Rcode.R` file in R studio and click on `Source` (recommended). Alternatively, on the terminal you can run

`cd src`

and run the script (you need to have [R][2] installed)

`Rscript Rcode.R`

This will produce a file `RESULT.csv`. This is the estimation of the `out.csv` file ratings. `Rcode.R` contains information about other attempted models with inferior performance. The script also produces a word cloud to show the most common words in 1 start ratings and the most common ones in 5 star ratings. It also creates a plot (using GGPlot) to show how $r^2$ changed when increasing the number of predictors. The produced plots are inside the provided created `Rplots.pdf` file (if run through command line).

## License

GNU GPLv3 © Rafael García

[//]: # (Links)

[1]: https://www.kaggle.com/c/uw-madison-stat333-2018fall (Kaggle link)
[2]: https://www.r-project.org/ (R)

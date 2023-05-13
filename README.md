# DALI Data Challenge: Dartmouth Courses

## Data Imputation
Using R's MICE package, I imputed the missing numeric values and saved the new verion in `courses.csv`, which I used for the statistical analysis and ML model. My code for imputation can be found in `dartmouth_courses_imputation.R`. The rest of my code is in the `dartmouth_courses.ipynb` notebook.

## Data Visualization
I used tidyverse's ggplot to visualize the data in complex scatterplots. My goal was to see if department and class size had an effect on the median GPA. I started by depicting the class size vs. GPA points of all departments on one graph, which was very colorful and aesthetically pleasing; however, there was too much data in one graph, and it was hard to differentiate between departments with similar colors. I then filtered the dataframe in order to depict the relationship between class size and GPA for three of the most popular departments (CS, ECON, and GOVT) in their own graphs. While there was no clear relationship for CS classes, larger classes in ECON and GOVT seemed to have lower media GPAs than smaller classes.

## Statistcal Analysis
I used the Pearson (captures linear relationship) and Spearman (captures non-linear relationship) correlation coefficients to identify the strength of the relationship between class size and median GPA. Both the Pearson and Spearman coefficients are negative, indicating that as class size increases, median GPA decreases.

## Machine Learning
For machine learning, I used an unsupervised learning model, specifically linear regression. I used 75 percent of my data for training and fitting the line, and 25 percent for testing.

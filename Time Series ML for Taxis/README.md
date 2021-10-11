Project description:

Use historical data from Sweet Lift Taxi company to predict orders for the next hour.

The RMSE metric on the test set should not be more than 48.

Summary of steps taken:

1. Download the data and resample it by one hour.
2. Analyze the data.
3. Train different models with different hyperparameters. The test sample should be 10% of the initial dataset.
4. Test the data using the test sample and provide a conclusion.


Conclusion:
- First we expanded the data by deriving more features.
- The additional features added were: date (broken into year, month, day), 1 day lag, 2 day lag, and 2 day rolling mean.
- We parsed the dates, converted it to datetime, set it as the index, and then sorted it in ascending order.
- We then made 2 models:
    - Linear Regression, RMSE < 45, time to compute < 20 ms
    - Random Forest Regressor, RMSE < 48, time to compute < 40 seconds
    - Both models worked successfully however Linear Regression works much faster.


Goal: Predict the amount of gold recovered from gold ore.

Steps Taken: 
1. Prepare the data
2. Open the files and look into the data. Path to files: /datasets/gold_recovery_train.csv /datasets/gold_recovery_test.csv /datasets/gold_recovery_full.csv
3. Check that recovery is calculated correctly. Using the training set, calculate recovery for the rougher.output.recovery feature. Find the MAE between your calculations and the feature values. Provide findings.
4. Analyze the features not available in the test set. What are these parameters? What is their type?
5. Perform data preprocessing.
6. Analyze the data
7. Take note of how the concentrations of metals (Au, Ag, Pb) change depending on the purification stage.
8. Compare the feed particle size distributions in the training set and in the test set. If the distributions vary significantly, the model evaluation will be incorrect.
9. Consider the total concentrations of all substances at different stages: raw feed, rougher concentrate, and final concentrate. Do you notice any abnormal values in the total distribution? If you do, is it worth removing such values from both samples? Describe the findings and eliminate anomalies.
10. Build the model
11. Write a function to calculate the final sMAPE value.
12. Train different models. Evaluate them using cross-validation. Pick the best model and test it using the test sample. Provide findings. 

Libraries Used
pandas, numpy, matplotlib, scipy, sklearn.model_selection, sklearn.linear_model, sklearn.tree, sklearn.ensemble, sklearn.metrics
 

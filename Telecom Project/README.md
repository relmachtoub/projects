
Assignment:
The telecom operator Interconnect would like to be able to forecast their churn of clients. 
If it's discovered that a user is planning to leave, they will be offered promotional codes and special plan options.
Interconnect's marketing team has collected some of their clientele's personal data, including information about their plans and contracts.

Summary of steps taken:
1. Preprocess Telecom Contract data.
2. Extract new features such as customer duration.
3. Run EDA on features such as total charges.
4. Join data using customer ID.
5. Convert categorical columns to OHE.
6. Check for class imbalance.
7. Split data into training and test set.
8. Create and test different models such as decision tree, LGBM Classifier,


Clarifying Report
- All the steps were successfuly performed.
- Difficulties included not getting the minimum successful scores set out in the task.
- To increase our score features were added such as customer duration and year of enrollment.
- A key step to solving the task was optomizing parameters for the DecisionTreeClassifier model.
- This task was made easier through the use of GridSearchCV; which automates the process of tuning hyperparameters. 
- Another critical step was to maximize the Scores by adjusting the threshold value.
- LGBM Classifier was the most successful model. Test Scores: Accuracy = 0.85, F1 = 0.67, APS = 0.8, & ROC AUC = 0.89.
- Preprocessing steps taken: normalized the data, applied OHE to categorical columns, converted dates to datetime format
- in order to calculate customer duration, made a binary target column, changed end dates with output "no" to the latest date from the dataset.

Features Used:
'MonthlyCharges', 'TotalCharges', 'Duration', 'SeniorCitizen',
'PaperlessBilling_Yes', 'Partner_Yes', 'Dependents_Yes',
'OnlineSecurity_Yes', 'OnlineBackup_Yes', 'DeviceProtection_Yes',
'TechSupport_Yes', 'StreamingTV_Yes', 'StreamingMovies_Yes',
'MultipleLines_Yes', 'Type_One year', 'Type_Two year',
'PaymentMethod_Credit card (automatic)',
'PaymentMethod_Electronic check', 'PaymentMethod_Mailed check',
'gender_Male', 'InternetService_Fiber optic'

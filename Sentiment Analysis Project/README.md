Project Statement:

Develop a ML model for filtering and catogerizing movie reviews for the company The Film Junky Union.
The goal is to train a model to automatically detect negative reviews. Use dataset from IMBD
movie reviews with polarity labeling to build a model for classifying positive and negative reviews.

Goal: Attain F1 score of at least 0.85.

Summary of steps taken:
1. Preprocess data and run EDA.
2. No substantial class imbalance found in the target.
3. Normalize data.
4. Lemmatize text reviews.
5. Vectorize words into features.
6. Use models such as Logistic Regression, Random Forest, BERT, & LGBM Classifier.
7. Compare and contrast results.


Conclusion:
- Scoring BERT & LR will have misleading results because only 15 samples were used which increases variance.
- The model with the best accuracy is TF-IDF & LR.
- The model with the best F1 score is TF-IDF & LR.
- The model with the best APS is TF-IDF & LR.
- The model with the best ROC AUC is BERT & LR.
- The quickest model is TF-IDF & LR.
v

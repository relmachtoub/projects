Project Objective:

- Create computer vision model that can recognize underage customers based off their photo.
- The shops are equipped with cameras in the checkout area which are triggered when a person is buying alcohol.
- The task then is to build and evaluate a model for verifying people's age based off a photo.

Summary of steps taken:

1. Uploaded data using image data generator.
2. Split data into training and test sets.
3. Ran EDA to check for target imbalance.
4. Created nueral network using TensorFlow & ResNet50 Architecture.
5. Trained model and optomized hyperparameters to improve RMSE.
6. Tested model on cloud based GPU and achieved accurate results.


Conclusions:

- Our goal was to predict age based off of photos of people.
- We added to the data by horizontally flipping the photos using ImageDataGenerator.
- ResNET50 architecture was used for the neural network.
- MSE was used as our loss function because it computes faster that MAE.
- Our model had 1 output because this a regression task.
- Relu activation function was used to cut off negative values, because age can't be < 0.
- We successfully reached val_mae < 7.
- If we want to further decrease MAE we can add more data by zooming in on the photos or rotating them.

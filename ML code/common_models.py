from sklearn.ensemble import RandomForestRegressor

for n in range(10,51,10):
    print('# of n estimators:', n)
    model = RandomForestRegressor(n_estimators=n, max_depth= 12, random_state=12345)
    model.fit(features_train, target_train)
    model.predict(features_test)
    
model = LinearRegression()
model.fit(features_train, target_train)
pred_test = model.predict(features_test)

print("RMSE using Linear Regression: ", rmse(pred_test, target_test))
 

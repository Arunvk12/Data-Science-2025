# import numpy as np 
# import pandas as pd
# from sklearn.linear_model import LinearRegression

# x=np.array([5,6,7,8,9,10]).reshape(-1,1)
# y=np.array([15,18,21,24,27,30])

# model=LinearRegression()

# model.fit(x,y)

# print("slope(m)",model.coef_[0])
# print("intercept(b)",model.intercept_)

# predict=model.predict([[11]])

# print("predicted values for 11 is:",predict)


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

x=np.array([1,2,3,4,5,6]).reshape(-1,1)
y=np.array([5,10,15,20,25,30])

model=LinearRegression()

model.fit(x,y)

print('slope (m):',model.coef_[0])
print('intercept (b):',model.intercept_)

predict=model.predict([[7]])
print('predicted value for 7 is:',predict)


plt.scatter(x,y)
plt.plot(x,model.predict(x))
plt.xlabel('year of experncies')    
plt.ylabel('salary')
plt.title('experncies vs salary')
plt.show()

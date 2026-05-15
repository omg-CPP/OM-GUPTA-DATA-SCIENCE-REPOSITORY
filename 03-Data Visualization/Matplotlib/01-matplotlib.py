import matplotlib.pyplot as plt 
# Visualizing Tons of Data – What Crowded Looks Like
import numpy as np 
for i in range(50): 
# np.random.rand(100) generates an array of 100 random numbers   uniformly distributed between 0 and 1.
    plt.plot(np.random.rand(100),  linewidth=1) 
plt.title("Too Much Data Can Be Confusing!") 
plt.grid(True) 
plt.tight_layout() 
plt.show()
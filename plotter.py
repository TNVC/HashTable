import sys
import os
import numpy as np
import matplotlib.pyplot as plt

stat = np.genfromtxt("plots/" + sys.argv[1] + ".csv", delimiter=',')
stat_size = len(stat)

if (stat_size == 0):
	exit()

fig = plt.figure(figsize = (7, 7))
ax  = fig.add_subplot(1, 1, 1)

ax.bar(list(range(stat_size)), stat)

mean = float(sys.argv[2])

ax.plot([0, stat_size], [mean, mean], label = "Average value", color = "red", alpha = 0.5)

ax.set_title("Hash-function`s allocation", fontsize = 20)
ax.set_ylabel("Elements` count", fontsize = 20)
ax.set_xlabel("Index", fontsize = 20)

ax.grid(True, alpha = 0.3)
ax.legend()
plt.savefig("plots/" + sys.argv[1] + ".png")

os.remove("plots/" + sys.argv[1] + ".csv")

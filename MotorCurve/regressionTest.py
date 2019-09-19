from statistics import mean
import numpy as np
#ys = np.array([-11,-10,-9,9,10,11], dtype=np.float64)
#xs = np.array([-5.2001905,-3.31339575,-1.2425235, 1.196504, 3.31339575, 5.33824875], dtype=np.float64)

ys = np.genfromtxt('filepath', delimiter='')
xs = np.genfromtxt('filepath', delimiter='')


def best_fit_slope_and_intercept(xs,ys):
    m = (((mean(xs)*mean(ys)) - mean(xs*ys)) /
         ((mean(xs)*mean(xs)) - mean(xs*xs)))
    
    b = mean(ys) - m*mean(xs)
    
    return m, b

m, b = best_fit_slope_and_intercept(xs,ys)

print(m,b)
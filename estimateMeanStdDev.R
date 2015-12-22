#Estimating the mean and standard deviation from the median and the range

#http://www.r-bloggers.com/estimating-the-mean-and-standard-deviation-from-the-median-and-the-range/

#While preparing the data for a meta-analysis, I run into the problem that a few of my sources did not
#report the outcome of interest as means and standard deviations, but rather as medians and range of
#values. After looking around, I found this interesting paper which derived (and validated through simple
#simulations), simple formulas that can be used to convert the median/range into a mean and a variance in
#a distribution free fashion.  With

#a = min of the data
#b = max of the data
#m = median
#n = size of the sample
#the formulas are as follows:

#Mean  \bar{m} = \frac{a+2 m+b}{4} +\frac{a-2 m+b}{4 n}

#Variance  \frac{1}{n-1} \Big(a^2+m^2+b^2+\frac{n-3}{2} \frac{(a+m)^2+(b+m)^2}{4}-n \bar{m} \Big)

#The following R function will carry out these calculations

f <- function(a, m, b, n) {
	mn <- ( a + 2 * m + b ) / 4 + ( a - 2 * m + b ) / ( 4 * n )
	s = sqrt( ( a * a + m * m + b * b + ( n - 3 ) * ( ( a + m ) ^ 2 + ( m + b ) ^ 2 ) / 8 - n * m n * m n) / (n - 1) )
	c(mn, s)
}

#f <- function(a, m, b, n)
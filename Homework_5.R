# Homework 5: Vector Problems
# 3 March 2021
# MJRC

# Problem 1: Suppose x = 1.1, a = 2.2, and b = 3.3. 
# Assign each expression to the value of the variable z and print the value stored in z.
x <- 1.1
a <- 2.2
b <- 3.3 
# 1a
z <- x^a^b
print(z)

# 1b
z <- (x^a)^b
print(z)

# 1c
z <- 3*x^3 + 2*x^2 + 1
print(z)

# Probelem 2: create the following vectors

# 2a
x <- c(1:8,7:1)
print(x)

# 2b
x <- seq(1:5)
y <- rep(x=x, times=x)
print(y)

# 2c
a <- seq(from=5,to=1)
print(a)
y <- rep(x=a, times=1:5)
print(y)

# Problem 3:Create a vector of two random uniform numbers.
z <- runif(2)
print(z)
r <- (z[1]^2 + z[2]^2)^1/2
theta <- atan(z[2]/z[1])
polar_co <- c(r,theta)
print(polar_co)

# Problem 4: Using R expressions, update the queue successively
queue <- c ("sheep", "fox", "owl", "ant")
print(queue)
# 4a the serpent arrives
queue[5] <- "serpent"
print(queue)

# 4b the sheep enters the ark
queue <- queue[-c(1)]
print(queue)

# 4c the donkey arrives and moves to front
queue <- c("donkey",queue[1:4])
print(queue)

# 4d serpent leaves
queue <- c(queue[1:4])
print(queue)

# 4e the owl leaves
queue <- c(queue[1:2],queue[4])
print(queue)

# 4f the aphid arrives in front of ant
queue <- c(queue[1:2],"aphid",queue[3])
print(queue)

# 4g aphid position
which(queue=="aphid")


# Problem 5
# Vector of all integers 1-100 that aren't divisble by 2,3 or 7

my_vec <- c(1:100)
my_vec[!(!my_vec%%2)+(!my_vec%%3)+(!my_vec%%7)]
print(my_vec)

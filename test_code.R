set.seed(12345)
n = 20 ; D= matrix(nrow=n,nc=2)
for(i in 1:n)
{
  D[i,1] = runif(n=1,min=-3,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=12)
}
for(i in 11:n)
{
  D[i,1] = runif(n=1,min=0,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=4)
}

plot(1:30,xlim=c(0,30),ylim=c(0,20),type='n',xlab='Calendar time',ylab='Patient illness status',axes=FALSE)
for(i in 1:10)
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='dodgerblue3',lwd=2)
}
for(i in 11:n)
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='green4',lwd=2)
}
abline(v=17,col=2,lwd=2)
abline(h=0)


#################
set.seed(12345)
n = 40 ; D= matrix(nrow=n,nc=2)
for(i in 1:(n/2))
{
  D[i,1] = runif(n=1,min=-3,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=12)
}
for(i in (n/2+1):n)
{
  D[i,1] = runif(n=1,min=0,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=3)
}

plot(1:30,xlim=c(0,30),ylim=c(0,40),type='n',xlab='Calendar time',ylab='Patient health status',
     cex.lab=1.7,cex=1.7,axes=FALSE)
for(i in 1:(n/2))
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='dodgerblue3',lwd=2)
}
for(i in (n/2+1):n)
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='green4',lwd=2)
}
abline(v=17,col=2,lwd=2)
abline(h=0)

####################
set.seed(12345)
n = 40 ; D= matrix(nrow=n,nc=2)
for(i in 1:(n/2))
{
  D[i,1] = runif(n=1,min=-3,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=12)
}
for(i in (n/2+1):n)
{
  D[i,1] = runif(n=1,min=0,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=3)
}

plot(1:30,xlim=c(0,30),ylim=c(0,40),type='n',xlab='Calendar time',ylab='Patient health status',
     cex.lab=1.7,cex=1.7,axes=FALSE)
for(i in 1:(n/2))
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='dodgerblue3',lwd=2)
}
for(i in (n/2+1):n)
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='green4',lwd=2)
}
abline(v=17,col=2,lwd=2)
abline(h=0)
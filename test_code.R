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
tmin=16 ; tmax = 19
for(i in 1:(n/2))
{
  D[i,1] = runif(n=1,min=-3,max=30)
  D[i,2] =  D[i,1] +  rpois(n=1,lambda=tmin)
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
  if(D[i,1] <tmax & D[i,1] > tmin)
  { points( x=D[i,1],y=i,pch=16,col=2,cex=1)  }
}
for(i in (n/2+1):n)
{
  segments(x0=D[i,1],y0=i,x1=D[i,2],y1=i,col='green4',lwd=2)
  if(D[i,1] <tmax & D[i,1] > tmin)
  { points( D[i,1], i ,pch=16,col=2,cex=1)  }
}
abline(v=tmin,col=2,lty=2)
abline(v=tmax,col=2,lty=2)
abline(h=0)



#####################

x = rnorm(n=20000,mean=30,sd=12) ; x = x[x>0 & x<100]
y = rnorm(n=20000,mean=50,sd=15) ; y = y[y>0 & y<100]

par(mfrow=c(1,2) )
hist(x,breaks=seq(0,100,5),xlim=c(0,100),prob=TRUE,main='',xlab='Age group',ylab="Age group proportion",col='cadetblue') 
hist(y,breaks=seq(0,100,5),xlim=c(0,90),prob=TRUE,main='',xlab='Age group',ylab='', col='brown3') 




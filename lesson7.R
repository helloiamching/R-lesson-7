#for(....){.........}
#while(....){.........}


#Review exercises (Error)

#for ( i in 1:3){
#  for ( j in 1:4){
#   A[i, j] = i+j }
#}

#Exercise A(for)(Error)

g1 = function(n){ 
  p= 1
  for (x in 1:n){
    p = p*x
  } 
}

#Exercise B)(for)
#do not multiple too many times, for the number is too big

g2 = function(n){
  x = 0
  for (k in 1:n) {
    x = x + log(k)
  }
  y = exp(x)
  return(y)
}


#Exercise C(while)

g3 <- function(n){ x<- 0
  s<- 0 
  while(x<=n){
    s<- s+x
    x<- x+1
  }
  s
}



#Exercise D

# 假設身邊有一個硬幣(正面發生的機率為0.005)
# 丟擲此硬幣,直到第一個正面出現才停止
# 紀錄停止時,已丟擲的次數,記為X
# 使用while
# 需要變數x, y
# x負責記錄已經丟幾次; y負責記錄銅板丟擲結果


g4 = function(p){
  x <-1
  y<- rbinom(1,1,prob = p)
  while(y==0){
    x = x+1
    y<- rbinom(1,1,prob = p)
  }
  return(x)
}

# Exercise E
# 假設英檢成績為score=sample(60:100,1) 
#若成績沒有超過85, 則必須準備下次重考. 
#請統計最後考了幾次測驗才達標

g5 = function(standard){
  x <- 1
  score=sample(60:100,1)
  while(score<=standard){
    x = x+1
    score=sample(60:100,1)
  }
  return(x)
}

#Exercise F

#number = sample(0:100, 10^3, replace = T) 
#請找出 第100個偶數發生的位置
# 你需要逐一檢查每個數值是否為偶數(%%2)
# 若是,則必須記錄那些東西才有辦法確定目標已達成
#先用for把所有1000個數字檢查一遍 ▷ 改用while試試看

# g4 does not worl well! Need to be fixed!

g6 <- function(n){
  number = sample(0:100, 10^3, replace = T) 
  for (i in 1:1000) {
   result <- number[i]%%2==0
  }
  return(result)
}


number = sample(0:100, 10^3, replace = T) 

for (i in 1:10) {
  result <- number[i]%%2==0
  print(result)
}

g7 = function(n){
  x <-1
  y <-number[x]%%2
  number = sample(0:100, 10^3, replace = T) 
  while (y == 0) {
    x=x+1
    y <-number[x]%%2
    }
  return(number[n])
}

#plot

# xlim
  #coordinates ranges
# xlab
 #座標標頭
#main
  #大標
# type
  #plot 上是實線or虛線
# pch
  #plot's dot 樣式
# abline
  #add line to the chart
# col
  #color is "Red"
# plot(-4:4, -4:4, type = "n")

plot(-4:4, -4:4, type = "n", xlab = "hi",ylab = "hihi",main = "hellohow are u" )
abline(0,1)

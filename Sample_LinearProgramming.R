#線形計画法のサンプル
install.packages('lpSolve')
library(lpSolve)

#下記の例では、
#x_1 + x_2 を、
#x_1 + 2x_2 <= 4
#2x_1 + x_2 <= 4
#x_1 , x_2 >= 0 の条件下で最大化している。

f_obj <- c(1,1) #目的関数の係数
f_con <- matrix(c(1,2,2,1),ncol=2) #制約条件を行列で
f_dir <- c("<=","<=") #不等号?
f_rhs <- c(4.3,4.5) # 不等号の右側

lp("max",f_obj,f_con,f_dir,f_rhs)
lp("max",f_obj,f_con,f_dir,f_rhs)$solution

#0-1問題にするときは、all.binオプションをTRUEにする
lp("max",f_obj,f_con,f_dir,f_rhs,all.bin = TRUE)
lp("max",f_obj,f_con,f_dir,f_rhs,all.bin = TRUE)$solution

#整数・実数混合問題の場合は、int.vecに整数指定したい変数のNoを指定
lp("max",f_obj,f_con,f_dir,f_rhs,int.vec = 1)
lp("max",f_obj,f_con,f_dir,f_rhs,int.vec = 1)$solution
lp("max",f_obj,f_con,f_dir,f_rhs,int.vec = 2)
lp("max",f_obj,f_con,f_dir,f_rhs,int.vec = 2)$solution


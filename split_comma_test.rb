

str = "紫星蓝钻,61,building,blue,shallow,pock"

str.split(',').each do | col | 
    print col[0],col[1],col[2],col[3],col[4],col[5]
end

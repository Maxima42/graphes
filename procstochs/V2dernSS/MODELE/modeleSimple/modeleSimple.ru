 NB INIT    I   gNodes names
int N[] = new int[8];
for (int no = 1; no < N.length; no++) N[no] = no;
end

States of nodes
x[1] = 10
x[2:3] = 0
x[4] =  0
x[5:7] = 0
print -T'35'  -F'resultats_f' x
end

States of mutable directed arcs
end

States of mutable undirected arcs
end

Constants
end
 E-N N0 x[1] =(x[1 ]-d21)*(x[1]>0)
 E-N N1 x[2] =d12+x[2]*(1-d12)*(1-d32)
 E-N N2 x[3] = random()
 E-N N3 x[4] =x[4]+d24
 DO-FL  ARETE ( N1 --- N2 ) $double d12=(x[1]>0)
double d21 =d32
 DO-FL  ARC ( N2 --- N4 ) double d24=d32*x[2]
 DO-FL  ARC ( N3 --- N2 ) double d32=x[3]

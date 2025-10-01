A = (linsys1.A - eye(12))/0.005;
B = (linsys1.B)/0.005;
k = lqr(A,B,Q,R);                   

A = [1,4,-2;3,11,5;7,7,7];
[V1,D1] = eig(A*(A'));
[V2,D2] = eig((A')*A);
[U,S,V] = svd(A);

function A = MySort(A,x)
for i=1:x-1
    for j=i+1:x
        if A(i)<A(j)
            temp = A(i);
            A(i) = A(j);
            A(j) = temp;
        end
    end
end
function st=mean2(v)
    st(1)=sum(v(:))/numel(v);
    newM=v-st(1);
    st(2)=(sum(newM.*newM)/numel(v))^0.5;
end
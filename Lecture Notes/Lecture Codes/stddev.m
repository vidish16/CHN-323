function st=stddev(v)
    av=average(v);
    newM=v-av;
    st=(sum(newM.*newM)/numel(v))^0.5;
end
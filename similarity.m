function r = similarity(s1, s2)

[a, b] = swalign(s1, s2);
l = length(find(b(2,:)=='|'));
r = length(find(b(2,:)~='|'))/l;
%r = length(find(b(2,:)~='|'))/100;

end


clear all;

% only CYTB for BLAST results
data2 = {
'Ovibos moschatus' 'ACI24587';
'Capra aegagrus' 'ABF60557';
'Capricornis sumatraensis' 'AAV85893';
'Capricornis crispus' 'BAH23418';
'Naemorhedus caudatus' 'YP_003406715';
'Naemorhedus swinhoei' 'YP_001874839';
% outgroup
'Gallus gallus (outgroup)' 'AAK50432' ;
}

% fetch the aminoacid sequences
N2=length(data2);
for i = 1:N2;            
    BLAST(i).Header = data2{i,1};
    fprintf('%s %s\n',BLAST(i).Header, data2{i,2});    
	BLAST(i).Sequence = getgenpept(data2{i,2},'sequenceonly','true');
end;

% task 3
distances = seqpdist(BLAST,'method','jukes-cantor','indels','pairwise-delete','squareform',true,'ALPHABET','AA');
NJtree1 = seqneighjoin(distances,'equivar',BLAST);
plot(NJtree1, 'orientation', 'top');
saveas(1, 'phytree.pdf', 'pdf')
ylabel('Genetic Distance')
title('Neighbor-joining phylogenetic tree of BLASTed animals')
close all;

% final animal selection
data = {
'Ovibos moschatus' 'FJ207536' [14151,15290] [5324,6868];
'Budorcas taxicolor' 'NC_013069' [14155,15294] [5329,6873];
'Ovis aries' 'NC_001941' [14159,15298] [5332,6876];
% blast
'Capricornis crispus' 'NC_012096' [14153,15292] [5328,6872];
'Naemorhedus caudatus' 'NC_013751' [14142,15281] [5314,6858];
'Naemorhedus swinhoei' 'NC_010640' [14152,15291] [5326,6870];
% outgroup 
'Gallus gallus (chicken)' 'NC_007236' [14903,16045] [6651,8201];
};

N=length(data);

% fetch sequences
for i = 1:N;        
    D(i).Header = data{i,1};
    CB(i).Header = data{i,1};
    CC(i).Header = data{i,1};
    CB_aa(i).Header = data{i,1};
    CC_aa(i).Header = data{i,1};
    fprintf('%s %s\n',D(i).Header, data{i,2});
    D(i).Sequence = getgenbank(data{i,2},'sequenceonly','true');
    CB(i).Sequence = D(i).Sequence(data{i,3}(1):data{i,3}(2));
    CC(i).Sequence = D(i).Sequence(data{i,4}(1):data{i,4}(2));
    CB_aa(i).Sequence = nt2aa(D(i).Sequence(data{i,3}(1):data{i,3}(2)),'geneticcode', 2);
    CC_aa(i).Sequence = nt2aa(D(i).Sequence(data{i,4}(1):data{i,4}(2)),'geneticcode', 2);    
end;

for i = 1:N;
    fprintf('%s\n',D(i).Header);
    l = length(D(i).Sequence);
    a = basecount(D(i).Sequence);
    fprintf('length=%d\n',l);
    fprintf('A:%f C:%f G:%f T:%f\n\n', a.A/l, a.C/l, a.G/l, a.T/l);    
end;

% task 4
distances_cb = seqpdist(CB_aa ,'method','jukes-cantor','indels','pairwise-delete','squareform',true,'ALPHABET','AA');
distances_cc = seqpdist(CC_aa,'method','jukes-cantor','indels','pairwise-delete','squareform',true,'ALPHABET','AA');

% task 5
distances_cb_nt = seqpdist(CB ,'method','jukes-cantor','indels','pairwise-delete','squareform',true,'ALPHABET','NT');
distances_cc_nt = seqpdist(CC,'method','jukes-cantor','indels','pairwise-delete','squareform',true,'ALPHABET','NT');

tree_cb_aa = seqneighjoin(distances_cb,'equivar',CB_aa);
plot(tree_cb_aa);
saveas(2, 'cbaa.pdf', 'pdf')
title('Neighbor joining tree - cyto B AA')

tree_cc_aa = seqneighjoin(distances_cc,'equivar',CC_aa);
plot(tree_cc_aa);
saveas(3, 'ccaa.pdf', 'pdf')
title('Neighbor joining tree - cyto C AA')

tree_cb_nt = seqneighjoin(distances_cb_nt,'equivar',CB);
plot(tree_cb_nt, 'orientation', 'right');
saveas(4, 'cbnt.pdf', 'pdf')
title('Neighbor joining tree - cyto B NT')

tree_cc_nt = seqneighjoin(distances_cc_nt,'equivar',CC);
plot(tree_cc_nt, 'orientation', 'right');
saveas(5, 'ccnt.pdf', 'pdf');
title('Neighbor joining tree - cyto C NT')

% compute consensus tree of CYTB and CYTC (AA)
weights = [sum(distances_cb) sum(distances_cc)];
weights = weights / sum(weights);
dist = distances_cb .* weights(1) + distances_cc .* weights(2);

cons_tree = seqlinkage(dist,'average',CB);
plot(cons_tree);
saveas(6, 'consaa.pdf', 'pdf')
title('CYTB - CYTC consensus tree (AA)')

% compute consensus tree of CYTB and CYTC (NT)
weights = [sum(distances_cb_nt) sum(distances_cc_nt)];
weights = weights / sum(weights);
dist_nt = distances_cb_nt .* weights(1) + distances_cc_nt .* weights(2);

cons_tree_nt = seqlinkage(dist_nt,'average',CB);
plot(cons_tree_nt, 'orientation', 'right');
saveas(7, 'consnt.pdf', 'pdf');
title('CYTB - CYTC consensus tree (NT)')


ma_cb = multialign(CB(1:length(CB)-1));
ma_cc = multialign(CC(1:length(CC)-1));

multialignviewer(ma_cb);
multialignviewer(ma_cc);

ma_cb_aa = multialign(CB_aa(1:length(CB_aa)-1));
ma_cc_aa = multialign(CC_aa(1:length(CC_aa)-1));

multialignviewer(ma_cb_aa);
multialignviewer(ma_cc_aa);

% output for latex report
fprintf('&');
for i=1:N-1;
    fprintf('%s & ', CB(i).Header);
end
fprintf('%s \\\\\n', CB(N).Header);

for i=1:N;
    fprintf('%s & ', CB(i).Header);
    for j=1:N-1;
        if i < j
            fprintf('%.2f & ', similarity(CB(i),CB(j))*100);
        else
            fprintf('%.2f & ', similarity(CC(i),CC(j))*100);
        end        
    end
    if i < j
            fprintf('%.2f \\\\\n', similarity(CB(i),CB(j))*100);
        else
            fprintf('%.2f \\\\\n', similarity(CC(i),CC(j))*100);
        end  
end


for i=1:N;
    for j=1:N;
        if i < j
            ddd(i,j) = distances_cb_nt(i,j);
        else
            ddd(i,j) = distances_cc_nt(i,j);
        end
    end
end

   
for i=1:N;
    fprintf('%s & ', CB(i).Header);
    for j=1:N-1;
        if i < j
            fprintf('%.2f & ', similarity(CB_aa(i),CB_aa(j))*100);
        else
            fprintf('%.2f & ', similarity(CC_aa(i),CC_aa(j))*100);
        end        
    end
    if i < j
            fprintf('%.2f \\\\\n', similarity(CB_aa(i),CB_aa(j))*100);
        else
            fprintf('%.2f \\\\\n', similarity(CC_aa(i),CC_aa(j))*100);
        end  
end


% SIMILARITY FUNCTION USING local alignment
%
% function r = similarity(s1, s2)
% 
% [a, b] = swalign(s1, s2);
% l = length(find(b(2,:)=='|'));
% r = length(find(b(2,:)~='|'))/l;
% %r = length(find(b(2,:)~='|'))/100;
% 
% end
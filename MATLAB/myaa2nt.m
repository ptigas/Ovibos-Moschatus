function nt = myaa2nt(seq, aa)

% get protein to nucleotide
protein = aa2nt(aa);

[ta, tb, tc] = swalign(seq.Sequence, protein);

nt = seq.Sequence(tc(1):tc(1)+length(protein)-1);
% local align to get the protein from the sequence

end


clear all;

% animal of choice : ovibos moschatus

% Ovibos moschatus mitochondrion, complete genome
% http://www.ncbi.nlm.nih.gov/nuccore/207559980
% FJ207536
% \cite{Hassanin2009}
muskox_mtdna = getgenbank('FJ207536');

% cytochrome b [Ovibos moschatus]
% http://www.ncbi.nlm.nih.gov/protein/ACI24587.1
% ACI24587
muskox_cb = getgenpept('ACI24587');

% cytochrome c oxidase subunit 1 [Ovibos moschatus]
% http://www.ncbi.nlm.nih.gov/protein/ACI24577.1
% ACI24577
muskox_cc = getgenpept('ACI24577');

% Rangifer tarandus mitochondrion, complete genome
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&TermToSearch=19119
% NC_007703
caribou_mtdna = getgenbank('NC_007703');

% cytochrome b [Rangifer tarandus]
% http://www.ncbi.nlm.nih.gov/protein/ABG66416.1
% ABG66416
caribou_cb = getgenpept('ACI24577');

% cytochrome c oxidase subunit I [Rangifer tarandus]
% http://www.ncbi.nlm.nih.gov/protein/YP_448935.1
% YP_448935
caribou_cc = getgenpept('ACI24577');

% Budorcas taxicolor mitochondrion, complete genome
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&TermToSearch=24889
% NC_013069
takin_mtdna = getgenbank('NC_013069');

% cytochrome b [Budorcas taxicolor]
% http://www.ncbi.nlm.nih.gov/protein/AAC48629.1
% AAC48629
takin_cb  = getgenpept('AAC48629');

% cytochrome c oxidase subunit 1 [Budorcas taxicolor]
% http://www.ncbi.nlm.nih.gov/protein/ACI24421.1
% ACI24421
takin_cc  = getgenpept('ACI24421');

%%%%%%%%%%%%%%%%%
% blast results %
%%%%%%%%%%%%%%%%%

% Capricornis crispus (Japanese serow) - Capricornis
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&TermToSearch=23901
% NC_012096
japanese_serow_mtdna = getgenbank('NC_012096');

% cytochrome b [Capricornis crispus]
% http://www.ncbi.nlm.nih.gov/protein/BAH23418.1
% BAH23418
japanese_serow_cb = getgenpept('BAH23418');

% cytochrome c oxidase subunit 1 [Capricornis crispus]
% http://www.ncbi.nlm.nih.gov/protein/ACI24538.1
% ACI24538
japanese_serow_cc = getgenpept('ACI24538');

% Naemorhedus caudatus (Long-tailed Goral)
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&TermToSearch=25663
% NC_013751
goral_mtdna = getgenbank('NC_013751');

% cytochrome b [Naemorhedus caudatus]
% http://www.ncbi.nlm.nih.gov/protein/YP_003406715.1
% YP_003406715
goral_cb = getgenpept('YP_003406715');

% cytochrome c oxidase subunit I [Naemorhedus caudatus]
% http://www.ncbi.nlm.nih.gov/protein/YP_003406705.1
% YP_003406705
goral_cc = getgenpept('YP_003406705');

% Naemorhedus swinhoei (Taiwan Serow) - Capricornis
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&TermToSearch=22236
% NC_010640
taiwan_serow_mtdna = getgenbank('NC_010640');

% cytochrome b [Naemorhedus swinhoei]
% http://www.ncbi.nlm.nih.gov/protein/YP_001874839.1
% YP_001874839
taiwan_serow_cb = getgenpept('YP_001874839');

% cytochrome c oxidase subunit I [Naemorhedus swinhoei]
% http://www.ncbi.nlm.nih.gov/protein/YP_001874829.1
% YP_001874829
taiwan_serow_cc = getgenpept('YP_001874829');

% extra questions

% Mammuthus primigenius mitochondrion, complete genome 
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&Ter
% mToSearch=18991
% NC_007596
% mammuth_mtdna = getgenbank('NC_007596');

% cytochrome b [Mammuthus primigenius]
% http://www.ncbi.nlm.nih.gov/protein/ADI87128.1
% ADI87128

% donkey - Equus asinus
% http://www.ncbi.nlm.nih.gov/sites/entrez?Db=genome&Cmd=ShowDetailView&TermToSearch=12144
% NC_001788

% cytochrome b [Equus asinus]
% http://www.ncbi.nlm.nih.gov/protein/NP_007393.1
% NP_007393


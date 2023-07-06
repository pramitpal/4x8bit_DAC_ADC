load switch_n_3v3.mag
select top cell
extract all
ext2spice lvs
ext2spice -o switch_n_3v3.ext.spc
quit

cmake -S $SCRATCH/XGC-Devel -B$SCRATCH/xgc_total_f \
 -DCMAKE_CXX_COMPILER=CC \
 -DCMAKE_C_COMPILER=cc \
 -DCMAKE_Fortran_COMPILER=ftn \
 -DDELTAF_CONV=OFF \
 -DXGC1=ON \
 -DCMAKE_BUILD_TYPE=Release

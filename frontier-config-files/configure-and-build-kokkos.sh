SOURCE_DIR=$1
BUILD_DIR=$2

CURDIR=$PWD
cd $SOURCE_DIR

git clone https://github.com/kokkos/kokkos

cmake -S $SOURCE_DIR/kokkos -B $BUILD_DIR/kokkos \
 -DCMAKE_BUILD_TYPE=RelWithDebInfo\
 -DCMAKE_CXX_COMPILER=CC\
 -DCMAKE_CXX_EXTENSIONS=OFF\
 -DKokkos_ENABLE_TESTS=OFF\
 -DKokkos_ENABLE_EXAMPLES=OFF\
 -DKokkos_ENABLE_SERIAL=ON\
 -DKokkos_ENABLE_OPENMP=OFF\
 -DKokkos_ENABLE_HIP=ON\
 -DKokkos_ARCH_VEGA90A=ON\
 -DKokkos_ENABLE_DEBUG=OFF\
 -DCMAKE_INSTALL_PREFIX=$BUILD_DIR/kokkos/install

cmake --build $BUILD_DIR/kokkos -j 8 --target install
cd $CURDIR
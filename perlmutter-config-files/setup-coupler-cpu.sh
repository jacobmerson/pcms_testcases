
DIR=$PWD

source $DIR/loads-cpu.sh

#SOURCE_DIR=$HOME/coupler-sources
#BUILD_DIR=$SCRATCH/coupler-build

SOURCE_DIR=$HOME/coupler-sources-cpu
BUILD_DIR=$SCRATCH/coupler-build-cpu

mkdir $SOURCE_DIR
cd $SOURCE_DIR

PKG_ROOT=/global/common/software/m499/perlmutter/install
COMPILER=cpu-gcc
export CMAKE_PREFIX_PATH=$PKG_ROOT/kokkos/current/${COMPILER}:$PKG_ROOT/adios2/current/${COMPILER}:$CMAKE_PREFIX_PATH



#source $DIR/configure-and-build-kokkos.sh $SOURCE_DIR $BUILD_DIR
source $DIR/configure-and-build-catch2.sh $SOURCE_DIR $BUILD_DIR
source $DIR/configure-and-build-omega-h.sh $SOURCE_DIR $BUILD_DIR
source $DIR/configure-and-build-redev.sh $SOURCE_DIR $BUILD_DIR
source $DIR/configure-and-build-flcl.sh $SOURCE_DIR $BUILD_DIR
source $DIR/configure-and-build-pcms.sh $SOURCE_DIR $BUILD_DIR

git clone -b wdmcpl-rebase git@github.com:jacobmerson/XGC-Devel.git
source $DIR/configure-and-build-coupled-xgc-deltaf.sh $SOURCE_DIR $BUILD_DIR
source $DIR/configure-and-build-coupled-xgc-totalf.sh $SOURCE_DIR $BUILD_DIR

cd $DIR

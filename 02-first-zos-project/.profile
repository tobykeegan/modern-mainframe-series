export _BPX_SHAREAS=YES
export _BPX_SPAWN_SCRIPT=YES

#========================================================#
# Aliases                                                #
#========================================================#
alias python="python3.8"
alias pip="pip3.8"
alias atag="chtag -tc ISO8859-1"

#========================================================#
# ASCII <-> EBCDIC conversion                            #
#========================================================#
export _BPXK_AUTOCVT="ON"
export _CEE_RUNOPTS="FILETAG(AUTOCVT,AUTOTAG) POSIX(ON)"
_TAG_REDIR_ERR="txt"
_TAG_REDIR_IN="txt"
_TAG_REDIR_OUT="txt"
LANG="C"

#========================================================#
# Build the PATH                                         #
#========================================================#
export PATH=/bin:/usr/sbin:.:/usr/local/perl582/bin:/usr/local/bin:$PATH
export PATH=/rocket/bin:$PATH
export PATH=/u/tobyk/bin:$PATH
export PATH=/usr/lpp/IBM/cnj/v12r0/IBM/node-v12.19.1-os390-s390x/bin:$PATH
export PATH=/$HOME/bin/bin/:$PATH
export PATH=/$HOME/bin:$PATH

#========================================================#
# Setup for Python, ZOAU                                 #
#========================================================#
export PYTHON_ENV=python38
export PYTHON_HOME=/python/v3r8
export PATH=$PYTHON_HOME/bin:$PATH
export LIBPATH=$PYTHON_HOME/lib:$LIBPATH
export FFI_LIB=$PYTHON_HOME/lib/ffi
export TERMINFO=$HOME/.terminfo
export PKG_CONFIG_PATH=$PYTHON_HOME/lib/pkgconfig:$PYTHON_HOME/share/pkgconfig
export CURL_CA_BUNDLE=$PYTHON_HOME/etc/ssl/cacert.pem

export ZOAU_ROOT=/usr/lpp/IBM/zoautil
export PATH=${ZOAU_ROOT}/bin:$PATH
export PYTHONPATH=${ZOAU_ROOT}/lib
export LIBPATH=${ZOAU_ROOT}/lib:$LIBPATH
export LIBPATH=/u/tobyk/.local/lib/python3.8/site-packages/zoautil_py:$LIBPATH
export ZOAU_HOME=${ZOAU_ROOT}

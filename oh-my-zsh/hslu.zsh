# HSLU Projects
function wpren() {
  if [ -d /Users/tluscre1/Documents/Studium.Local/PREN ]; then
    cd /Users/tluscre1/Documents/Studium.Local/PREN
    # define alias's
    alias pi='ssh pi@172.20.10.10'
    alias pilu='ssh pi@192.168.1.117'
    alias piurs='ssh pi@192.168.43.3'
    source activate molly
  fi
}

function wipcv() {
  if [ -d /Users/tluscre1/Documents/Studium.Local/IPCV/repo ]; then
    cd /Users/tluscre1/Documents/Studium.Local/IPCV/repo
    source activate molly
    jupyter notebook
  fi
}

function wdl4g() {
  if [ -d /Users/tluscre1/Documents/Studium.Local/DL4G/repo ]; then
    cd /Users/tluscre1/Documents/Studium.Local/DL4G/repo
    source activate dl4g
    while true; do
      vared -p "Do you wish to start PyCharm.app? [y|n] " -c yn
      case $yn in
        [Yy]* ) charm . ; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
       esac
    done
    # jupyter notebook &
  fi
}

function wkbds() {
  if [ -d /Users/tluscre1/Documents/Studium.Local/KBDS/hslu-kbds-exercises ]; then
    cd /Users/tluscre1/Documents/Studium.Local/KBDS/hslu-kbds-exercises
    source activate kbds
  fi
}

function wimath() {
  if [ -d /Users/tluscre1/Documents/Studium.Local/IMATH/hslu-imath-exercises ]; then
    cd /Users/tluscre1/Documents/Studium.Local/IMATH/hslu-imath-exercises
    OCTAVE_EXECUTABLE=`which octave-cli`
    source activate imath
    jupyter notebook &
  fi
}

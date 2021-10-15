REQUIRED_PKG="tree"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi
cd ~
mkdir -p test-I-1/$USER/{level1a,level1b/{levelb2a,levelb2b/levelb3a,levelb2c},level1c}
tree

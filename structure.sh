REQUIRED_PKG="tree"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi
cd ~
mkdir -p test-I-1/$USER/{"Tiberian Series"/{"Command & Conquer","Tiberian Sun",Renegade,"Tiberium Wars","Tiberian Twilight"},"Red Alert Series"/{"Red Alert","Red Alert 2","Red Alert 3"},"Generals Series"/Generals}
tree
touch ~/test-I-1/$USER/"-obsolete.txt"
touch ~/test-I-1/$USER/"Red Alert Series"/"Red Alert"/"Command & Conquer: Red Alert – Counterstrike.exe"
touch ~/test-I-1/$USER/"Red Alert Series"/"Red Alert"/"Command & Conquer: Red Alert – The Aftermath.exe"
touch ~/test-I-1/$USER/"Red Alert Series"/"Red Alert"/"Command & Conquer: Red Alert – Retaliation.exe"
touch ~/test-I-1/$USER/"Red Alert Series"/"Red Alert"/"Command & Conquer: Tiberian Sun – Firestorm.exe"

touch ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Tricia Helfer	Kilian Quatar (Nod General)" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Josh Holloway	Ajay (Nod Intelligence Officer)" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Micheal Ironside	Jack Granger (GDI General)" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Joseph D. Duncan	Kane" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Jennifer Morrison	Kirce James (GDI Intelligence Officer)" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Grace Park	Lt. Sandra Telfair" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Billy Dee Williams	Redmond Boyle (GDI Director)" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Shauntay Hinton	Brittany Bhima" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Shanon Cook	Cassandra Blair" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Hohn Huck	William Frank" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt
echo "Masha Sapron	Dr. Emel Ibrahiim" >> ~/test-I-1/$USER/"Tiberian Series"/"Tiberium Wars"/cast.txt


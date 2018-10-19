#!/bin/bash
if [[ $OSTYPE == 'linux-gnu' ]]; then
	python_cmd='python'
else
	python_cmd='python2'
fi

if [ $# -eq 3 ] 
then
    echo 'Seed from ' $1 ' to ' $2 '- Threads = ' $3 
else
    echo "Invalid number of arguments"
    exit 1
fi

seed1=$1
seed2=$2
proc=$3

echo "Choose the testing tool you want to execute"
echo "For more than one version, separate the number with a comma"
echo "1 = EvoSuite"
echo "2 = Randoop"
echo "3 = JTExpert"
read choice

rm -rf run.sh
echo '#!/bin/bash' >> run.sh
chmod 777 run.sh
for i in $(echo $choice | sed "s/,/ /g")
do
	if [ "$i" == "1" ]; then
		${python_cmd} scripts/evosuite.py evosuite $seed1 $seed2 subjects.txt 1 $proc
		echo 'chmod 777 evosuite/scripts/ubuntu_EvoSuite_0.sh' >> run.sh
		echo './evosuite/scripts/ubuntu_EvoSuite_0.sh' >> run.sh
	fi
	if [ "$i" == "2" ]; then
		${python_cmd} scripts/randoop.py randoop $seed1 $seed2 subjects.txt 1 $proc	
		echo 'chmod 777 randoop/scripts/ubuntu_Randoop_0.sh' >> run.sh
		echo './randoop/scripts/ubuntu_Randoop_0.sh' >> run.sh
	fi
	if [ "$i" == "3" ]; then
		${python_cmd} scripts/jtexpert.py jtexpert $seed1 $seed2 test.txt 1 $proc	
		echo 'chmod 777 jtexpert/scripts/ubuntu_JTExpert_0.sh' >> run.sh
		echo './jtexpert/scripts/ubuntu_JTExpert_0.sh' >> run.sh
	fi
done

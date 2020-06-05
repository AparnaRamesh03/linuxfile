vm_stat 5 > vm_stat2.data
filename= "/User/aparna/vm_state2.data"
tail -f $filename | 
while read $line do
if [ (cat vm_stat2.data | grep "swap")>0  ]
then
 echo "process takes more memory"> swap.txt
fi
if [ (cat vm_stat2.data | grep "r")>1  ]
then
 echo "process that has to be executed"> runqueue.txt
fi
if [ (cat vm_stat2.data | grep "cpu")>1000  ]
then
 echo "cpu usage is more"> cpu.txt
fi
End

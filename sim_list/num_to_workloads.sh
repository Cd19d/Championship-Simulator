num=0

while read line
do
    let num=num+1

    line1=`echo ${line} | awk '{print $1}'`
    line2=`echo ${line} | awk '{print $2}'`
    line3=`echo ${line} | awk '{print $3}'`
    line4=`echo ${line} | awk '{print $4}'`

    app1=`sed -n ''$line1'p' run_list.txt`
    app2=`sed -n ''$line2'p' run_list.txt`
    app3=`sed -n ''$line3'p' run_list.txt`
    app4=`sed -n ''$line4'p' run_list.txt`
    echo $app1 $app2 $app3 $app4
done < 4core_number.txt

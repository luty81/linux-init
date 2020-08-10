step() {
    declare -i current 
    current=$1/5

    gauge=""
    for((pos=0;pos<20;pos++));
    do
        p=" "; [ "${pos}" -lt "${current}" ] && p="▇"
        gauge="${gauge}${p}"
    done

    printf "[${gauge}] ${1}%%"
}

do_progress() {
    sleep 1
    step $1
    [ $2 ] && (printf "$2")
}

complete() {
    do_progress 100
    printf " \nDone!\n"
}

start=20
for((i=$start;i<100;i=i+$start));
do
    do_progress $i "\r"
done

complete
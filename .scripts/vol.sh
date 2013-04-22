vol=`amixer get Master | grep "Mono:" | grep -o '\[.*%\]'`
echo $vol

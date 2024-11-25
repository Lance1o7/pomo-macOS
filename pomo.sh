arg1=$1
shift
args="$*"

min=${arg1:?Example: pomo 15 Take a break}
sec=$((min * 1))
msg="${args:?Example: pomo 15 Take a break}"

while true; do
    date '+%H:%M' && sleep "${sec:?}" && osascript -e "display notification \"${msg}\" with title \"Pomodoro\""
done

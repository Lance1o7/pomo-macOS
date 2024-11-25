# pomo
Probably the simplest pomodoro timer CLI for ~Linux~ macOS

### Installation

You don't have to install it. Just copy the following snippet in your `.profile` / `.bashrc` / `.zshrc`.

```bash
function pomo() {
    arg1=$1
    shift
    args="$*"

    min=${arg1:?Example: pomo 15 Take a break}
    sec=$((min * 1))
    msg="${args:?Example: pomo 15 Take a break}"

    while true; do
        date '+%H:%M' && sleep "${sec:?}" && osascript -e "display notification \"${msg}\" with title \"Pomodoro\""
    done
}
```

### Usage

```
pomo 15 Take a break
```

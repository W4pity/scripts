#! /bin/sh

while [ 1 ]; do
i3lock -i ~/afs/tigre1R.png
to_kill=$(pgrep i3lock)
sleep $((28 * 60))
kill $to_kill
done

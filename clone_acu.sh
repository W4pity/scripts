if [ ! $# -eq 1 ]; then
  exit 1
fi
git clone "git@git.acu.epita.fr:$1-2019/petroc_m-$1.git"

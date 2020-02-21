chr=/home/restricted_users/restricted_user_1
mkdir -p $chr
mkdir -p $chr/{usr/bin,bin,lib,lib64}
cd $chr
cp -v /bin/{bash,sleep,echo,touch,ls,rm} $chr/bin
cp -v /usr/bin/{crontab,python3,pip3} $chr/usr/bin
list="$(ldd /bin/bash | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /bin/touch | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /bin/ls | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /bin/sleep | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /bin/echo | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /bin/rm | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /usr/bin/crontab | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /usr/bin/pip3 | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
list="$(ldd /usr/bin/python3 | egrep -o '/lib.*\.[0-9]')"
echo $list
for i in $list; do cp -v --parents "$i" "$chr"; done
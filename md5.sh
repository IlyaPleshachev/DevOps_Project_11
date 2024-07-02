online_md5="$(curl -sL http://158.160.41.146:9889 | md5sum | cut -d ' ' -f 1)"
offline_md5="$(md5sum "${WORKSPACE}/www/index.html" | cut -d ' ' -f 1)"

if [ "$offline_mb5" = "$online_md5" ]; then
    echo "Ok!"
 else
 echo 'MD5 Incorrect' | mail -s 'Warning md5 is Incorrect' -A /var/log/maillog  pleshachev@somemailhost.ru
fi

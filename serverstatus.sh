status="$(curl -o /dev/null -Iksw "%{http_code}" http://158.160.146.114:9889)"

if [ "$status" = "200" ]
then
  echo -e "Server status OK"
else
  echo 'Status server ERROR' | mail -s 'Warning server is not available' -A /var/log/maillog  pleshachev@somemailhost.ru
fi

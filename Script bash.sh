


s1=$(systemctl is-active nginx)
if [ "$s1" == "active" ]; then 
  echo "Le service nginx est   : Active  "
else
  echo  "Le service nginx  est  : Inactif"
fi
s2=$(systemctl is-active mysql)
if [ "$s1" == "active" ]; then 
  echo "Le service mysql est   : Active  "
else
  echo  "Le service mysql  est  : Inactif"
fi
s3=$(systemctl is-active ssh)
if [ "$s3" == "active" ]; then 
  echo "Le service ssh est   : Active  "
else
  echo  "Le service ssh  est  : Inactif"
fi




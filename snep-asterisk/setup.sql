ALTER USER 'root'@'localhost' IDENTIFIED BY 'sneppass';
file=`mysql -uroot -psneppass -e "SELECT count(*) as count  FROM information_schema.schemata where schema_name = 'snep'" | cut -d \t -f 2`
if [ "$file" = "
0" ];
then
	echo 'O sistema esta sendo iniciado pela primeira vez nesse ambiente, aguarde a inicializacao da base de dados.'
	cd /
	mysql -u root -psneppass < database.sql
	mysql -u root -psneppass snep < schema.sql
	mysql -u root -psneppass snep < system_data.sql
	mysql -u root -psneppass snep < core-cnl.sql	
else
    echo 'O sistema ja esta na ultima versao do SNEP.'
fi
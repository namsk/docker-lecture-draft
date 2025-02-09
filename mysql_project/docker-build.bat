@REM docker run --name mysql-container ^
@REM     --env-file .env ^
@REM     -v mysql_data:/var/lib/mysql ^
@REM     -p 13306:3306 ^
@REM     -d mysql-custom

docker run --name mysql-container ^
    --env-file .env ^
    -v mysql_data:/var/lib/mysql ^
    -p 13306:3306 ^
    --network my-network ^
    -d mysql-custom
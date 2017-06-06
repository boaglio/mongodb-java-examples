# mongodb-java-examples
MongoDB Java Examples



## Docker instances for testing

## PostgreSQL 

docker run -p 5432:5432  -e POSTGRES_PASSWORD=boaglio -d postgres 
cd db
psql -U postgres -h 127.0.0.1 < postgresql-script.sql 
psql -U postgres -h 127.0.0.1 < postgresql-json-script.sql 

## MongoDB 

docker run  -d -p 27017:27017  mongo
cd db
mongo < mongodb-script.js

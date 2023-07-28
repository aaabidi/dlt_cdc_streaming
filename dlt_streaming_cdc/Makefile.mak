up:
	docker compose up -d --build

compose-down:
	docker compose down -v

pg:
	pgcli -h localhost -p 5432 -U postgres -d postgres

pg-src:
	curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '@./s3-sink.json'


#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=guilherme' \
--data-urlencode 'password=guilherme' \
--data-urlencode 'client_secret=cL4XZurMQmbEhsrBLq7k1ZtPhqd7R97N' \
--data-urlencode 'scope=openid'
#!/bin/bash

API_URL="127.0.0.1:8443/libreapi/"
HEADER="Content-Type: application/json"

curl -k -X POST -H ${HEADER} -d @./internal_netalias.json ${API_URL}base/netalias
curl -k -X POST -H ${HEADER} -d @./internal_sipprofile.json ${API_URL}sipprofile

curl -k -X POST -H ${HEADER} -d @./external_netalias.json ${API_URL}base/netalias
curl -k -X POST -H ${HEADER} -d @./external_sipprofile.json ${API_URL}sipprofile

curl -k -X POST -H ${HEADER} -d @./core_netalias.json ${API_URL}base/netalias
curl -k -X POST -H ${HEADER} -d @./core_sipprofile.json  ${API_URL}sipprofile

curl -k -X POST -H ${HEADER} -d @./access_domain_policy.json ${API_URL}access/domain-policy
curl -k -X POST -H ${HEADER} -d @./access_service.json ${API_URL}access/service

curl -k -X POST -H ${HEADER} -d @./media_class.json ${API_URL}class/media
curl -k -X POST -H ${HEADER} -d @./ivr.json ${API_URL}base/gateway

curl -k -X PUT -H ${HEADER} -d @./cluster.json ${API_URL}cluster
curl -k -X POST -H ${HEADER} -d @./capacity_class.json ${API_URL}class/capacity
curl -k -X POST -H ${HEADER} -d @./interconnection_outbound.json ${API_URL}interconnection/outbound

curl -k -X POST -H ${HEADER} -d @./inbound_routing.json ${API_URL}routing/table

# here
###curl -k -X POST -H ${HEADER} -d @./default_in_routing_record.json ${API_URL}routing/record
curl -k -X POST -H ${HEADER} -d @./interconnection_inbound.json ${API_URL}interconnection/inbound
curl -k -X PATCH -H ${HEADER} -d @./firewall_whiteset.json ${API_URL}base/firewall/whiteset
curl -k -X POST -H ${HEADER} -d @./access_directory_user.json ${API_URL}access/directory/user

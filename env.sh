#!/bin/bash

kubectl create configmap voltdb-init-configmap
kubectl create configmap voltdb-init-classes
kubectl create configmap voltdb-init-schema
kubectl create configmap voltdb-run-env

mkdir -p /etc/voltdb
touch /etc/voltdb/license
cat <<EOF > /etc/voltdb/license
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<license>
    <permit version="1" scheme="0">
        <type>Enterprise Edition</type>
        <issuer>
            <company>VoltDB</company>
            <email>support@voltdb.com</email>
            <url>http://voltdb.com/</url>
        </issuer>
        <issuedate>2020-02-13</issuedate>
        <licensee>VoltDB Enterprise Trial User 9.2.2</licensee>
        <expiration>2020-04-23</expiration>
        <hostcount max="12"/>
        <features trial="true">
            <wanreplication>true</wanreplication>
            <dractiveactive>true</dractiveactive>
        </features>
    </permit>
    <signature>
        302D02150089B3C71C103B33B7BFBDA95209A4B36D76FD
        6EF302142C67AF849442A2C0702342161CF8B99F7E383AD4
    </signature>
</license>
EOF

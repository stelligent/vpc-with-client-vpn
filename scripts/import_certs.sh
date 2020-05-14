#!/bin/bash -x

region=us-east-1
myca=$HOME/myca

aws acm import-certificate --certificate "file://${myca}/server.crt" --private-key "file://${myca}/server.key" \
                           --certificate-chain "file://${myca}/ca.crt" \
                           --region ${region}

aws acm import-certificate --certificate "file://${myca}/client1.domain.tld.crt" \
                           --private-key "file://${myca}/client1.domain.tld.key" \
                           --certificate-chain "file://${myca}/ca.crt" \
                           --region ${region} 

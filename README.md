1. Generate a CA via scripts/create_myca.sh
2. Import the server and client certs for mutual auth via scripts/import_certs.sh
3. Substitute the ARNs into the default values of cfn/vpc-with-client-vpn.yml
4. Converge vpc-with-client-vpn.yml in your AWS account
5. Download and install the AWS VPN Client software from https://aws.amazon.com/vpn/client-vpn-download/
6. Navigate to the VPC Client Endpoint in the AWS console and download the configuration file (*.ovpn)
7. Add the mutual auth confiugration to the ovpn file
8. Add the ovpn file as a profile to the AWS VPN Client software
         ```cert /path/client1.domain.tld.crt
         key /path/client1.domain.tld.key```
9. Connect to the VPN
10. Launch an EC2 instance in the private subnet and ensure you can connect directly


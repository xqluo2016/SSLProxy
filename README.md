# SSLProxy
Linux Shell Script for start a VPS and setup a Proxy Server

Final target is to automat the following process:
1. Call VPS provider's API to automatically create a VPS server and let it run a boot script to setup apache proxy on SSL.
2. Call VPS provider's API to get IP address of newly created VPS.
3. Start a Chrome to use above proxy.
4. Once Chrome exit, destroy the VPS server to save money.

The scripts files can also be used seperately in manual process.

Known problems:
1. It takes 3-5 minutes to create the VPS. So you have to wait if you create the server every time. Alternatively, you can keep your created server, but then you may spend more $.
2. The API service of Vultr is not stable from China.

## Files:
 - ubuntu.sh - This script run on a ubuntu box and setup apache2 as a forward proxy with SSL at port 443. It disables default 80 port.
 - ubuntu_wrapper.sh - Content of this script could be used as a first time boot script for a Linux VPS.
 - mac_chrome.sh - This script can be used from a Mac OS to start Chrome browser and use above SSL enabled proxy server.
 


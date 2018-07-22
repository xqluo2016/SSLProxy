set /p IP="Enter IP: "

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --ignore-certificate-errors  --user-data-dir=c:\chrome1 --proxy-server=https://%IP%:443 

pause

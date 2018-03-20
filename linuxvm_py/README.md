#Setting up the required software for DAT210x 

```bash
az group deployment create --name iterg --resource-group $(az group create --location southeastasia --name dsvmgRG --outputtsv | cut -f4) --template-file linuxvm_py/azuredeploy.json --parameters @linuxvm_py/azuredeploy.parameters.json
```

Troubleshooting your scripts - Linux Custom Script Extension 
Your files are downloaded to a path like: /var/lib/waagent/custom-script/download/0/ and the command output is saved to stdout and stderr files in this directory. Please read these files to find out output from your script.

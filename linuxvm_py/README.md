#Setting up the required software for DAT210x 

#Template uses Azure Key Vault for setting the admin user credentials. Make sure to run the following

```bash
az keyvault update -n <keyvaultname> -g <resourcegroup> --set properties.enabledForDeployment=true
```

```bash
az group deployment create --name <name> \ 
--resource-group $(az group create --location <location> --name dsvmgRG --output tsv | cut -f4) \
--template-file <template> --parameters @<parameters>
```

Troubleshooting your scripts - Linux Custom Script Extension 
Your files are downloaded to a path like: /var/lib/waagent/custom-script/download/0/ and the command output is saved to stdout and stderr files in this directory. Please read these files to find out output from your script.

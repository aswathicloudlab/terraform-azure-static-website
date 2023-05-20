# Azure Static Website Creation

This Terraform module creates a storage container for hosting a static website.

## Resources

The following resources are created by this code:

- **Storage Account**: A storage account is created to host the static website. The name of the storage account is based on the `project_name` and `environment` variables and has the format `sa<project_name><environment>`. The storage account is created in the resource group specified by the `resource_group_name` variable and in the location specified by the `location` variable. The storage account tier, replication type, and kind are determined by the `account_tier`, `account_replication_type`, and `account_kind` variables, respectively. HTTPS traffic is enabled or disabled based on the value of the `enable_https_traffic_only` variable. The minimum TLS version is set to the value of the `min_tls_version` variable. The storage account is also tagged with the tags specified in the `tags` variable.

- **Static Website**: A static website is created in the storage account. The index document is set to `index.html` and the error 404 document is set to `404.html`.

- **Blobs**: The HTML files in the directory specified by the `html_files_dir` variable are uploaded to the `$web` container in the storage account. The content type of each uploaded blob is set to `text/html`.

## Usage

To use this code, you'll need to provide values for the following variables:

- `project_name`: The name of the project.
- `environment`: The environment (e.g., development, staging, production).
- `resource_group_name`: The name of the resource group where the storage account will be created.
- `location`: The Azure location where the resources will be created.
- `account_tier`: The tier of the storage account (e.g., Standard).
- `account_replication_type`: The replication type of the storage account (e.g., LRS).
- `account_kind`: The kind of the storage account (e.g., StorageV2).
- `enable_https_traffic_only`: Whether to allow only HTTPS traffic to the storage account.
- `min_tls_version`: The minimum TLS version supported by the storage account.
- `tags`: A map of tags to apply to the resources.
- `html_files_dir`: The path to the directory containing the HTML files to upload.



           name="mySSHVM" >> $GITHUB_ENV
            resource_group="MyResourceGroup" >> $GITHUB_ENV
            location="eastus" >> $GITHUB_ENV
            image="Ubuntu2404" >> $GITHUB_ENV
            size="Standard_D2s_v3" >> $GITHUB_ENV
            admin_username="azureuser" >> $GITHUB_ENV

                echo "Creating resource group '$resource_group' in '$location' (if it doesn't exist)..."
                 az group create --name "$resource_group" --location "$location" --output none
                  if [ $? -ne 0 ]; then
                    echo "Error: Failed to create or verify resource group '$resource_group'. Exiting."
                      exit 1
                 echo "Resource group '$resource_group' is ready."
                   
                 az vm create \
                --name "$name"  \
                --resource-group "$resource_group" \
                --location "$location" \
                 --image "$image" \
                 --size "$size" \
                 --admin-username "$admin_username" \
                 --ssh-key-value "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6R0txdaCzLfBcLtaKchMdS8XuC4OYWkxfpLzbfLOkK6kz3kxH6Z2pxvFdiCcotcr/57sWz9RRB/mytzsBqK3YGJsGkRAWrGAAqgCT8NcBpih/MZKWsu0/visqYzCKW25rQAgJSQ16WT3zHGgW5JXX9LOZw0pibvUA0yU7Ddhquk/S3iKgEid1RsoFqqoLrHgQ9I3y/Vk2RNf9QW6u6ORl/pdszubvnXlx8vLi7TPFeFIJLu0NM7rv3EsWYCM6dWQBX9by2pWiGHIxH5WjkUKra/6caKprq6G5tLA7ThJ0W0gBMZK5PbTNcJcerBzlGyx1osO6i/w42MwqCyn53HtaB99jbRQFKeb4Tv5aabFXWQas+0n6U6c7iPEi6Z4MXuYf2NTDvPFzo0U+lM5Mmswn4t1mZrHocERYTsg/cx3mpjcKqVtmHNAzT3Hs3nrzI9JCjnlEuBdJ2NRVuLgk8NLcIj36FScomJefGCwbkzqBod+ujSh3mrCMfpJq6pj1lWOpC24RyU7tjInaoJPhZo2I/7iILyHrixM7xpkBVUYW3Dlw3FMfvDHyoiDbJEiQfOY6PGzC8saCsTqbYAvqm2GW/GkyNWkT9dJaVYU9iUdyV6se9w7TOPzdbV8842nIZJGOmxVduCEzUX5mM6wQGyzYiLTPvYbcblujIQYYyLZ/Dw== clear@DESKTOP-LLSGRBE"
                   az vm open-port -g "$resource_group" -n "$name" --port 22 --priority 100 --output none
                   az vm open-port -g "$resource_group" -n "$name" --port 80 --priority 101 --output none
                   az vm open-port -g "$resource_group" -n "$name" --port 5000 --priority 102 --output none

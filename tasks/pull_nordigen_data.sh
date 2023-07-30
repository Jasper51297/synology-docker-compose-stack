curl \
--location \
--request POST 'http://IP:8009/autoupload?secret=fireflyiiisecret' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer authtoken' \
--form 'json=@"/path/to/import-nordigen.json"'

# Import configuration examples can be found here: https://github.com/firefly-iii/import-configurations
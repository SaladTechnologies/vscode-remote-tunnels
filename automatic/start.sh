#!/bin/bash

# Launch the VS Code Server using an existing tunnel
echo -e "\nCreate a tunnel..."
#code tunnel --accept-server-license-terms --name $SALAD_MACHINE_ID --tunnel-id $TUNNEL_ID --host-token $ACCESS_TOKEN &
code tunnel --accept-server-license-terms --name $SALAD_CONTAINER_GROUP_ID --tunnel-id $TUNNEL_ID --host-token $ACCESS_TOKEN &

# The containers running on SaladCloud must have a continuously running process; and if the process completes, SaladCloud will automatically reallocate the instances to rerun the image.
echo -e "\nSleeping indefinitely..."
sleep infinity

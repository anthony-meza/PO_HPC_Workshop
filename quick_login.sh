#!/bin/bash

# Define your username
username=anthony.meza

# Define a list of remote servers
servers=(
    "ilko.whoi.edu"
    "poseidon.whoi.edu"
)

# Generate SSH keys if they don't already exist
if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Generating SSH key..."
    ssh-keygen -t rsa -b 4096 -C "$username" -N "" -f ~/.ssh/id_rsa
else
    echo "SSH key already exists. Skipping key generation."
fi

# Copy the SSH key to each server
for server in "${servers[@]}"; do
    echo "Copying SSH key to $server..."
    ssh-copy-id "$username@$server"
done

echo "SSH key setup complete for all servers."


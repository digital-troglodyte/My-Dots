#!/usr/bin/env bash

# 1. Get user input for the alias name and command
read -p "Enter the shortcut name (e.g., ll): " alias_name
read -p "Enter the full command it should run (e.g., ls -la): " full_command

# Define the new alias string
alias_string="alias ${alias_name}='${full_command}'"

# 2. Check if the alias name already exists in .bashrc to avoid duplicates
if grep -q "alias ${alias_name}=" ~/.bashrc.d/20-aliases.sh; then
    echo "Error: An alias for '${alias_name}' already exists in ~/.bashrc.d/20-aliases!
    exit 1
fi

# 3. Append the alias to .bashrc
echo "$alias_string" >> ~/.bashrc.d/20-aliases

echo "Success! Added: $alias_string"
echo "Please run 'source ~/.bashrc' or restart your terminal to apply changes."

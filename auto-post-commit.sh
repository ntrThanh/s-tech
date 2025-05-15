#!/bin/bash

bundle exec jekyll build

git add .
while [[ -z "$description" ]]; do
    read -p "Enter your description of the committed behavior: " description
done
git commit -m "$description"

git push 2>&1 | while IFS= read -r line
do
    if [[ $line =~ ([0-9]+)% ]]; then
        percent=${BASH_REMATCH[1]}
        width=50
        done=$((percent * width / 100))
        left=$((width - done))
        done_str=$(printf "%0.s#" $(seq 1 $done))
        left_str=$(printf "%0.s." $(seq 1 $left))
        printf "\rProgress: [%s%s] %d%%" "$done_str" "$left_str" "$percent"
    fi
done

echo -e "\nPush finished."
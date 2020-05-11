#!/bin/bash

update=$(/usr/local/bin/brew update)
outdated=$(/usr/local/bin/brew outdated)

nums=(✅ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟)

pkg_count=0
for pkg in ${outdated[@]}; do
    pkg_count=$((pkg_count+1))
done

if [ $pkg_count -le 10 ]; then
    echo ${nums[pkg_count]}
else
    echo *️⃣
fi

echo "---"
if [ $pkg_count -eq 0 ]; then
    echo "Homebrew is up to date! :D"
else
    echo "${pkg_count} brew packages to update | bash=${HOME}/.config/zsh/autoloaded_functions/osx/update_brew refresh=true"
fi


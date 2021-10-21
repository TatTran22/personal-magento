#!/bin/zsh

cowthink "Setup Upgrade..."

bin/magento setup:upgrade

cowthink "Static content deploy"

bin/magento s:s:d -f

cowthink "Compile..."

bin/magento setup:di:compile

cowthink "Flush cache"

bin/magento c:f

cowsay "Restarting PHP service"

brew services restart php@7.4

cowsay "Done!" | lolcat

git push origin master
bundle exec jekyll build
rsync -au _site/ do:/var/www/talkingaboutcraft.maryrosecook.com/

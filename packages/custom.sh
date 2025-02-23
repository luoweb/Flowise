#!/bin/bash

# logo
# sed -i "" "s#flowise#blockai#g" ../packages/ui/src/ui-component/extended/Logo.jsx
xsed='sed -i'
system=`uname`
if [ "$system" == "Darwin" ]; then
  echo "This is macOS"
  xsed="sed -i ''"
else
  echo "This is Linux"
  xsed='sed -i'
fi

# $xsed "s#/assets/images/flowise_logo.png#/assets/images/blockai_logo.drawio.svg#g" ../packages/ui/src/ui-component/extended/Logo.jsx
# $xsed "s#/assets/images/flowise_logo_dark.png#/assets/images/blockai_logo_dark.drawio.svg#g" ../packages/ui/src/ui-component/extended/Logo.jsx
$xsed "s#/assets/images/flowise_logo.png#/assets/images/blockai_logo.png#g" ../packages/ui/src/ui-component/extended/Logo.jsx
$xsed "s#/assets/images/flowise_logo_dark.png#/assets/images/blockai_logo_dark.png#g" ../packages/ui/src/ui-component/extended/Logo.jsx

# avatar
find ../packages -type f -maxdepth 3 | grep -vE "custom.sh|.cache" | xargs grep -o "Flowise - Low-code LLM apps builder"
$xsed "s#Flowise - Low-code LLM apps builder#BloclAI - LLM apps builder#g" ../packages/ui/public/index.html
$xsed "s#Flowise - Low-code LLM apps builder#BloclAI - LLM apps builder#g" ../packages/ui/index.html

find ../packages -type f -maxdepth 9 -name "*.ts" -o -name "*.html" | grep -vE " |custom.sh|.cache" | xargs grep -o "Powered by"
# chatflow
find ../packages -type f -maxdepth 5 -name "*.jsx" | xargs grep -o "Type your question"

# chatembed
find ../packages -type f -maxdepth 7 -name "*.jsx" | xargs grep -o "https://cdn.jsdelivr.net/npm/flowise-embed/dist/web.js"

# url
find ../packages -type f -maxdepth 4 -name "*.json" -o -name "*.html" | xargs -I@ bash -c  'grep -o "https://flowiseai.com"  "@"'
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/ui/index.html
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/ui/public/index.html
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/ui/package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/server/package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/components/package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" "../packages/server/marketplaces/chatflows/WebPage QnA.json"

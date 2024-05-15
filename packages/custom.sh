#!/bin/bash

# logo
# sed -i "" 's#flowise#blockai#g' ../packages/ui/src/ui-component/extended/Logo.jsx
sed -i "" 's#/assets/images/flowise_logo#/assets/images/blockai_logo#g' ../packages/ui/src/ui-component/extended/Logo.jsx

# avatar
find ../packages -type f -maxdepth 3 | grep -v "custom.sh" | xargs grep -o "Flowise - Low-code LLM apps builder"
sed -i "" 's#Flowise - Low-code LLM apps builder#BloclAI - LLM apps builder#g' ../packages/ui/public/index.html
sed -i "" 's#Flowise - Low-code LLM apps builder#BloclAI - LLM apps builder#g' ../packages/ui/index.html

# url
find ../packages -type f -maxdepth 3 | grep -v "custom.sh"  | xargs grep -o "https://flowiseai.com" 
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' ../packages/ui/index.html
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' ../packages/ui/public/index.html
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' ../package.json
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' ../packages/ui/package.json
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' ../packages/server/package.json
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' ../packages/components/package.json
sed -i "" 's#https://flowiseai.com#https://roweb.cn#g' "../packages/server/marketplaces/chatflows/WebPage QnA.json"

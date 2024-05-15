#!/bin/bash

# logo
# sed -i "" "s#flowise#blockai#g" ../packages/ui/src/ui-component/extended/Logo.jsx
# xsed='sed -i ""'
xsed='sed -i'
$xsed "s#/assets/images/flowise_logo#/assets/images/blockai_logo#g" ../packages/ui/src/ui-component/extended/Logo.jsx

# avatar
find ../packages -type f -maxdepth 3 | grep -v "custom.sh" | xargs grep -o "Flowise - Low-code LLM apps builder"
$xsed "s#Flowise - Low-code LLM apps builder#BloclAI - LLM apps builder#g" ../packages/ui/public/index.html
$xsed "s#Flowise - Low-code LLM apps builder#BloclAI - LLM apps builder#g" ../packages/ui/index.html

# url
find ../packages -type f -maxdepth 3 | grep -v "custom.sh"  | xargs grep -o "https://flowiseai.com" 
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/ui/index.html
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/ui/public/index.html
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/ui/package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/server/package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" ../packages/components/package.json
$xsed "s#https://flowiseai.com#https://roweb.cn#g" "../packages/server/marketplaces/chatflows/WebPage QnA.json"

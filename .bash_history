gcloud auth
gcloud auth list
gcloud config list project
export API_KEY=AIzaSyAiEKZTDIAaTdJXImFMHVER92kPFvEUoR0
echo $API_KEY
nano ocr-request.json
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request.json
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request.json
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request.json
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request.json
nano ocr-request_fr.json
cp ocr-request.json ocr-request-fr.json
cp ocr-request.json ocr-request-passport.json
nano ocr-request-passport.json 
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-passport.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request-passport.json 
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-passport.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-fr.json https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-passport.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request-passport.json 
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-passport.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
nano ocr-request-passport.json 
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-passport.json  https://vision.googleapis.com/v1/images:annotate?key=${API_KEY}
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-fr.json https://vision.googleapis.com/v1/images:annotate?key=${API_KEY} -o ocr-response-fr.son
curl -s -X POST -H "Content-Type: application/json" --data-binary @ocr-request-fr.json https://vision.googleapis.com/v1/images:annotate?key=${API_KEY} -o ocr-response-fr.json
rm -rf ocr-response-fr.son 
nano translate-request.json
tail ocr-response-fr.json 
STR=$(jq .responses[0].textAnnotations[0].description ocr-response.json) && STR="${STR//\"}" && sed -i "s|your_text_here|$STR|g" translation-request.json
ll
STR=$(jq .responses[0].textAnnotations[0].description ocr-response-fr.json) && STR="${STR//\"}" && sed -i "s|your_text_here|$STR|g" translate-request.json
cat ocr-response-fr.json 
cat translate-request.json 
curl -s -X POST -H "Content-Type: application/json" --data-binary @translate-request.json https://translation.googleapis.com/language/translate/v2?key=${API_KEY} -o translation-response.json
cat translation-response.json 
nano nl-request.json
STR=$(jq .data.translations[0].translatedText  translation-response.json) && STR="${STR//\"}" && sed -i "s|your_text_here|$STR|g" nl-request.json
cat nl-request.json 
curl "https://language.googleapis.com/v1/documents:analyzeEntities?key=${API_KEY}"   -s -X POST -H "Content-Type: application/json" --data-binary @nl-request.json
cat
ls
cat README-cloudshell.txt 
ls
rm -rf README-cloudshell.txt 
l
ls
git init
git add README.md
echo "VISION API-GCP" >> README.md 
git add README.md
git commit -m "completed first lab"
git push
git remote add origin git@github.com:jyameo/Gcloud-Machine-Learning-API.git
git push -u origin master
git remote add origin git@github.com:jyameo/Gcloud-Machine-Learning-API.git
git push -u origin master
git config --global user.email "jessy.yameogo@gmail.com"
git config --global user.name "JessYam"
git push -u origin master
git add .
git commit -am "completed first lab"
git push -u origin master
git remote add origin https://github.com/jyameo/Gcloud-Machine-Learning-API.git
git remote -v
git remote rm origin
git remote add origin https://github.com/jyameo/Gcloud-Machine-Learning-API.git
git push -u origin master
ls
mkdir lab1
mv *.json lab1/
ls
git add .

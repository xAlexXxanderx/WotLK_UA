project_folder=`cd "$(dirname "$0")" && pwd`

version=`grep "Version:" $project_folder"/WotLK_UA.toc" | cut -d' ' -f3`

cd $project_folder && cd ../ && zip -r $project_folder/releases/WotLK_UA-v$version.zip WotLK_UA -x "WotLK_UA/.*" "WotLK_UA/releases/*" "WotLK_UA/docs/*" "WotLK_UA/scripts/*" "WotLK_UA/create_release.sh"

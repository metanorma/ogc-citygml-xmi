# OGC CityGML 3.0中文版本


## 安装metanorma for OGC官方模板

docker pull metanorma/metanorm


## 安装metanorma mn for OGC CityGML3官方模板
第一次运行容器：
docker run --dns=8.8.8.8 -v "${PWD}:/metanorma" -w /metanorma -it metanorma/metanorma /bin/bash

第二次进入容器：
docker exec -it containerID /bin/bash

## 配置代理 (In China)

git config --global http.proxy http://192.168.1.94:10811
git config --global https.proxy http://192.168.1.94:10811
export http_proxy=http://192.168.1.94:10811
export https_proxy=http://192.168.1.94:10811
export all_proxy=socks5://192.168.1.94:10810

## 内置字段的翻译

- 寻找ogc的目录：gem which metanorma-ogc
- 拷贝ogc 模板目录：
cp -r metanorma-ogc-2.7.4 /usr/local/bundle/gems/
- 寻找uml插件的目录：gem which metanorma-plugin-lutaml
cp -r metanorma-plugin-lutaml-0.7.26/ /usr/local/bundle/gems/


### output all （doc, xml, html, pdf）
yes yes | metanorma site generate


### output just HTML and pdf
metanorma sources/standard/20-010.adoc --type ogc --extensions html pdf --skip-datauriimage -o ./output 




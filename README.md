# XcodeGenSample
XcodeGen的範例專案，用以解決 xcodeproj 衝突狀況，當git 衝突發生時，執行 `sh makeproject.sh` 以重新產生 xcodeproj 與 xcworkspace 檔案。
# 安裝工具們

### 安裝必要工具 
```shell
# mint
brew install mint
# rbenv
brew install rbenv
```
### 安裝 Bundler
``` shell
rbenv install 2.7.2
rbenv local 2.7.2
rbenv rehash
gem install bundler
```
### 產製 xcworkspace
```shell
./makeproject.sh
```

### 輸出設定

* Scheme
  1. XcodeGenSample-STAGING
  2. XcodeGenSample-PROD
* Configuration
  * DEV
  * STAGING
  * PROD
* Xcode 版本 : 14
* iOS 最低版本: 11.0






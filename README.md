# XcodeGenSample

XcodeGen的範例專案，用以解決 xcodeproj 衝突狀況，當git 衝突發生時，執行 `make gen` 以重新產生 xcodeproj 與 xcworkspace 檔案。

## 安裝必要的工具

```shell
make install
```
## 建立 xcworkspace
```shell
make gen
```

## 輸出後 Xcode 的設定

* Xcode 版本 : 14
* iOS 最低版本: 12.0
* Scheme
  1. XcodeGenSample-UAT
  2. XcodeGenSample-PROD
* Configuration
  * UAT-Debug
  * UAT-Release
  * PROD-Debug
  * PROD-Release






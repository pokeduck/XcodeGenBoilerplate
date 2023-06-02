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

* Xcode 版本 : 14.3
* iOS 最低版本: 12.0
* Scheme
  1. XcodeGenSample-UAT
  2. XcodeGenSample-PROD
* Configuration
  * UAT-Debug
  * UAT-Release
  * PROD-Debug
  * PROD-Release


## 參考
* [Apple : Xcode Build Settings](https://developer.apple.com/documentation/xcode/build-settings-reference)
* [Hokila Jan : XcodeGen 導入教學與心得
](https://hokilajan.medium.com/xcodegen-%E5%B0%8E%E5%85%A5%E6%95%99%E5%AD%B8%E8%88%87%E5%BF%83%E5%BE%97-d980098fbb6e)



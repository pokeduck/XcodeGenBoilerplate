# XcodeGenDemo
xcodegen 與 xcconfig 相關設定練習，解決合併時專案檔發生衝突，可以有效解決。
# 安裝工具們

1. ``brew install mint``
2. 創建 ``Mintfile``
3. ``mint bootstrap --link`` 安裝 Mintfile所有的套件， --link 為建立 Global 連結，在其他地方也可以用。
4. ``brew install rbenv``
5. ``echo "2.7.2" > .ruby-version`` 設定 ruby 版本
6. ``source ~/.zshrc`` 重新載入 rbenv，安裝 rbenv會把 ``eval "$(rbenv init -)"`` 塞入 zshrc 或是 bash_profile 中
7. ``rbenv local`` 確認 local ruby 版本
8. ``gem install bundle``
9.  ``bundle install`` 安裝 Gemfile 裡面的套件

# XcodeGen

1. 建立 ``project.yml``
2. ``xcodegen``

## info.plist

先用 xocde 產生一次 info.plist，在指定路徑到設定檔，用 xcodegen 產生的會少某些東西。

## Build Phase
執行 swiftformat 讀取 .swiftformat

# xcconfig files
...

# fastlane
...
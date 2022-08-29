source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '12.0'

target 'XcodeGenSample' do

  use_frameworks!

  pod 'Alamofire'
  pod 'R.swift'
  pod 'LookinServer', :configurations => ['PROD-Debug','UAT-Debug']
  pod 'Kingfisher'
end

post_install do |pi|
  pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      end
  end
end
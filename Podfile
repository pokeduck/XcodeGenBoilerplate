source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.0'

target 'XcodeGenSample' do

  use_frameworks!

  pod 'Alamofire'
  pod 'R.swift'
  pod 'LookinServer', :configurations => ['DEV']
  pod 'Kingfisher'
end

post_install do |pi|
  pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
      end
  end
end
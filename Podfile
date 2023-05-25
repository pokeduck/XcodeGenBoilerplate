source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '12.0'

target 'XcodeGenSample' do

  use_frameworks!

  pod 'Alamofire', '~> 5.0'
  pod 'R.swift', '~> 6.0'
  pod 'LookinServer', :configurations => ['PROD-Debug','UAT-Debug']
end

post_install do |pi|
  pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
          config.build_settings["DEVELOPMENT_TEAM"] = ''
          config.build_settings['CODE_SIGN_IDENTITY'] = ''
          config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      end
  end
end

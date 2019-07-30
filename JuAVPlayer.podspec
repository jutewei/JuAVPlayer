Pod::Spec.new do |s|
  s.name    = 'JuAVPlayer'
  s.version = '1.3'
  s.summary = 'JuAVPlayer'
  s.homepage    = 'https://github.com/jutewei/JuAVPlayer'
  s.license = 'MIT'
  s.platform    = :ios
  s.author  = {'Juvid' => 'jutewei@qq.com'}
  s.ios.deployment_target = '9.0'
  s.source  = {:git => 'https://github.com/jutewei/JuAVPlayer.git', :tag => s.version}
  s.source_files  =  "JuAVPlayer/JuPlayer/*.{h,m}"
  s.requires_arc = true
  s.frameworks  = 'UIKit', 'AVFoundation', 'Photos'

end
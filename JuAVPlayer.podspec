Pod::Spec.new do |s|
  s.name    = 'JuAVPlayer'
  s.version = '1.0'
  s.summary = 'Summary of your library.'
  s.homepage    = 'Your library path in github'
  s.license = 'MIT'
  s.platform    = :ios
 # s.swift_version = '4.2'
  s.author  = {'Juvid' => 'jutewei@qq.com'}
  s.ios.deployment_target = '8.0'
  s.source  = {:git => 'https://github.com/jutewei/JuAVPlayer.git', :tag => s.version}
  #s.source_files = 'Your library name/**/*.{swift}'
  s.requires_arc = true
  s.frameworks  = 'UIKit', 'AVFoundation', 'Photos'
 # s.dependency 'SnapKit'
end
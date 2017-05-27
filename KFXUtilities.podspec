

Pod::Spec.new do |s|
  s.name             = 'KFXUtilities'
  s.version          = '0.15.1'
  s.summary          = 'Some utility and helper classes.'

  s.description      = <<-DESC
A collection of Utility and helper classes.
                       DESC

  s.homepage         = 'https://kfxtech@bitbucket.org/kfxteam/kfxutilities_podprivate.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Christian Fox' => 'christianfox890@icloud.com' }
  s.source           = { :git => 'https://kfxtech@bitbucket.org/kfxteam/kfxutilities_podprivate.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'KFXUtilities/Classes/**/*'
  s.dependency 'KFXAdditions'
end

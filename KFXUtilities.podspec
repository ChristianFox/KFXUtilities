

Pod::Spec.new do |s|
  s.name             = 'KFXUtilities'
  s.version          = '1.3.0'
  s.summary          = 'Some utility and helper classes.'

  s.description      = <<-DESC
A collection of Utility and helper classes.
                       DESC

  s.homepage         = 'https://kfxtech@bitbucket.org/kfx_pods/kfxutilities.git'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Christian Fox' => 'christianfox890@icloud.com' }
  s.source           = { :git => 'https://kfxtech@bitbucket.org/kfx_pods/kfxutilities.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'KFXUtilities/Classes/**/*'
  s.dependency 'KFXAdditions'
end

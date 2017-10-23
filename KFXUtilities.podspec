

Pod::Spec.new do |s|
  s.name             = 'KFXUtilities'
  s.version          = '2.0.0'
  s.summary          = 'Some utility and helper classes.'

  s.description      = <<-DESC
A collection of Utility and helper classes. (much smaller than it once was as most classes have been moved into their own pods)
                       DESC

  s.homepage         = 'https://kfxtech@bitbucket.org/kfx_pods/kfxutilities.git'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Christian Fox' => 'christianfox890@icloud.com' }
  s.source           = { :git => 'https://kfxtech@bitbucket.org/kfx_pods/kfxutilities.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'KFXUtilities/Classes/**/*'
end

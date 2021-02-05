Pod::Spec.new do |s|
  s.name             = 'KFXUtilities'
  s.version          = '2.4.0'
  s.summary          = 'Some utility and helper classes.'

  s.description      = <<-DESC
A collection of Utility and helper classes. (much smaller than it once was as most classes have been moved into their own pods)
                       DESC

  s.homepage         = 'https://github.com/ChristianFox/KFXUtilities.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Christian Fox' => 'christianfox890@icloud.com' }
  s.source           = { :git => 'https://github.com/ChristianFox/KFXUtilities.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'KFXUtilities/Classes/**/*'
  s.dependency 'KFXCore'

end

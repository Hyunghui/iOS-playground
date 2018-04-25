# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

target 'iOS-Playground' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for iOS-Playground
  pod 'CocoaLumberjack/Swift'

  target 'iOS-PlaygroundTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'iOS-PlaygroundUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

# CocoaLumberjack: To avoid "Block implicitly retains 'self'; warning"
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF'] = 'NO'
        end
    end
end

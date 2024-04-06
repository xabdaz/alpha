# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'

workspace 'alphaproject.xcworkspace'
def module_core
  pod 'ModuleCore', :path => 'Modul/ModuleCore'
end

target 'alpha' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  module_core
  # Pods for alpha

end

target 'ModuleCore_Example' do
  use_frameworks!
  project 'Modul/ModuleCore/Example/ModuleCore.xcodeproj'
  module_core
end

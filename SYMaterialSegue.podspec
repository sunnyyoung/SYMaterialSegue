Pod::Spec.new do |s|

  s.name         = "SYMaterialSegue"
  s.version      = "1.0"
  s.summary      = "A custom storyboard segue like the Android Material Animation style."
  s.homepage     = "https://github.com/Sunnyyoung/SYMaterialSegue"
  s.license      = "MIT"
  s.authors      = { 'Sunnyyoung' => 'https://github.com/Sunnyyoung' }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Sunnyyoung/SYMaterialSegue.git", :tag => s.version }
  s.source_files = "SYMaterialSegue/SYMaterialSegue/*.{h,m}"
  s.requires_arc = true

end
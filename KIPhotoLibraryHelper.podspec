Pod::Spec.new do |s|
  s.name         = "KIPhotoLibraryHelper"
  s.version      = "0.1.0"
  s.summary      = "A set of helpers for PHPhotoLibrary."
  s.homepage     = "https://github.com/kaiinui/KIPhotoLibraryHelper"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/kaiinui/KIPhotoLibraryHelper.git", :tag => "v0.1.0" }
  s.source_files  = "PhotoLibraryHelper/Classes/**/*.{h,m}"
  s.requires_arc = true
  s.platform = "ios", '8.0'
end
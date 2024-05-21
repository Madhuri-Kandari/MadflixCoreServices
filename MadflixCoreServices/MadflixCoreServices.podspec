

Pod::Spec.new do |spec|

  spec.name         = "MadflixCoreServices"
  spec.version      = "1.0.0"
  spec.summary      = "Madflix app network SDK"
  spec.description  = "Madflix app's hosting network SDK in pods"

  spec.homepage     = "https://github.com/Madhuri-Kandari/MadflixCoreServices"
  spec.license      = "MIT"
  spec.author             = { "Chandana Sudha Madhuri Kandari" => "madhurikandari5@gmail.com" }
  
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/Madhuri-Kandari/MadflixCoreServices.git", :tag => spec.version.to_s }


  spec.source_files  = "MadflixCoreServices/**/*.{swift}"
  spec.swift_version = "5.0"
end

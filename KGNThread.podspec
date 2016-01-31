Pod::Spec.new do |spec|
  spec.name = 'KGNThread'
  spec.version = '1.0'
  spec.authors = {'David Keegan' => 'me@davidkeegan.com'}
  spec.homepage = 'https://github.com/kgn/KGNThread'
  spec.summary = 'A collection of helpful methods that wrap GCD.'  
  spec.source = {:git => 'https://github.com/kgn/KGNThread.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios, '8.0'
  spec.requires_arc = true
  spec.frameworks = 'Foundation'
  spec.source_files = 'Source/Thread.swift'
end

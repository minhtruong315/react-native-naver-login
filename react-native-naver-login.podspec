
package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']
  s.requires_arc = true
  s.license      = package['license']
  s.homepage     = package['homepage']
  s.authors      = { "jeffgukang" => "" }
  s.source       = { :git => "https://github.com/minhtruong315/react-native-naver-login", :tag => 'v#{version}'}
  s.source_files = 'ios/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.dependency 'React-Core'
end
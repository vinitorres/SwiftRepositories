platform :ios, '11.0'

def shared_pods
   pod 'RSReactiveRequest', :git => 'https://github.com/redspark-io/RSReactiveRequest', :commit => '0b9a11777579395f5b613e356a316be0e858904e'
   pod 'Alamofire', '~> 4.9.1'
   pod 'CodableAlamofire', '~> 1.1.2'
   pod 'RxSwift', '~> 5.0.1'
   pod 'SVProgressHUD', '~> 2.2.5'
end

def shared_tests_pods
  pod 'Nimble', '~> 7.3.1'
end

target 'SwiftProjects' do
    use_frameworks!
    inhibit_all_warnings!

    shared_pods
end

target 'SwiftProjectsTests' do
  use_frameworks!
  inhibit_all_warnings!
  shared_pods
  shared_tests_pods
end


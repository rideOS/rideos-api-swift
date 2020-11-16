Pod::Spec.new do |s|
  s.name             = 'RideOsApiSwift'
  s.version          = '0.1.0'
  s.summary          = 'Swift bindings for RideOS''s API'

  s.description      = <<-DESC
  iOS bindings for RideOS's API
                       DESC

  s.homepage         = 'https://github.com/rideOS/rideos-api-swift'
  s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author           = { 'rideOS' => 'support@rideos.ai' }
  s.source           = { :git => 'https://github.com/rideOS/rideos-api-swift.git', :tag => '0.1.0' }

  s.ios.deployment_target = '12.0'

  s.dependency "gRPC-Swift-Plugins", "~> 1.0.0-alpha.20"
  s.dependency "gRPC-Swift", "~> 1.0.0-alpha.20"
  
  s.source_files = 'swift/**/*'
  
  s.script_phase = { :name => 'Compile protos', :script => '${PODS_TARGET_SRCROOT}/build-protos.sh', :execution_position => :before_compile}
  
  
  # s.source_files = 'RideOsApi/**/*'
  #
  # s.subspec 'Messages' do |ms|
  #   ms.source_files = 'RideOsApiProto/**/*.pbobjc.{h,m}'
  #   ms.header_mappings_dir = 'RideOsApiProto'
  #   ms.requires_arc = false
  #   ms.dependency 'Protobuf'
  # end
  #
  # s.subspec 'Services' do |ss|
  #   ss.source_files = 'RideOsApiProto/**/*.pbrpc.{h,m}'
  #   ss.header_mappings_dir = 'RideOsApiProto'
  #   ss.requires_arc = true
  #   ss.dependency 'gRPC-ProtoRPC'
  #   ss.dependency "#{s.name}/Messages"
  # end
  #
  # # This is needed by all pods that depend on Protobuf:
  # s.pod_target_xcconfig = {
  #   'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
  #   'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  # }
end

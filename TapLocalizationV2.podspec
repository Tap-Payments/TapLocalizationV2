Pod::Spec.new do |tapLocalization|
    
    tapLocalization.platform                = :ios
    tapLocalization.ios.deployment_target   = '10.0'
    tapLocalization.swift_version           = '4.2'
    tapLocalization.name                    = 'TapLocalizationV2'
    tapLocalization.summary                 = 'Tap Localization Manager.'
    tapLocalization.requires_arc            = true
    tapLocalization.version                 = '1.0.0'
    tapLocalization.license                 = { :type => 'MIT', :file => 'LICENSE' }
    tapLocalization.author                  = { 'Osama Rabie' => 'o.rabie@tap.company' }
    tapLocalization.homepage                = 'https://github.com/Tap-Payments/TapLocalizationV2'
    tapLocalization.source                  = { :git => 'https://github.com/Tap-Payments/TapLocalizationV2.git', :tag => tapLocalization.version.to_s }
    tapLocalization.default_subspecs        = 'Core'
    
    tapLocalization.subspec 'Core' do |core|
        
        core.dependency 'TapAdditionsKitV2'
        core.dependency 'TapDatabaseV2'
        core.dependency 'TapLocalizationV2'
        core.dependency 'TapLoggerV2'
        core.dependency 'TapSwiftFixesV2'
        
        core.source_files = 'TapLocalization/Source/Core/*.swift'
        
    end
    
    tapLocalization.subspec 'Notifications' do |notifications|
    
        notifications.source_files = 'TapLocalization/Source/Notifications/*.swift'
    
    end
end

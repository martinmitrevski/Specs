Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletUIMocks"
    s.version          = "0.0.2"
    s.summary          = "A framework containing predefined mocked components of the tpmw UI framework."
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :tag => '0.0.2'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '4.0'
    s.source_files = '**/ToPayMobileWalletUIMocks/**/*.{swift,h,m}'
    s.dependency 'ToPayMobileWalletMocks'
    s.dependency 'ToPayMobileWalletUI'
    s.dependency 'ToPayMobileWalletBranding'
    s.dependency 'GirdersSwift'

end


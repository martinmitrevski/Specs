#
# Be sure to run `pod spec lint pearlchainModule.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|
  s.name     = 'pearlchainModule'
  s.version  = '1.0.3'
  s.license = { :type => 'commercial', :text => %{
                The copyright to the computer program(s) herein is the property of Netcetera AG, Switzerland.
                The program(s) may be used and/or copied only with the written permission of Netcetera AG or
                in accordance with the terms and conditions stipulated in the agreement/contract under which
                the program(s) have been supplied.
              } }
  s.summary  = 'Pearlchain module for Wemlin.'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'

  # Specify the location from where the source should be retreived.
  s.source   = { :svn => 'https://wemlin-extranet.extranet.netcetera.biz/nca-310-6/svn/modules/pearlchain/ios/tags/1.0.3'}
  s.description = 'Podfile for pearchain module from Wemlin.'

  # If this Pod runs only on iOS or OS X, then specify that with one of
  # these, or none if it runs on both platforms.
  s.platform = :ios, '7.1'

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  # Alternatively, you can use the FileList class for even more control
  # over the selected files.
  # (See http://rake.rubyforge.org/classes/Rake/FileList.html.)
  #
  s.source_files ='src/core/main/**/*.{h,m}'
  s.exclude_files = 'src/common/resources/Info.plist'

  # A list of resources included with the Pod. These are copied into the
  # target bundle with a build phase script.
  s.resources = 'src/common/**/*.xib', 'src/common/**/*.png', 'src/common/**/*.html', 'src/common/**/*.strings', 'src/common/**/*.xml'

  s.prefix_header_file = "src/core/main/objc/pearlchainModule-Prefix.pch"

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  s.public_header_files = 'src/core/**/*.h'
  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # If this Pod uses ARC, specify it like so.
  #
  s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # Adds the smartscan framework in the Pod target
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  # Finally, specify any Pods that this Pod depends on.
  #
  s.dependency 'GirdersiOS/All', '~> 1.1.20'
end

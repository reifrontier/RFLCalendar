Pod::Spec.new do |s|
  s.name          =  "RFLCalendar"
  s.summary       =  "Folked with CKCalendar"
  s.version       =  "0.0.3"
  s.homepage      =  "https://github.com/ideaismobile/IDMPhotoBrowser"
  s.license       =  { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author        =  { "Ideais Mobile" => "mobile@ideais.com.br" }
  s.source        =  { :git => "https://github.com/shhommatsu/RFLCalendar.git", :tag => "0.0.3" }
  s.platform      =  :ios, '7.0'
  s.source_files  =  'Classes/*.{h,m}'
  s.resources     =  'Classes/RFLCalendar.bundle'
  s.framework     =  'QuartzCore', 'CoreGraphics'
  s.requires_arc  =  true
  end

Pod::Spec.new do |s|
  s.name          =  "RFLCalendar"
  s.summary       =  "Folked with CKCalendar"
  s.version       =  "0.0.6"
  s.homepage      =  "https://github.com/jaykz52/CKCalendar"
  s.license       =  { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author        =  { "jaykz52" => "http://www.cozykozy.com" }
  s.source        =  { :git => "https://github.com/shhommatsu/RFLCalendar.git", :tag => "0.0.6" }
  s.platform      =  :ios, '7.0'
  s.source_files  =  'Classes/*.{h,m}'
  s.resources     =  'Classes/RFLCalendar.bundle'
  s.framework     =  'QuartzCore', 'CoreGraphics'
  s.requires_arc  =  true
  end

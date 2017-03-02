
Pod::Spec.new do |s|

  s.name         = "CDNetworkHelper"
  s.version      = "1.0.5"
  s.summary      = "AFNetworking 3.x 与YYCache封装,一句代码搞定数据请求与缓存,告别FMDB!控制台直接打印json中文字符,调试更方便"

  s.homepage     = "https://github.com/1617176084/CDNetworkHelper.git"
 
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "1617176084" => "1617176084@qq.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/1617176084/CDNetworkHelper.git", :tag => s.version.to_s }

  s.source_files = "CDNetworkHelper/CDNetworkCache.{h,m}","CDNetworkHelper/CDNetworkHelper.{h,m}"
  
  s.dependency 'AFNetworking'

  s.dependency 'YYCache'

  s.requires_arc = true

end

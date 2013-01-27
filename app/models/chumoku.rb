require 'open-uri'
class Chumoku < ActiveRecord::Base
  def self.find
    url = "http://matome.naver.jp/topic/1LxqM"
    datas = open(url).read.scan(%r{<h3 class="mdMTMTtlList02Ttl">.+</h3>})
    chumokus = Hash::new  
    datas.each{|data|
      chumokus[data.scan(%r{a\shref=\"(.+)"\s})[0][0]] = data.scan(%r{data-na=\"NL:title\">(.+)</a>})[0][0]
    }
    return chumokus
  end
end

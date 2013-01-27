require 'open-uri'

class Matome < ActiveRecord::Base
  def self.find
    odais = [
              "2131960244357489001",
              "2133187527849800801",
              "2135350364969742801",
              "2134983281942631801",
              "2133873338011786701"
            ]
    matomes = Hash::new        
    odais.each{|odai|
      matomes[odai] = getMatome(odai)
    }
    return matomes
  end
  
  private
  def self.getMatome(odai)
    url = "http://matome.naver.jp/odai/" + odai
    return open(url).read.scan(%r{<img src=".+".*?class="MTMItemThumb".*?/>})
  end
end

#coding:utf-8
require 'spec_helper'

describe Chumoku do
  describe "getChumokus" do
    it "複数の注目まとめを取得できること" do
      chumokus = Chumoku.find
      chumokus.instance_of?(Hash).should be_true
      chumokus.size.should > 0
    end
  end
end

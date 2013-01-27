#coding:utf-8
require 'spec_helper'

describe Matome do
  describe "getMatomes" do
    it "複数のまとめを取得できること" do
      matomes = Matome.find
      matomes.instance_of?(Hash).should be_true
      matomes.size.should > 0
    end
  end
end

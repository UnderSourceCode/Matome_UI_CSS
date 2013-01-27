#coding:utf-8
require 'spec_helper'

describe "Matomes" do
  describe "GET /matomes" do
    it "ルートページを表示すること" do
      get root_path
      response.status.should be(200)
    end
  end
end

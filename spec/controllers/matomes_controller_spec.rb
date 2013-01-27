#coding:utf-8
require 'spec_helper'

describe MatomesController do

  describe "index" do
    before(:each) do
      get :index
    end
    
    it "リクエストは成功すること" do
      response.should be_success
    end
    
    it "まとめを取得すること" do
      assigns[:matomes].count.should > 0
    end
    
    it "注目まとめを取得すること" do
      assigns[:chumokus].count.should > 0
    end
    
    it "正しいページをロードしていること" do
      response.should render_template("matomes/index")
    end
  end
end

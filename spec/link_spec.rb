# encoding: utf-8
require File.dirname(__FILE__) + '/spec_helper'

describe "Link" do

  before :each do
    browser.goto(WatirSpec.files + "/non_control_elements.html")
  end

  describe "absolute_url" do
    it "returns the absolute URL for a link with a relative href attribute" do
      browser.link(:index, 2).absolute_url.should include("#{WatirSpec.files}/non_control_elements.html".gsub("file://", ''))
    end
  end
  
end
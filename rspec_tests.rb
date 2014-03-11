require 'rspec'
require_relative 'oven'

describe Oven do 
  let(:oven) { Oven.new({temp: 4, on: false, full: true, bake_time: 10}) }

  context "before turn_on is called"
    it "should be off" do
      oven.on.should eq false
    end

  context "current temp"
    it "should return 4 for temp" do
      oven.temp.should eq 4
    end

  context "else"
    it "should return 10 for bake_time" do
      oven.bake_time.should eq 10
    end

  context "when oven is full"
    it "Should return true when full" do
      oven.full.should eq true
    end

  context "when on is toggeled"
    it "Should turn on" do
      oven.turn_on
      oven.on.should eq true
    end

  context "baking"
   it "should increment bake_time when bake is called" do
    oven.bake
    oven.bake_time.should eq 11
  end

end
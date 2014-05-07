require 'spec_helper'
require "#{Rails.root}/lib/mundialito/points/point.rb"

# describe "ModulePoints" do
#   let(:points){
#     class MyModuleWrapper
#       include Point
#     end
#     MyModuleWrapper.new
#   }
#   it "should return 1" do
#     expect(points.calculate).to eq(1)
# 	end
# end


describe "ModulePoints" do

  # let(:dummy_class) { Point.new { include Points } }
  let(:points){
    class MyModuleWrapper
      include Point
    end
    MyModuleWrapper.new
  }
  it "#calculate" do
    points.calculate.should == 1
  end

end
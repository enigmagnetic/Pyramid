gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative '../lib/pyramid'
# be able to accept user input
describe "Pyramid test" do
  describe "Accept an integer as an argument" do
    it "Create a new instance of pyramid Class" do
      pyramid = Pyramid.new(4)
      pyramid.must_be_instance_of Pyramid
    end

    it "An integer input returns true" do
      pyramid = Pyramid.new(4)
      pyramid.valid?.must_equal true
    end

    it "A non-integer input returns false" do
      pyramid = Pyramid.new("little")
      pyramid.valid?.must_equal false
    end
  end

  describe "Make an octothorpe pyramid"
    it "Make pyramid base equal to input" do
      pyramid = Pyramid.new(4)
      pyramid.baseline.length.must_equal 4
    end
end
# creates an octhorpe pyramid

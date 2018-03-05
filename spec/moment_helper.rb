require 'ruby_moment'

RSpec.describe RubyMoment do
  context "initializing 1" do
    it "creates the date" do
      time = RubyMoment.new(2014, 8, 3)
      expect(time.year).to eq(2014)
      expect(time.month).to eq("August")
      expect(time.day).to eq(3)
    end
  end

  context "initializing 2" do
    it "puts complete date" do
      time = RubyMoment.new(2018, 3, 5)
      expect(time.complete_date).to eq("Monday, March 5, 2018")
    end
  end
end
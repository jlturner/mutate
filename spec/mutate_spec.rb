require 'rspec'
require_relative '../lib/mutate'

describe Object do
  describe "#mutate" do
    context "when not given a block" do
      it "should throw a LocalJumpError" do
        expect { 1.mutate }.to raise_error(LocalJumpError)
      end
    end
    context "when given a block" do
      it "should pass itself to the block and return the value of the block" do
        expect(1.mutate {|v| v + 5}).to eq(6)
      end
    end
  end
  describe "#keep" do
    context "when not given a block" do
      it "should throw a LocalJumpError" do
        expect { 1.keep }.to raise_error(LocalJumpError)
      end
    end
    context "when given a block" do
      it "should pass itself to the block and return the value of the block" do
        expect(1.keep {|v| v == 1}).to eq(1)
        expect(1.keep {|v| v == 2}).to eq(nil)
      end
    end
  end
  describe "#toss" do
    context "when not given a block" do
      it "should throw a LocalJumpError" do
        expect { 1.toss }.to raise_error(LocalJumpError)
      end
    end
    context "when given a block" do
      it "should pass itself to the block and return the value of the block" do
        expect(1.toss {|v| v == 1}).to eq(nil)
        expect(1.toss {|v| v == 2}).to eq(1)
      end
    end
  end
  describe "#impart" do
    context "when not given a block" do
      it "should throw a LocalJumpError" do
        expect { 1.impart("A") }.to raise_error(LocalJumpError)
      end
    end
    context "when given a block" do
      it "should pass itself and its argument to the block and return the value of the block" do
        expect(1.impart("A") {|obj,v| "#{obj}#{v}"}).to eq("A1")
      end
    end
  end
end

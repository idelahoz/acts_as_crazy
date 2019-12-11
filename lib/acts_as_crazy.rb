require "acts_as_crazy/version"
require "acts_as_crazy/crazy"


module ActsAsCrazy
  class << self
    attr_accessor :configuration
  end

  class Error < StandardError; end
  class CrazyError < StandardError; end
end

Object.class_eval do
  def self.acts_as_crazy
    include ActsAsCrazy::Crazy
  end
end

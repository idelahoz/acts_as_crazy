require "acts_as_crazy/version"
require "acts_as_crazy/crazy"
require "acts_as_crazy/configuration"

module ActsAsCrazy
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end

  class Error < StandardError; end
  class CrazyError < StandardError; end
  class WrongCrazinessError < StandardError; end
end

Object.class_eval do
  def self.acts_as_crazy
    include ActsAsCrazy::Crazy
  end
end

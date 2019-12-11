module ActsAsCrazy
  class Configuration
    attr_reader :craziness_level

    def initialize
      @craziness_level = 50
    end

    def craziness_level=(level)
      raise WrongCrazinessError.new("craziness must be between 0 and 100") unless good_craziness_level?(level)
      @craziness_level = level.to_i
    end

    private

    def good_craziness_level?(level)
      level >= 0 && level <= 100
    end
  end
end
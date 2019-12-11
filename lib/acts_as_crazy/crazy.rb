require 'faker'

module ActsAsCrazy
  module Crazy

    class << self
      def included(klass)
        class << klass
          alias_method :__new, :new
          def new(*args)
            e = __new(*args)

            method_names = e.methods - Object.new.methods
            method_names.each do |method_name|
              e.define_singleton_method :woof do |*args, &block|
                do_something_crazy
                super(*args, &block)
              end
            end

            e
          end
        end
      end
    end

    private

    def do_something_crazy
      raise ActsAsCrazy::CrazyError.new("Sorry, I'm crazy. Did you know that #{Faker::ChuckNorris.fact}") if am_i_crazy? 
    end

    def am_i_crazy?
      (rand*100) < 50
    end
  end
end

require 'securerandom'
require 'ruboty/roll/result'

module Ruboty
  module Roll
    class DiceSet
      attr_reader :count, :max

      def initialize(count:, max:)
        @count = count
        @max   = max
      end

      def roll
        # SecureRandom.random_number returns a value between 0 and argument - 1
        numbers = count.times.map{  SecureRandom.random_number(max) + 1 }
        Ruboty::Roll::Result.new(numbers)
      end
    end
  end
end

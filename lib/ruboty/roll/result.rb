module Ruboty
  module Roll
    class Result
      attr_reader :numbers

      def initialize(numbers)
        @numbers = numbers
      end

      def to_s
        "[#{numbers.map(&:to_s).join(', ')}] => #{sum.to_s}"
      end

      private

      def sum
        numbers.reduce(:+)
      end
    end
  end
end

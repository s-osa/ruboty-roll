require 'ruboty/roll/dice_set'

module Ruboty
  module Roll
    module Actions
      class Roll < Ruboty::Actions::Base
        def call
          dice_set = Ruboty::Roll::DiceSet.new(count: count, max: max)
          message.reply(dice_set.roll.to_s)
        end

        private

        def count
          message[:count].to_i
        end

        def max
          message[:max].to_i
        end
      end
    end
  end
end

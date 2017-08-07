require 'ruboty/roll/actions/roll'

module Ruboty
  module Handlers
    class Roll < Base
      on /roll +(?<count>\d+)d(?<max>\d+)/i, name: 'roll', description: 'Roll dice.'

      def roll(message)
        Ruboty::Roll::Actions::Roll.new(message).call
      end
    end
  end
end

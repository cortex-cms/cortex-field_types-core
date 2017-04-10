module Plugins
  module Core
    class TooltipCell < Plugins::Core::Cell
      def show
        render
      end

      private

      def tooltip_id
        @options[:id].parameterize('_')
      end
    end
  end
end

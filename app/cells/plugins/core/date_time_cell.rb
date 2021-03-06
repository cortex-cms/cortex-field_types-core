module Plugins
  module Core
    class DateTimeCell < Plugins::Core::Cell
      def datepicker
        render
      end

      private

      def value
        data&.[]('timestamp') || @options[:default_value]
      end

      def render_label
        @options[:form].label :data, field.name, class: 'mdl-textfield__label'
      end

      def render_datepicker
        @options[:form].text_field 'data[timestamp]', value: value, placeholder: @options[:placeholder], class: 'datepicker mdl-textfield__input', required: required?
      end
    end
  end
end

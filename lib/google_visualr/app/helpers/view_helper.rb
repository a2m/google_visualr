module GoogleVisualr

  module Rails

    module ViewHelper

      extend ActiveSupport::Concern

      included do
        helper_method "render_chart"
        helper_method "render_chart_raw"
      end

      def render_chart(chart, dom)
        chart.to_js(dom).html_safe
      end
      
      def render_chart_raw(chart, dom)
        chart.to_js_raw(dom)
      end
    end

  end

end

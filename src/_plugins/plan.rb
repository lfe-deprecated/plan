=begin
  Jekyll tag to include Markdown text from plans directory preprocessing with Liquid.
  Usage:
    {% plan <filename> %}
  Dependency:
    - kramdown
=end


module LFE
  class PlanTag < Jekyll::Tags::IncludeRelativeTag

      require "kramdown"
      def render(context)
        tmpl = super
        html = Kramdown::Document.new(tmpl).to_html
      end

  end
end
Liquid::Template.register_tag('plan', LFE::PlanTag)

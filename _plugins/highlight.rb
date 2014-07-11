module Jekyll
  module Tags

    class WrapHighlightBlock < Jekyll::Tags::HighlightBlock
      def initialize(tag_name, markup, tokens)
        super
      end
      def render(context)
        '<figure class="code"><figcaption></figcaption>' + super + '</figure>'
      end
    end

  end
end

Liquid::Template.register_tag('highlight', Jekyll::Tags::WrapHighlightBlock)

# https://github.com/jessecrouch/jekyll-rss-absolute-urls
module Jekyll
  module RSSURLFilter
    def relative_urls_to_absolute(input,url)
      #url = "http://blog.jbfavre.org"
      input.gsub('src="/', 'src="' + url + '/').gsub('href="/', 'href="' + url + '/')
    end
  end
end

Liquid::Template.register_filter(Jekyll::RSSURLFilter)

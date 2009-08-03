require 'stylesheet_by_browser'

module StylesheetByBrowserHelper
  include StylesheetByBrowser

  def stylesheet_by_browser(options = {})
    unless user_agent_name.nil?
      stylesheet_link_tag(user_agent_name.to_s, options)
    end
  end
end
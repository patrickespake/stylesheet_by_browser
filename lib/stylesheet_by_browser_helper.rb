# Helper insert the stylesheet according to the browser.
#
# Can be used in the layer view.
#
# Author:: Patrick Espake (mailto:patrickespake@gmail.com)
# Copyright:: Copyright (c) 2009
# License:: MIT

# This module insert the stylesheet according to the browser.
# Provides one method:
#   stylesheet_by_browser
require 'stylesheet_by_browser'
module StylesheetByBrowserHelper
  include StylesheetByBrowser

  # Helper insert the stylesheet according to the browser.
  #
  # Example of use:
  #   <%= stylesheet_by_browser %>
  #   <%= stylesheet_by_browser :media => "all" %>
  #   <%= stylesheet_by_browser :media => "print" %>
  #   <%= stylesheet_by_browser :media => "screen" %>
  def stylesheet_by_browser(options = {})
    unless user_agent_name.nil?
      stylesheet_link_tag(user_agent_name.to_s, options)
    end
  end
end
# Detects user's browser.
#
# Author:: Patrick Espake (mailto:patrickespake@gmail.com)
# Copyright:: Copyright (c) 2009
# License:: MIT

# This module detects user's browser.
#
# Provides one method:
#   user_agent_name
module StylesheetByBrowser
  private

  # Name of the user's browser
  #
  # Example of use:
  #   user_agent_name
  def user_agent_name
    ua = request.user_agent.downcase

    if ua =~ /firefox\//
      :firefox
    elsif ua =~ /opera\//
      :opera
    elsif ua =~ /chrome\//
      :chrome
    elsif ua =~ /safari\//
      :safari
    elsif ua =~ /msie/
      :ie
    else
      nil
    end
  end
end
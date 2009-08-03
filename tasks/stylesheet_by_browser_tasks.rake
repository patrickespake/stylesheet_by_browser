namespace :stylesheet_by_browser do
  dest = "#{RAILS_ROOT}/public/stylesheets"
  source = "#{RAILS_ROOT}/vendor/plugins/stylesheet_by_browser/public/stylesheets"
  
  desc "Install the stylesheet_by_browser stylesheets into the public/stylesheets directory of this application."
  task :install do
    require 'fileutils'

    begin
      puts "Installing stylesheet_by_broser to #{dest}..."
      FileUtils.cp_r "#{source}/.", dest
      puts "Successfully installed stylesheet_by_browser."
    rescue
      puts "ERROR: Problem installing stylesheet_by_browser. Please manually copy."
      puts "#{source}"
      puts "to"
      puts "#{dest}"
    end
  end

  desc "Uninstall the stylesheet_by_browser stylesheets into the public/stylesheets directory of this application."
  task :uninstall do
    require 'fileutils'

    begin
      puts "Uninstalling stylesheet_by_browser to #{dest}..."
      
      Dir.foreach(source) do |entry|
        if entry != "." and entry != ".."
          file = "#{dest}/#{entry}"
          
          if File.exists?(file)
            begin
              FileUtils.rm "#{dest}/#{entry}"
              puts "#{file} file removed..."
            rescue
              puts "ERROR: Problem removing file: #{file}. Please manually remove."
            end
          end
        end
      end

      puts "Successfully uninstalled stylesheet_by_browser."
    rescue
      puts "ERROR: Problem uninstalling stylesheet_by_browser. Please manually remove stylesheets files into the public/stylesheets directory of this application."
    end
  end
end
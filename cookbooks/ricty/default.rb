font_installed_path = "/usr/local/opt/ricty/share/fonts"
target_font_path = "#{font_installed_path}/Ricty-Regular.ttf"

execute "brew tap sanemat/font && brew install ricty" do
  not_if "test -e #{target_font_path}"
end

execute "cp -f #{font_installed_path}/Ritcy*.ttf #{ENV['HOME']}/Library/Fonts && fc-cache -vf" do
  not_if "test -e #{target_font_path}"
end

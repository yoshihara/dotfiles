config_dir = File.join(File.expand_path('../../..', __FILE__), "config", "aquaskk")

file File.join(ENV["HOME"], "Library", "Preferences", "jp.sourceforge.inputmethod.aquaskk.plist") do
  content File.read(File.join(config_dir, "jp.sourceforge.inputmethod.aquaskk.plist"))
end

file File.join(ENV["HOME"], "Library", "Application Support", "AquaSKK", "kana-rule.rule") do
  content File.read(File.join(config_dir, "kana-rule.rule"))
end

file File.join(ENV["HOME"], "Library", "Application Support", "AquaSKK", "DictionarySet.plist") do
  content File.read(File.join(config_dir, "DictionarySet.plist"))
end

puts "NOTICE: Download aquaskk from https://github.com/codefirst/aquaskk/releases and its dictionaries from https://skk-dev.github.io/dict/"

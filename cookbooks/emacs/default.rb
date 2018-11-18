dotfile_path = File.join(ENV["HOME"], "work/src/github.com/yoshihara/emacs.d")
dotfile_link_path = File.join(ENV["HOME"], ".emacs.d")

git dotfile_path do
  repository "https://github.com/yoshihara/emacs.d.git"
end

link dotfile_link_path do
  to dotfile_path
  not_if "test -e #{dotfile_link_path}"
end

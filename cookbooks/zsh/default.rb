package "zsh"

dotfile_path = File.join(ENV["HOME"], "work/src/github.com/yoshihara/zsh.d")
dotfile_link_path = File.join(ENV["HOME"], ".zsh.d")
rc_path = File.join(ENV["HOME"], ".zshrc")
env_path = File.join(ENV["HOME"], ".zshenv")

git dotfile_path do
  repository "https://github.com/yoshihara/zsh.d.git"
end

link dotfile_link_path do
  to dotfile_path
  not_if "test -e #{dotfile_link_path}"
end

execute "echo 'source ~/.zsh.d/zshrc' > #{rc_path}" do
  not_if "test -e #{rc_path}"
end

execute "echo 'source ~/.zsh.d/zshenv' > #{env_path}" do
  not_if "test -e #{env_path}"
end

if node[:platform] == "darwin"
  zsh_path = "/usr/local/bin/zsh"

  execute "echo #{zsh_path} >> /etc/shells" do
    not_if "grep #{zsh_path} /etc/shells"
    user "root"
  end

  if ENV["SHELL"] != zsh_path
    execute "chsh -s #{zsh_path} #{node[:user]}" do
      user "root"
    end
  end
end

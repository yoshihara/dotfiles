packages = %w(
autossh
coreutils
dep
gcc
highlight
hugo
jq
libyaml
mysql
openssh
openssl
p7zip
pcre
postgresql
readline
reattach-to-user-namespace
ssh-copy-id
tree
wget
yarn
)

packages.each do |package_name|
  package package_name
end

darwin_only_packages = %w(
rbenv
node-build
nodenv
ghq
peco
)

if node[:platform] == "darwin"
  darwin_only_packages.each do |package_name|
    package package_name
  end
else
  raise NotImplementedError
end

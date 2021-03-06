REPO = 'git@github.com:djsd123/manifests.git'

SSH = 'ssh -At -i /Users/mikaela/.ssh/LR-infrastructure -l centos'


desc "Run Puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end

desc "Bootstrap Puppet on ENV['CLIENT'] with hostname ENV['HOSTNAME']"
task :bootstrap do
  client = ENV['CLIENT']
  hostname = ENV['HOSTNAME'] || client
  commands = <<BOOTSTRAP
    sudo hostname #{hostname} && \
    echo #{hostname} | sudo tee /etc/hostname && \
    sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && \
    sudo yum update -y && sudo yum install git Puppet wget -y && \
    git clone #{REPO} puppet && \
    sudo puppet apply --modulepath=/home/centos/puppet/modules /home/centos/puppet/manifests/site.pp
BOOTSTRAP
  sh "#{SSH} #{client} '#{commands}'"
end

desc "Add syntax check hook to git repo"
task :add_check do
  here = File.dirname(__FILE__)
  sh "ln -s #{here}/hooks/check_syntax.sh #{here}/.git/hooks/pre-commit"
  puts "Puppet syntax check hook added"
end


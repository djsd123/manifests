SSH = 'ssh -At -i /home/centos/.ssh/LR-Infrastructure -l centos'


desc "Run Puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end

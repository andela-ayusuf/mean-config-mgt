require 'open3'
require_relative 'vars'

# Scenario: Download Keys and Repos sources and Update cache
When(/^I download Keys and Repos sources and Update cache$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'setup'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

Then(/^it should be successful$/) do
  expect(@status.success?).to eq(true)
end

# Scenario: Install MongoDB
When(/^I install MongoDB$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'mongodb'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

And(/^MongoDB shuld be running$/) do
  cmd = "ssh -i '#{PATHTOKEY}' #{PUBDNS} 'sudo service mongod status'"
  output, error, status = Open3.capture3 "#{cmd}"
  expect(status.success?).to eq(true)
  expect(output).to match("mongod start/running")
end

# Scenario: Install Nodejs
When(/^I install Nodejs$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'nodejs'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Install Packages
When(/^I install Packages$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'gulp_bower'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Clone project repository
When(/^I clone project repository$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'git_clone'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

# Scenario: Setup New Relic
When(/^I setup New Relic$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'relic_setup'"
  output, error, @status = Open3.capture3 "#{cmd}"
end

And(/^the newrelic.js file should exists$/) do
  cmd = "ssh -i '#{PATHTOKEY}' #{PUBDNS} 'cd /home/#{APP_ROOT_DIR} && sudo ls | grep newrelic.js'"
  output, error, status = Open3.capture3 "#{cmd}"
  expect(status.success?).to eq(true)
  expect(output).to match("newrelic.js")
end

# Scenario: Install modules in package.json file
When(/^I install modules in package.json file$/) do
  cmd = "ansible-playbook -i inventory.ini --private-key=#{PATHTOKEY} playbook.meanserver.yml --tags 'node_modules'"
  output, error, @status = Open3.capture3 "#{cmd}"
end




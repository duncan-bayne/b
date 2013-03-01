#!/usr/bin/env ruby

require 'json'
require 'restclient'

command = ARGV.join(' ')
bamboo_uri = File.read(File.join(ENV['HOME'], '.brc')).strip

results = RestClient.get(bamboo_uri)
result_data = JSON.parse(results)['results']['result']

failed_results = result_data.select { |result| result['state'] != 'Successful' }
failed_names = failed_results.collect { |result| result['plan']['name'] }

if !failed_results.empty?
  $stderr.puts <<-EOM
The following Bamboo plans are failing!

#{failed_names.join("\n")}

Press C-c to abort, or ENTER to run command '#{command}' anyway.
EOM
  $stdin.gets
end

system command

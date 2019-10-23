# Get ip informations
require 'maxmind/db'

reader = MaxMind::DB.new("#{__dir__}/db/GeoLite2-City.mmdb", mode: MaxMind::DB::MODE_MEMORY)

record = reader.get('177.79.246.242')

if record.nil?
  puts 'Record not found in the database'
else
  puts record['continent']['names']['pt-BR']
  puts record['city']['names']['pt-BR']
  puts record['country']['iso_code']
  puts record['country']['names']['pt-BR']
end

reader.close
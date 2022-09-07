require 'csv'
MATCHES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)
DELIVERIES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/deliveries.csv'),headers:true)

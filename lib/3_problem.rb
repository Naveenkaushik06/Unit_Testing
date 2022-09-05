# Extra runs conceded per team in the year 2016
require 'csv'
MATCHES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)
DELIVERIES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/deliveries.csv'), headers: true)

class C
    def extraRunsByTeam(matches, deliveries)
      extrarun = {}
      for matchdata in matches
        id = matchdata['id']
    
        next unless matchdata['season'] === '2016'
    
        for  deliverdata in deliveries
    
          if deliverdata['match_id'] === id
    
            if extrarun[deliverdata['bowling_team']]
              extrarun[deliverdata['bowling_team']] += deliverdata['extra_runs'].to_i
            else
              extrarun[deliverdata['bowling_team']] = deliverdata['extra_runs'].to_i
            end
          end
        end
     end
      extrarun
    end
end
    
output = {}
output = C.new.extraRunsByTeam(MATCHES, DELIVERIES)
puts output
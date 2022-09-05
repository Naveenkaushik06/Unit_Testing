# Find a player who has won the highest number of Player of the Match awards for each season
require 'csv'
MATCHES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv  '), headers: true)

class E
     def winsPerTeam(matches)
       obj = {}
       for year in matches
         if obj[year['season']]
           if obj[year['season']][year['player_of_match']]
             obj[year['season']][year['player_of_match']] += 1
           else
             obj[year['season']][year['player_of_match']] = 1
           end
         else
           obj[year['season']] = {}
           obj[year['season']][year['player_of_match']] = 1
         end
      end
       return obj
       File.open('../output/6_highest_player_of_match.json', 'wb') { |file| file.puts JSON.pretty_generate(obj) }
     end
     
     output = {}
     output = winsPerTeam(matches)
     
     store = {}
     for year in output do
       store [year[0]] = year[1].sort_by(&:last)[-1]
     end
end
store = E.new.winsPerTeam(MATCHES)
# puts store

# File.open('../public/output/problem-6.json', 'wb') { |file| file.puts JSON.pretty_generate(store) }

# Number of matches won per team per year in IPL.
require 'csv'
MATCHES= CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)
class B
    def winsPerTeam(matches)
      obj = {}
      for year in matches
        if obj[year['season']]
          if obj[year['season']][year['winner']]
            obj[year['season']][year['winner']] += 1
          else
            obj[year['season']][year['winner']] = 1
          end
        else
      obj[year['season']] = {}
      obj[year['season']][year['winner']] = 1
        end
     end
     obj
    end
end
output = {}
output = B.new.winsPerTeam(MATCHES)
puts(output)
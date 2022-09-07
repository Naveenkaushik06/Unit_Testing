# Number of matches played per year for all the years in IPL.
require 'csv'
MATCHES= CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)

class QUESTION1
  def matchesPerYear(matches)
  result = {}
  
    for match in matches
        if result[match['season']]
           result[match['season']] += 1
        else
           result[match['season']] = 1
        end
    end
    result
  end
end
output = QUESTION1.new.matchesPerYear(MATCHES)
puts(output)
#   File.open('../public/output/problem-1.json', 'wb') { |file| file.puts JSON.pretty_generate(output) }

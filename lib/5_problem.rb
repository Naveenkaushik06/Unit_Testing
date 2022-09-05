# Find the number of times each team won the toss and also won the match
require 'csv'
MATCHES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)

class D
    def winTossWinMatch(matches)
      result = {}
      for m in matches
        if m['toss_winner'] === m['winner']
          if result.has_key?(m['winner'])
            result[m['winner']] += 1
          else
            result[m['winner']] = 1
          end
        end
       end
      return result
      File.open('../output/5_win_toss_and_win_match.json', 'wb') { |file| file.puts JSON.pretty_generate(result) }
    end
end
    
output = {}
output = D.new.winTossWinMatch(MATCHES)
puts output
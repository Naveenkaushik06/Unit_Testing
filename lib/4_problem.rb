# Top 10 economical bowlers in the year 2015
require 'csv'
MATCHES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)
DELIVERIES =CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/deliveries.csv'),headers:true)

class QUESTION4
def economicalBowlers(matches, deliveries)
    bowlers = {}
    for  matchdata in matches do
       id = matchdata['id']
            if(matchdata['season'] === '2015') 
                for  deliverdata in deliveries do
                    if (deliverdata['match_id'] === id) 
                        # print "#{deliverdata['bowler']}, #{deliverdata['total_runs']} \n"

                        unless bowlers[deliverdata['bowler']]
                            bowlers[deliverdata['bowler']] = {
                                'totalRuns' => 0,
                                'totalBalls' => 0,
                                'economy' => 0
                            }
                        end


                            bowlers[deliverdata['bowler']]['totalBalls'] += 1
                            bowlers[deliverdata['bowler']]['totalRuns'] = bowlers[deliverdata['bowler']]['totalRuns'].to_i + deliverdata['total_runs'].to_i

                        
                    end
                end
            end      
     end
    #  puts bowlers
   
   topten = []
  for eachBowler in bowlers
        eco = eachBowler[1]['totalRuns'] / ( eachBowler[1]['totalBalls'] / 6.0 )
        eachBowler[1]['economy'] = eco
        topten.push(eachBowler[1]['economy'])  
  end

  topten = topten.sort
  myobject = {}
  for j in 0..9 
        for  bowler in bowlers
             if (bowler[1]['economy'] == topten[j])
                myobject[bowler[0]] = topten[j]
             end
       end
  end
  return myobject

end
end
output= {}
output = QUESTION4.new.economicalBowlers(MATCHES, DELIVERIES)
puts output

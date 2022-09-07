# Find the bowler with the best economy in super overs
require 'csv'
MATCHES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/matches.csv'), headers: true)
DELIVERIES = CSV.parse(File.read('/home/naveen/Desktop/Unit_Testing/src/data/deliveries.csv'),headers:true)

class QUESTION9
    def economicalBowlers(matches, deliveries)
        bowlers = {}
        for  matchdata in matches 
           id = matchdata['id']
            
                    for  deliverdata in deliveries 
                        if (deliverdata['is_super_over']==='1') 
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
        #  puts bowlers
       
       topten = []
      for eachBowler in bowlers
            eco = eachBowler[1]['totalRuns'] / ( eachBowler[1]['totalBalls'] / 6.0 )
            eachBowler[1]['economy'] = eco
            topten.push(eachBowler[1]['economy'])  
      end
    
      topten = topten.sort
      myobject = {}
      for j in 0..3 
            for  bowler in bowlers
                 if (bowler[1]['economy'] == topten[j])
                    myobject[bowler[0]] = topten[j]
                 end
            end
      end
       myobject
    
    end
end
output = {}
output = QUESTION9.new.economicalBowlers(MATCHES, DELIVERIES)
# puts output



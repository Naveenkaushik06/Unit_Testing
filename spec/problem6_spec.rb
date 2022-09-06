require '6_problem.rb'

describe 'problem6' do 
    it 'return correct highest number of player of match' do
        e = E.new
        result = e.winsPerTeam(MATCHES)
        expected = {"2008" => {"R Vinay Kumar"=>1}, "2011" => {"Yuvraj Singh"=>1}, "2017" => {"Yuvraj Singh"=>1}}
        expect(result).to eq(expected)
    end
end
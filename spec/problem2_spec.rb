require '2_problem.rb'

describe 'problem2' do 
    it 'return correct matches won per team' do
        b = B.new
        result = b.winsPerTeam(MATCHES)
        expected = {"2008"=>{"Royal Challengers Bangalore"=>1}, "2011"=>{"Delhi Daredevils"=>1}, "2017"=>{"Sunrisers Hyderabad"=>1}}
        expect(result).to eq(expected)
    end
end
require '2_problem.rb'

describe 'problem2' do 
    it 'return correct matches won per team' do
        b = B.new
        result = b.winsPerTeam(MATCHES)
        expected = {"2017" => {"Mumbai Indians"=>1, "Rising Pune Supergiant"=>1, "Sunrisers Hyderabad"=>1}}
        expect(result).to eq(expected)
    end
end
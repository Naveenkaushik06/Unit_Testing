require '3_problem.rb'

describe 'problem3' do 
    it 'return correct extra run conceeded' do
        c = QUESTION3.new
        result = c.extraRunsByTeam(MATCHES,DELIVERIES)
        expected = {}
        expect(result).to eq(expected)
    end
end
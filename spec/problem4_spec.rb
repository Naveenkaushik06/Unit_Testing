require '4_problem.rb'

describe 'problem4' do 
    it 'return correct extra run conceeded' do
        p = QUESTION4.new
        result = p.economicalBowlers(MATCHES,DELIVERIES)
        expected = {}
        expect(result).to eq(expected)
    end
end
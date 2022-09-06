require '9_problem.rb'

describe 'problem9' do 
    it 'return correct highest number of player of match' do
        t = Z.new
        result = t.economicalBowlers(MATCHES, DELIVERIES)
        expected = {}
        expect(result).to eq(expected)
    end
end
require '5_problem.rb'

describe 'problem5' do 
    it 'return correct toss won and also match won' do
        d = QUESTION5.new
        result = d.winTossWinMatch(MATCHES)
        expected = {"Delhi Daredevils"=>1}
        expect(result).to eq(expected)
    end
end
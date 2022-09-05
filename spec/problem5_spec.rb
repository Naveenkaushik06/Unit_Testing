require '5_problem.rb'

describe 'problem5' do 
    it 'return correct toss won and also match won' do
        d = D.new
        result = d.winTossWinMatch(MATCHES)
        expected = {"Rising Pune Supergiant"=>1}
        expect(result).to eq(expected)
    end
end
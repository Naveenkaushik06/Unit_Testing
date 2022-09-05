require '1_problem.rb'

describe 'problem1' do 
    it 'return correct matches played per year' do
        a = A.new
        result = a.matchesPerYear(MATCHES)
        expected = {"2017"=>3}
        expect(result).to eq(expected)
    end
end

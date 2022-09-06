require '1_problem.rb'

describe 'problem1' do 
    it 'return correct matches played per year' do
        a = A.new
        result = a.matchesPerYear(MATCHES)
        expected = {"2008"=>1, "2011"=>1, "2017"=>1}
        expect(result).to eq(expected)
    end
end

require '6_problem.rb'

describe 'problem6' do 
    it 'return correct highest number of player of match' do
        e = E.new
        result = e.winsPerTeam(MATCHES)
        expected = {"Yuvraj Singh"=>1, "KH Pandya"=>1, "JD Unadkat"=>1}
        expect(result).to eq(expected)
    end
end
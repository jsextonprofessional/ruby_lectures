# TESTING GOES HERE
require_relative 'vendor'

RSpec.describe "Buy a soda" do
    before(:each) do
        @buyer = Buyer.new
    end
    context "have money" do
        it "buy the soda" do
            @buyer.money = 10
            # it becomes a test once keywords "expect" and "eq" are invoked
            expect(@buyer.buy_soda).to eq(true)
        end
    end
    context "have no money" do
        it "doesn't buy the soda" do
            @buyer.money = 0
            expect(@buyer.buy_soda).to eq(false)
        end
    end

    context 'changing wallet balance' do
        it 'tries to have negative money' do
            @buyer.money = 10
            expect{(@buyer.withdraw(15))}.to raise_error(MoneyError)
        end
        it 'changes balance legally' do
            @buyer.money = 10
            expect(@buyer.withdraw(5)).to be == 5
        end
    end
end
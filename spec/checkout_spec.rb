require 'support/factory_girl'

describe Checkout, :type => :model do

  before :each do
    @atv = build(:product)
  end

  describe "#total" do
    context "customer purchased apple tv once" do
      it "returns 109.50" do
        ck = Checkout.new
        ck.scan(@atv)

        expect(ck.total).to eq 109.50
      end
    end

    # context "customer purchased apple tv three times" do
    #   it "returns 1099.98" do
    #     ck = Checkout.new
    #     ck.scan(@atv)
    #     ck.scan(@atv)
    #     ck.scan(@atv)
    #
    #     expect(ck.total).to eq 219.00
    #   end
    # end
  end

end

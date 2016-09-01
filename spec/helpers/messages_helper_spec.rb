require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the MessagesHelper. For example:
#
# describe MessagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe MessagesHelper, type: :helper do

  let(:current_user) { 'bobby' }

  describe '.message_class' do
    it 'should mark message for current user' do
      expect(message_class('bobby')).to eq('message mine')
      expect(message_class('bob')).to eq('message')
    end
  end
  
end

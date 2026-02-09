class Transaction < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :wallet, optional: true

    def sender_handle
        User.find_by(evm_chain_address: sender_address)&.handle
    end

    def receiver_handle
        User.find_by(evm_chain_address: receiver_address)&.handle
    end
end

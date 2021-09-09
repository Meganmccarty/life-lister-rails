class ChangePublicProfileForUsers < ActiveRecord::Migration[6.1]
    def change
        change_column_default :users, :public_profile, false
    end
end

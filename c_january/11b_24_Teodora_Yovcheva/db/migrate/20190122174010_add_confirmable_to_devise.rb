class AddConfirmableToDevise < ActiveRecord::Migration
  # Note: You can't use change, as Model.update_all will fail in the down migration
  def up
    add_column :models, :confirmation_token, :string
    add_column :models, :confirmed_at, :datetime
    add_column :models, :confirmation_sent_at, :datetime
    # add_column :models, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :models, :confirmation_token, unique: true
    # model.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # models as confirmed, do the following
    Model.update_all confirmed_at: DateTime.now
    # All existing model accounts should be able to log in after this.
  end

  def down
    remove_columns :models, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :models, :unconfirmed_email # Only if using reconfirmable
  end
end

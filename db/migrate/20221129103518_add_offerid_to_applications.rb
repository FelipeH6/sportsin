class AddOfferidToApplications < ActiveRecord::Migration[7.0]
  def change
    add_reference :applications, :offer, foreign_key: true
  end
end

class CreateArtists < ActiveRecord::Migration[4.2]
    def up # define the code to execute when the migration is run
    end
  
    def down # define the code to execute when the migration is rolled back. Think of it like "do" and "undo."
        
    end

    def change # primary way of writing migrations.
        create_table :artists do |t| #columns
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
        end
    end
end 

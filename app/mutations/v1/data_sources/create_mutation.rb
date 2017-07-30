module V1
  module DataSources
    class CreateMutation < Mutations::Command

      required do
        string :name
        string :uid
        string :external_key        
      end

      optional do
        string :description
        integer :some_field
        integer :some_other_field
        float :transaction_value
        time :transaction_time
        string :some_string_field
        string :some_other_string_field
        array :items, class: String
        array :item_ids, class: Integer
        hash :meta do
          required do
            string :email
            string :domain
            string :url
            string :password
          end

          optional do
            string :mac
            string :slug
            string :username
          end
        end
      end

      def execute
        DataSource.create!(inputs)
      end
    end
  end
end

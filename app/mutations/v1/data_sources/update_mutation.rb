module V1
  module DataSources
    class UpdateMutation < Mutations::Command
      required do
        string :id 
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
          optional do
            string :email
            string :domain
            string :url
            string :password
            string :mac
            string :slug
            string :username
          end
        end
      end

      def execute
        data_source = DataSource.find(inputs[:id])
        inputs[:meta] = data_source.meta.merge(inputs[:meta]) if inputs[:meta]
        data_source.update!(inputs.slice!(:id))
        data_source
      end
    end
  end
end

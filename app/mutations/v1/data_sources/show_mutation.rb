module V1
  module DataSources
    class ShowMutation < Mutations::Command
      required do 
        string :id
      end

      def execute
        DataSource.find(inputs[:id])
      end
    end
  end
end

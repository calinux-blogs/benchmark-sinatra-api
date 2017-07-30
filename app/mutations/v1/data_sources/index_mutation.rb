module V1
  module DataSources
    class IndexMutation < Mutations::Command
      def execute
        DataSource.all
      end
    end
  end
end

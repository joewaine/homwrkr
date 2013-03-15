class AddAssignmentIdColumnToStudentsTable < ActiveRecord::Migration
def change
 add_column :students, :assignment_id, :integer
end
end

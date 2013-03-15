Student.delete_all
Assignment.delete_all

s1 = Student.create(:name => 'joe1')
s2 = Student.create(:name => 'joe2')
s3 = Student.create(:name => 'joe3')
s4 = Student.create(:name => 'joe4')
s5 = Student.create(:name => 'joe5')
s6 = Student.create(:name => 'joe6')
s7 = Student.create(:name => 'joe7')
s8 = Student.create(:name => 'joe8')
s9 = Student.create(:name => 'joe9')
s10 = Student.create(:name => 'eric1')
s11 = Student.create(:name => 'eric2')
s12 = Student.create(:name => 'eric3')
s13 = Student.create(:name => 'eric4')
s14 = Student.create(:name => 'eric5')
s15 = Student.create(:name => 'eric6')
s16 = Student.create(:name => 'eric7')
s17 = Student.create(:name => 'eric8')

a1 = Assignment.create(:name => 'ruby', :group_size => '3')

a1.students = [s1, s2, s3]










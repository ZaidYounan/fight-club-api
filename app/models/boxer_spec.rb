RSpec.describe Boxer, type: :model do
    # Association test
    it { should have_one_attached(:avatar) }
    it { should belong_to(:gym) }
    # Validation tests
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:gym_id) }
    it {
      should validate_length_of(:name)
        .is_at_least(1)
    }
    it {
      should validate_length_of(:last_name)
        .is_at_least(1)
    }
   end
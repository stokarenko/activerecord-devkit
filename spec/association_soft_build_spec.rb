describe 'association_soft_build' do
  before(:all) { RubyFeatures.apply 'activerecord_devkit/association_soft_build' }

  subject { User.create! }

  it 'should set user`s id after creation' do
    expect(subject.id).to be_kind_of(Integer)
  end

  it 'should has emplty associations set' do
    expect(subject.roles).to be_empty
  end

  it 'should build associations as usually' do
    role = subject.roles.build
    expect(role.user_id).to eq(subject.id)
    expect(role.user.object_id).to eq(subject.object_id)
    expect(subject.roles).to_not be_empty
  end

  it 'should build associations without affecting to parent object' do
    role = subject.roles.soft_build
    expect(role.user_id).to eq(subject.id)
    expect(role.user.object_id).to eq(subject.object_id)
    expect(subject.roles).to be_empty
  end
end

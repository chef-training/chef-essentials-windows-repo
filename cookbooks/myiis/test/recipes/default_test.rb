# # encoding: utf-8

# Inspec test for recipe myiis::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(80) do
  it { should be_listening }
end

describe command('Invoke-WebRequest http://localhost') do
  its(:stdout) { should match /Hello, world!/ }
end

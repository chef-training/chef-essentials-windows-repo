describe port(80) do
  it { should be_listening }
end

describe command('Invoke-WebRequest http://localhost') do
  its(:stdout) { should match /Hello, world!/ }
end

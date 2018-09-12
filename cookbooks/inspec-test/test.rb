describe file ('/tmp/cat1') do
	it {should be_file}
end
describe service ('apache2') do
	it {should be_installed}
	it {should be_enabled}
	it {should be_running}
end

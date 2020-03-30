require 'net/ssh'

Net::SSH.start('192.168.0.138', 'user', password: 'user') do |ssh|
    # capture all stderr and stdout output from a remote process
    output = ssh.exec!("hastname")
    puts output
    pp output
    pp output.exitstatus
end

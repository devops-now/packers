#!/bin/sh

mkdir /home/centos/.ssh
touch /home/centos/.ssh/authorized_keys
chmod 0750 /home/centos/.ssh
chmod 0600 /home/centos/.ssh/authorized_keys

# Allow centos user to execute all commands (administrative access)
cat <<-EOF >/etc/sudoers.d/centos
	centos	ALL=(ALL)	NOPASSWD: ALL
EOF

# Install SSH keys for centos user
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5eGPXIs1wvqJG955fIVYAtdGne0TI38vhctEr+o/svRZGqzENBTNTY5UMXCdMZCo8GW/SAkjTFbqP2/9Xyds4K55hfVN9K6lXVeQ53V9ByFkQPTootJ+uisgDBcE+6Z0ko9bCi/kLkie3qThYdZ4VJjREaqVw3ySfxai9kML8yuemNqY1v2QfXdO9uiKu+ZZVU0mi+BfVyIZfBSEK7PrO4maMHUUnOlWCC9xgOQuYdcZ0pTlOkc0euEm0Ha0dXAUoWrrTiNYSOJnTl63UO3tbO0JvBSb3QJEh9VG2JubctoLN1s+QQYy7duyIG5FALWENKo+dXChZGnELfkUmrvBVVGQY8SvJ1+KkpikB9KNOsYcrwFKLI8bC2f+6lCd0JtsHQmM3ATco+Tontla3qYbUJBascEhDKWQWDcvWYSVOjbZF1cPyDDtC/X4PIEUJPmzEEU41NpVI7CalurtTYKXN1wzkL9muRgzQPwKtBFERWBapv/rPOoWe9ie3WroqU+s/HU5QtKH+hUJK2r8mpk3UzuZZLieLw0/wKMOWAO3lpxdDpjAo6EU6e0gOyZq3iL7NjTfxxcnGtd3QkleaArKks+TV0O4EC0Rk4uGfeEO3cWRYRo90+5tCZPcN2GD0ZpX6wmUKSqtMhbCIZjlqyZbp0XYYFvRmm0ds9vSL03JDbQ== arouene' >> /home/centos/.ssh/authorized_keys


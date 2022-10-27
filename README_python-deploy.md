#Pacakge:
  - gcc build-essential make
  - vim htop git curl wget httpie unzip zip tmux mosh

#sshd config
edit /etc/ssh/sshd_config or etc...  
field:
  AllowUser {logins}		# list of allowed users
  PermitRootLogin no		# root not accepted
  PasswordAuthentication no	# only ssh-keys

#python installation from src
inside downloaded and extract folder with source
```
./configure --enable-optimization --prefix=$USER/.python/ ;\
make -j(nproc) ;\
make install ;\ or make altinstall  # TODO check into source
```

#python wsgi server
make config file inside project directory
  - gunicorn

#supervisor package
name: supervisor
sheme:
  nginx -> supervisor -> gunicorn/... -> gjango/flask/... project

#nginx
install from packages
.... sinmple as fuck
install fron src
.... # TODO if needed


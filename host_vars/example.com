#############################
# Playbook 01_bootstrap.yml #
#############################

# The private key file of the root user for passwordless acces (if possible disable root login right away via your hosting provider)
root_user_privatekey_file: keys/root_user_private_key


###############################
# Playbook 02_basic_setup.yml #
###############################

# The private key file of the unprivileged user for passwordless acces (if possible disable root login right away via your hosting provider)
root_user_privatekey_file: keys/sudo_user_private_key

# SSH port to use (should not be 22 to avoid attacks)
ssh_port: 12345

######################
# Role root password #
######################
# see https://github.com/BjoernCFischer/ansible-root-password

# Encrypted root password to set. See docs for details: https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module
root_password: my_secret_crypted_root_password


##################
# Role sudo user #
##################
# see https://github.com/BjoernCFischer/ansible-sudo-user

# Username of the unprivileged user to allow sudo execution to
unprivileged_user: mysudouser

# Public key to store for the sudo user
unprivileged_user_publickey: "{{ lookup('file', 'keys/sudo_user_public_key.pub') }}"

# Encrypted sudo user's password to set. See docs for details: https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module
unprivileged_user_password: my_secret_crypted_password
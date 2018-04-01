# git-lfs-server

[![Build Status](https://travis-ci.org/vicyap/ansible-role-git-lfs-server.svg?branch=master)](https://travis-ci.org/vicyap/ansible-role-git-lfs-server)

---

`git-lfs-server` will clone and install <https://github.com/git-lfs/lfs-test-server>.
This role also configures a systemd service unit to run the server.

Read more about git lfs here <https://git-lfs.github.com/>


## Role Variables

If `git_lfs_server__enable_service` is true, then the you will need to consider the following variables:
```
git_lfs_server__lfs_listen: tcp://:8080
git_lfs_server__lfs_host: localhost:8080
git_lfs_server__lfs_metadb: lfs.db
git_lfs_server__lfs_contentpath: /opt/lfs-server/lfs-content
git_lfs_server__lfs_adminuser: admin
git_lfs_server__lfs_adminpass: password
git_lfs_server__lfs_scheme: http
git_lfs_server__lfs_usetus: false
```

**Warning**: This role uses `http` by default.

If `git_lfs_server__lfs_scheme` is set to `https`, then you will also need to define:
* `git_lfs_server__lfs_cert`
* `git_lfs_server__lfs_key`

If `git_lfs_server__lfs_usetus` is true, then you will also need to define:
* `git_lfs_server__lfs_tushost`


## Example Playbook

```
- hosts: all
  roles:
     - role: git-lfs-server
```

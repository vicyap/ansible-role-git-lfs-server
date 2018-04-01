# git-lfs-server

[![Build Status](https://travis-ci.org/vicyap/ansible-role-git-lfs-server.svg?branch=master)](https://travis-ci.org/vicyap/ansible-role-git-lfs-server)

---

`git-lfs-server` will clone and install <https://github.com/git-lfs/lfs-test-server>.
This role also configures a systemd service unit to run the server.

Read more about git lfs here <https://git-lfs.github.com/>


## Role Variables

```
git_lfs_server__lfs_listen: tcp://:8080
git_lfs_server__lfs_host: localhost:8080
git_lfs_server__lfs_metadb: lfs.db
git_lfs_server__lfs_contentpath: /opt/lfs-server/lfs-content
git_lfs_server__lfs_adminuser: admin
git_lfs_server__lfs_adminpass: password
git_lfs_server__lfs_scheme: http
# git_lfs_server__lfs_cert:
# git_lfs_server__lfs_key:
git_lfs_server__lfs_usetus: false
# git_lfs_server__lfs_tushost: localhost:1080
```

**Warning**: This role uses `LFS\_SCHEME=http` by default. Also please do
change the default `LFS_ADMINUSER` and `LFS_ADMINPASS`.

## Example Playbook

```
    - hosts: all
      roles:
         - role: git-lfs-server
```

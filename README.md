# Rubix Nodejs

Rubix Nodejs utilities

- Install nodejs `v10` (default) or another version
- Install `pm2` as `soft` global module by making `PATH` in current `node_modules`
- Update `etc/rsyslog.conf` to allow:
  - Redirect `pm2 logs` to `syslog`
  - Enable `syslog` color
  
## HOWTO

- Install nodejs v10: `./install.sh`
- Install nodejs v12: `./install.sh 12`
- Install nodejs v14: `./install.sh 14`

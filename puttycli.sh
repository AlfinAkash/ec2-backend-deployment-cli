login as: ubuntu
Authenticating with public key "testkey"
Welcome to Ubuntu 24.04.2 LTS (GNU/Linux 6.8.0-1029-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Sun Jul 27 08:53:22 UTC 2025

  System load:  0.0               Processes:             110
  Usage of /:   34.2% of 6.71GB   Users logged in:       0
  Memory usage: 33%               IPv4 address for enX0: 172.31.19.27
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

83 updates can be applied immediately.
49 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


Last login: Sun Jul 27 07:50:12 2025 from 106.200.18.118
ubuntu@ip-172-31-19-27:~$ ls
Mavepizon-Attendance
ubuntu@ip-172-31-19-27:~$ cd Mavepizon-Attendance
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance$ ls
Backend
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance$ cd Backend
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ ls
Readme.md    middleware    package-lock.json  scripts    utils
config       models        package.json       server.js
controllers  node_modules  routes             uploads
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo nano /etc/nginx/sites-available/default
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo systemctl reload nginx
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ npm install

up to date, audited 156 packages in 877ms

21 packages are looking for funding
  run `npm fund` for details

1 high severity vulnerability

To address all issues, run:
  npm audit fix

Run `npm audit` for details.
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ npm run dev

> backend@1.0.0 dev
> nodemon server.js

[nodemon] 3.1.10
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,cjs,json
[nodemon] starting `node server.js`
(node:3531) [MONGODB DRIVER] Warning: useNewUrlParser is a deprecated option: useNewUrlParser has no effect since Node.js Driver version 4.0.0 and will be removed in the next major version
(Use `node --trace-warnings ...` to show where the warning was created)
(node:3531) [MONGODB DRIVER] Warning: useUnifiedTopology is a deprecated option: useUnifiedTopology has no effect since Node.js Driver version 4.0.0 and will be removed in the next major version
Server running on port 5000
MongoDB connected
^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo systemctl reload nginx
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ curl localhost:5000
Mavepizon Backend Server is runningubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ ^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ npm start

> backend@1.0.0 start
> node server.js

(node:3570) [MONGODB DRIVER] Warning: useNewUrlParser is a deprecated option: useNewUrlParser has no effect since Node.js Driver version 4.0.0 and will be removed in the next major version
(Use `node --trace-warnings ...` to show where the warning was created)
(node:3570) [MONGODB DRIVER] Warning: useUnifiedTopology is a deprecated option: useUnifiedTopology has no effect since Node.js Driver version 4.0.0 and will be removed in the next major version
Server running on port 5000
MongoDB connected
^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ pm2 start server.js
[PM2] Starting /home/ubuntu/Mavepizon-Attendance/Backend/server.js in fork_mode (1 instance)
(node:3583) [DEP0176] DeprecationWarning: fs.R_OK is deprecated, use fs.constants.R_OK instead
(Use `node --trace-deprecation ...` to show where the warning was created)
[PM2] Done.
┌────┬────────────┬─────────────┬─────────┬─────────┬──────────┬────────┬──────┬───────────┬──────────┬──────────┬──────────┬──────────┐
│ id │ name       │ namespace   │ version │ mode    │ pid      │ uptime │ ↺    │ status    │ cpu      │ mem      │ user     │ watching │
├────┼────────────┼─────────────┼─────────┼─────────┼──────────┼────────┼──────┼───────────┼──────────┼──────────┼──────────┼──────────┤
│ 0  │ backend    │ default     │ 1.0.0   │ fork    │ 3263     │ 57m    │ 0    │ online    │ 0%       │ 105.3mb  │ ubuntu   │ disabled │
│ 1  │ server     │ default     │ 1.0.0   │ fork    │ 3590     │ 0s     │ 0    │ online    │ 0%       │ 14.4mb   │ ubuntu   │ disabled │
└────┴────────────┴─────────────┴─────────┴─────────┴──────────┴────────┴──────┴───────────┴──────────┴──────────┴──────────┴──────────┘
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ ^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ pm2 list
┌────┬────────────┬─────────────┬─────────┬─────────┬──────────┬────────┬──────┬───────────┬──────────┬──────────┬──────────┬──────────┐
│ id │ name       │ namespace   │ version │ mode    │ pid      │ uptime │ ↺    │ status    │ cpu      │ mem      │ user     │ watching │
├────┼────────────┼─────────────┼─────────┼─────────┼──────────┼────────┼──────┼───────────┼──────────┼──────────┼──────────┼──────────┤
│ 0  │ backend    │ default     │ 1.0.0   │ fork    │ 3263     │ 58m    │ 0    │ online    │ 0%       │ 105.5mb  │ ubuntu   │ disabled │
│ 1  │ server     │ default     │ 1.0.0   │ fork    │ 3590     │ 59s    │ 0    │ online    │ 0%       │ 114.6mb  │ ubuntu   │ disabled │
└────┴────────────┴─────────────┴─────────┴─────────┴──────────┴────────┴──────┴───────────┴──────────┴──────────┴──────────┴──────────┘
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo apt update
Hit:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble InRelease
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
Hit:4 https://deb.nodesource.com/node_24.x nodistro InRelease
Hit:5 http://security.ubuntu.com/ubuntu noble-security InRelease
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [163 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [377 kB]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Components [212 B]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
Get:10 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [7068 B]
Get:11 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [28.2 kB]
Get:12 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-backports/restricted amd64 Components [216 B]
Get:13 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Components [212 B]
Fetched 829 kB in 1s (830 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
80 packages can be upgraded. Run 'apt list --upgradable' to see them.
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo apt install certbot python3-certbot-nginx -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  python3-acme python3-certbot python3-configargparse python3-icu python3-josepy python3-parsedatetime python3-rfc3339
Suggested packages:
  python-certbot-doc python3-certbot-apache python-acme-doc python-certbot-nginx-doc
The following NEW packages will be installed:
  certbot python3-acme python3-certbot python3-certbot-nginx python3-configargparse python3-icu python3-josepy python3-parsedatetime python3-rfc3339
0 upgraded, 9 newly installed, 0 to remove and 80 not upgraded.
Need to get 1097 kB of archives.
After this operation, 5699 kB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-josepy all 1.14.0-1 [22.1 kB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-rfc3339 all 1.1-4 [6744 B]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-acme all 2.9.0-1 [48.5 kB]
Get:4 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-configargparse all 1.7-1 [31.7 kB]
Get:5 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-parsedatetime all 2.6-3 [32.8 kB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-certbot all 2.9.0-1 [267 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 certbot all 2.9.0-1 [89.2 kB]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-certbot-nginx all 2.9.0-1 [66.0 kB]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu noble/main amd64 python3-icu amd64 2.12-1build2 [534 kB]
Fetched 1097 kB in 0s (17.2 MB/s)
Preconfiguring packages ...
Selecting previously unselected package python3-josepy.
(Reading database ... 76499 files and directories currently installed.)
Preparing to unpack .../0-python3-josepy_1.14.0-1_all.deb ...
Unpacking python3-josepy (1.14.0-1) ...
Selecting previously unselected package python3-rfc3339.
Preparing to unpack .../1-python3-rfc3339_1.1-4_all.deb ...
Unpacking python3-rfc3339 (1.1-4) ...
Selecting previously unselected package python3-acme.
Preparing to unpack .../2-python3-acme_2.9.0-1_all.deb ...
Unpacking python3-acme (2.9.0-1) ...
Selecting previously unselected package python3-configargparse.
Preparing to unpack .../3-python3-configargparse_1.7-1_all.deb ...
Unpacking python3-configargparse (1.7-1) ...
Selecting previously unselected package python3-parsedatetime.
Preparing to unpack .../4-python3-parsedatetime_2.6-3_all.deb ...
Unpacking python3-parsedatetime (2.6-3) ...
Selecting previously unselected package python3-certbot.
Preparing to unpack .../5-python3-certbot_2.9.0-1_all.deb ...
Unpacking python3-certbot (2.9.0-1) ...
Selecting previously unselected package certbot.
Preparing to unpack .../6-certbot_2.9.0-1_all.deb ...
Unpacking certbot (2.9.0-1) ...
Selecting previously unselected package python3-certbot-nginx.
Preparing to unpack .../7-python3-certbot-nginx_2.9.0-1_all.deb ...
Unpacking python3-certbot-nginx (2.9.0-1) ...
Selecting previously unselected package python3-icu.
Preparing to unpack .../8-python3-icu_2.12-1build2_amd64.deb ...
Unpacking python3-icu (2.12-1build2) ...
Setting up python3-configargparse (1.7-1) ...
Setting up python3-parsedatetime (2.6-3) ...
Setting up python3-icu (2.12-1build2) ...
Setting up python3-josepy (1.14.0-1) ...
Setting up python3-rfc3339 (1.1-4) ...
Setting up python3-acme (2.9.0-1) ...
Setting up python3-certbot (2.9.0-1) ...
Setting up certbot (2.9.0-1) ...
Created symlink /etc/systemd/system/timers.target.wants/certbot.timer → /usr/lib/systemd/system/certbot.timer.
Setting up python3-certbot-nginx (2.9.0-1) ...
Processing triggers for man-db (2.12.0-4build2) ...
Scanning processes...
Scanning linux images...

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo certbot --nginx -d https://ec2-75-101-247-122.compute-1.amazonaws.com/
Requested name https://ec2-75-101-247-122.compute-1.amazonaws.com/ appears to be a URL, not a FQDN. Try again without the leading "https://".
Ask for help or search for solutions at https://community.letsencrypt.org. See the logfile /tmp/certbot-log-plh_3ia1/log or re-run Certbot with -v for more details.
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ ^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo certbot --nginx -d ec2-75-101-247-122.compute-1.amazonaws.com
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Enter email address (used for urgent renewal and security notices)
 (Enter 'c' to cancel): a.alfinakash1@gmail.com

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Please read the Terms of Service at
https://letsencrypt.org/documents/LE-SA-v1.5-February-24-2025.pdf. You must
agree in order to register with the ACME server. Do you agree?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(Y)es/(N)o: y

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Would you be willing, once your first certificate is successfully issued, to
share your email address with the Electronic Frontier Foundation, a founding
partner of the Let's Encrypt project and the non-profit organization that
develops Certbot? We'd like to send you email about our work encrypting the web,
EFF news, campaigns, and ways to support digital freedom.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(Y)es/(N)o: y
Account registered.
Requesting a certificate for ec2-75-101-247-122.compute-1.amazonaws.com
An unexpected error occurred:
Error creating new order :: Cannot issue for "ec2-75-101-247-122.compute-1.amazonaws.com": The ACME server refuses to issue a certificate for this domain name, because it is forbidden by policy
Ask for help or search for solutions at https://community.letsencrypt.org. See the logfile /var/log/letsencrypt/letsencrypt.log or re-run Certbot with -v for more details.
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ ^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ sudo systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Sun 2025-07-27 07:55:34 UTC; 1h 14min ago
       Docs: man:nginx(8)
   Main PID: 3005 (nginx)
      Tasks: 2 (limit: 1124)
     Memory: 1.9M (peak: 3.7M)
        CPU: 41ms
     CGroup: /system.slice/nginx.service
             ├─3005 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             └─3554 "nginx: worker process"

Jul 27 07:55:34 ip-172-31-19-27 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Jul 27 07:55:34 ip-172-31-19-27 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
Jul 27 08:56:46 ip-172-31-19-27 systemd[1]: Reloading nginx.service - A high performance web server and a reverse proxy server...
Jul 27 08:56:46 ip-172-31-19-27 nginx[3491]: 2025/07/27 08:56:46 [notice] 3491#3491: signal process started
Jul 27 08:56:46 ip-172-31-19-27 systemd[1]: Reloaded nginx.service - A high performance web server and a reverse proxy server.
Jul 27 08:59:41 ip-172-31-19-27 systemd[1]: Reloading nginx.service - A high performance web server and a reverse proxy server...
Jul 27 08:59:41 ip-172-31-19-27 nginx[3552]: 2025/07/27 08:59:41 [notice] 3552#3552: signal process started
Jul 27 08:59:41 ip-172-31-19-27 systemd[1]: Reloaded nginx.service - A high performance web server and a reverse proxy server.
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ pm2 start server.js
[PM2][ERROR] Script already launched, add -f option to force re-execution
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ pm2 list
┌────┬────────────┬─────────────┬─────────┬─────────┬──────────┬────────┬──────┬───────────┬──────────┬──────────┬──────────┬──────────┐
│ id │ name       │ namespace   │ version │ mode    │ pid      │ uptime │ ↺    │ status    │ cpu      │ mem      │ user     │ watching │
├────┼────────────┼─────────────┼─────────┼─────────┼──────────┼────────┼──────┼───────────┼──────────┼──────────┼──────────┼──────────┤
│ 0  │ backend    │ default     │ 1.0.0   │ fork    │ 3263     │ 66m    │ 0    │ online    │ 0%       │ 107.7mb  │ ubuntu   │ disabled │
│ 1  │ server     │ default     │ 1.0.0   │ fork    │ 3590     │ 9m     │ 0    │ online    │ 0%       │ 96.9mb   │ ubuntu   │ disabled │
└────┴────────────┴─────────────┴─────────┴─────────┴──────────┴────────┴──────┴───────────┴──────────┴──────────┴──────────┴──────────┘
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$ ^C
ubuntu@ip-172-31-19-27:~/Mavepizon-Attendance/Backend$

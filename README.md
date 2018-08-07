# centos-cis-benchmark
Based on CIS CentOS Linux 7 Benchmark
v2.2.0 - 12-27-2017

## How to run the audit
To run the audit, execute these steps

```bash
git clone https://github.com/massyn/centos-cis-benchmark
cd centos-cis-benchmark
sudo bash run-cis-benchmark.sh
```
The following tests must be executed manually.  These are dependent on your own site configuration, and needs a manual check.  By default, the audit scripts will fail these checks.

* 1.2.1 - Ensure package manager repositories are configured (Not Scored)
* 3.4.2 - Ensure /etc/hosts.allow is configured (Scored)
* 3.4.3 - Ensure /etc/hosts.deny is configured (Scored)
* 3.6.4 - Ensure outbound and established connections are configured (Not Scored)
* 5.5 - Ensure root login is restricted to system console (Not Scored)

## Remediation
Some remediation scripts are also included, however use them at your own risk.  While most of the scripts would correct the problem, they could cause outages on your system, so be sure to have a proper roll back plan before you execute the scripts.

## Acknowledgement
* https://github.com/haxorof/centos-bench-security

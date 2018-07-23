# centos-cis-benchmark
Based on CIS CentOS Linux 6 Benchmark
v2.1.0 - 12-27-2017

## How to run the audit
To run the audit, execute these steps

```bash
git clone https://github.com/massyn/centos-cis-benchmark
cd centos-cis-benchmark
sudo bash run-cis-benchmark.sh
```
## Remediation
A set of remediation scripts are also included, however use them at your own risk.  While most of the scripts would correct the problem, they could cause outages on your system, so be sure to have a proper roll back plan before you execute the scripts.

## Acknowledgement
* https://github.com/haxorof/centos-bench-security

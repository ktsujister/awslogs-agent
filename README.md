# awslogs-agent
A Debian package which installs a boot script, which then installs AWS's CloudWatch Logs Agent on instance startup.

This strange design is per the following AWS guide,
http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/EC2NewInstanceCWL.html

## Usage:
Other apps wanting to make use of aws-logs agent, should *append* their app specific configuration information
to /var/log/awslogs-config.

### Example
```bash
cat >> /var/log/awslogs-config <<EOF
[/var/log/syslog]
file = /var/log/syslog
log_group_name = /var/log/syslog
log_stream_name = {instance_id}
datetime_format = %b %d %H:%M:%S

EOF
```

For more information regarding the configuration file, refer to the following,
http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/AgentReference.html


## Note:
* awslogs-agent requires https://github.com/gracenote-mtl/var-aws and lists it as a package dependency.

* Block Based storage
* Runs ec2 OS, store data from db, file data, etc
* Placed in specific AZ. Automatically replicated within the AZ to protect from failure.
* Snapshot is backedup of a volume

# Ebs Types

| General Purpose (SSD)   | Most Work Loads            |
| ----------------------- | -------------------------- |
| Provisioned IOPS        | Large Databases            |
| Throughput Optimized HD | Big Data & Data Warehouses |
| Cold HDD                | File Servers               |
| Magnetic                | Backups & Archives         |

Name your Volume
# Requirement Gathering

| OS      | Centos                       |
| ------- | ---------------------------- |
| Size    | Ram,CPU, Network => min      |
| Storage | 5 gigs for web server images |
# Create new Volume
* AZ as your Instance
* Tag (gymso-web01-Images)
* Attach to Instance (dev/sdf)

# Storage comands

First you need to separate the folder with img
For partition format and mount
>[[fdisk -l]]
[[df -h]]
## Create Partition
>fdisk /dev/xvdf
>n - for new partition
  p - primary
>1 - for first number
>free sector>you can hit enter , system will find free sector
>last size > you can add (+3G) or hit enter to create partition of entire disk
>p> to show partitions
>w - write if ok

fdisk -l
## Doing Format
[[mkfs]] hit 2 times TAB
choose format>>
mkfs.ext4 /dev/xvdf1
### Create dir with backup
mkdir /tmp/img-backups
mv img/* /tmp/img-backups/
#doaftermounting 
mv /tmp/img-backups/* /var/www/html/img
## Mount it
>Temporary mounting
[[mount]] /dev/xvdf1 /var/www/html/img/
df -h - show
umount > comand for unmount filesystem

Permanent mount
>vi /etc/fstab
>the last line
>/dev/xvdf1         /var/www/html/img          ext4  defaults     0  0
> 		 ^tab                                ^tab        ^space  ^tab ^space 
> 0>>its dump code and fsck code
> :wq

#### mount -a
#doaftermounting 


if you cant umount, that because Apache process or something else try
>[[lsof]] that in directory you mounted
>or try to kill process



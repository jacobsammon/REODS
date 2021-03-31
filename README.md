# REODS
REODS sets up Debian as an OS usable for everyday tasks.

# Installation

## Requirements
- Clean Debian 10+, with no DE
- Internet access, etc, etc
- Basically any 2010+ laptop/computer

## Commands

First, login as root:
```
$ su
```
Next, install CURL:
```
$ apt install curl
```
Now, download REODS, jbsn.uk/reods.sh simply redirects to the GitHub-hosted file:
```
$ curl -LO https://reods.jbsn.uk/reods.sh
```
Penultimately, change the file permissions to allow it to be executed:
```
$ chmod +x reods.sh
```
Finally, execute the script:
```
$ ./reods.sh
```
### Notes
I've had to remove the changes to bg image, etc, due to issues around GNOME.

# More Info
### Visit https://reods.jbsn.uk

# REODS
REODS sets up Debian as an OS usable for everyday tasks.

# Features and Software
A complete list of all features and software included with REODS can be found here: https://reods.jbsn.uk/#softwareandfeatures.

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

# More Info
### Visit https://reods.jbsn.uk

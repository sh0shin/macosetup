# macOSetup

Bash script based macOS setup environment

## Quick usage

0. Disable SIP (optional but recommended)
1. Create a configuration file (see: etc/default.cfg)
2. Open Terminal
3. Run `./macosetup -c path/to/your/config-file`
4. Enable SIP (optional but recommended)

## macOS versions

List of [macOS releases](https://en.wikipedia.org/wiki/MacOS_version_history#Releases)

### Supported versions

 * 10.13 - High Sierra
 * 10.14 - Mojave
 * 10.15 - Catalina

### Unsupported versions

 * 11 - Big Sur (soon)

## Outputs

 * `[C]` - Configuration
 * `[D]` - Module disabled
 * `[E]` - Error
 * `[I]` - Information
 * `[M]` - Module enabled
 * `[W]` - Warning
 * `[X]` - Module executed

## Notes

### System Integrity Protection (SIP)
Boot into [macOS Recovery](https://support.apple.com/en-us/HT201314),
or alternatively from Terminal:
```sh
sudo nvram "recovery-boot-mode=unused"
sudo reboot recovery
```

Open Terminal and run:
```sh
# Disable SIP
csrutil disable

# Enable SIP
csrutil enable
```

### Sudo
To prevent sudo from asking for your password after time, you could add this to your sudoers file.
```
%admin  ALL=(ALL) NOPASSWD: ALL
```
The sudoers file is no longer handled by macosetup!

### Full Disk Access
To avoid errors and permission problems, Terminal/iTerm needs **Full Disk Access**.

![](https://lh3.googleusercontent.com/pw/ACtC-3dH1j3-ilWlQtEfdgzOH74NKIpEdHT4z3gSg28jm5wGFeX34uLsNX9vI8ON74Y6Pqdrp3sl7p_Lc0AeLXVmMRMiXZXJ9UbUYeNMSuFvWVG4MX-QRvc_8oJ_iXGzmGnGg48rvzxt9XoZ0MAhFhNx0jvbLg=w668-no)

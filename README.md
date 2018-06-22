
# Linux Scripts

#### Linux utility scripts.


---

## *OOM_protect.sh*

### Purpose

Protect a critical application from the Linux kernel's OOM Killer.

For example, the critical app could be MySQL, with an Apache process triggering the OOM, but MySQL &ndash; by using the most memory &ndash; being ungracefully killed first.

### Usage

1. `chmod 700 OOM_protect.sh`

2. set `APP` path in script's *CONFIG* section.

3. `sudo ./OOM_protect.sh`

---


## License

Scripts are released under the [GPL v.3](https://www.gnu.org/licenses/gpl-3.0.html).


# Linux Scripts

#### Linux utility scripts.


---

## *OOM_protect.sh*

### Purpose

Protect a critical application from being killed first by the Linux kernel's OOM Killer.


### Description

The critical app on a webserver could be MySQL.

A runaway PHP script, operating through an Apache process, triggers the OOM.

However, MySQL &ndash; using the most memory &ndash; is ungracefully killed first, before Apache.


### Usage

1. `chmod 700 OOM_protect.sh`

2. set `APP` path in script's *CONFIG* section.

3. `sudo ./OOM_protect.sh`

---


## License

Scripts are released under the [GPL v.3](https://www.gnu.org/licenses/gpl-3.0.html).

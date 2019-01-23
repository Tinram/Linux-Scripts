
# Linux Scripts

#### Linux utility scripts.


---

## *elf_overview.sh*

### Purpose

Provide a simple overview of an ELF executable details through calling the Linux programs `file`, `readelf`, `hd`, `size`, `objdump`, `ldd`, and `strings`.


### Usage

```bash
    ./elf_overview.sh <exe> | less
```


---

## *OOM_protect.sh*

### Purpose

Protect a critical application from being killed first by the Linux kernel's OOM Killer.


### Description

1. The critical app on a limited-budget web server might be MySQL.
2. A runaway PHP script, operating through an Apache process, triggers the OOM.
3. But MySQL &ndash; using the most memory &ndash; is ungracefully killed first, before Apache. The untimely death of MySQL creates database and sales problems.

*OOM_protect.sh* aims to stop the above happening.

(So might the database and web server residing on separate servers.)


### Usage

1. `chmod 700 OOM_protect.sh`

2. set `APP` variable path in the script's *CONFIG* section.

3. `sudo ./OOM_protect.sh`

---


## License

Scripts are released under the [GPL v.3](https://www.gnu.org/licenses/gpl-3.0.html).

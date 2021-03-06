
# Linux Scripts

#### Linux utility scripts.


---


## *elf_overview.sh*

### Purpose

Output a simple overview of an ELF executable through the calling `file`, `readelf`, `hd`, `size`, `objdump`, `ldd`, and `strings`. This is easier to run than remember the command-line switches, while some tools (`objdump` and `readelf`) can produce subtly similar outputs.

Another use of *elf_overview.sh* is to verify that files such as PDFs are authentic and not masquerading as executables.


### Usage

```bash
    ./elf_overview.sh <file> | less
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


## *icon_save*

### Purpose

Gnome / Nemo desktop icon position restore.


### Description

A Python script to generate a bash script recording desktop icon positions. When desktop icon positions are lost, such as through connecting/disconnecting a second monitor or enacting 'Sort Desktop items by Name', executing the bash script restores the icon positions.


### Usage

Place script in ~/Desktop folder.

#### Create bash script

```bash
    python3 icon_save
```

or

```bash
    ./icon_save
```

#### Restore icons from bash script

+ ensure Desktop 'Auto-arrange' is off

```bash
    ./icon_restore
```

+ show Desktop
+ press <kbd>F5</kbd>

---


## License

Scripts are released under the [GPL v.3](https://www.gnu.org/licenses/gpl-3.0.html).

# Module name
MODID=plasma-xperience

# Magic mount
AUTOMOUNT=true

# Edit the system.prop file? nah
PROPFILE=false

# Late start service
LATESTARTSERVICE=false

# List of files the module will replace
## Left it empty for the defaults
REPLACE="
"

# File permissions
set_permissions() {
		set_perm_recursive  $MODPATH  0  0  0755  0644
}

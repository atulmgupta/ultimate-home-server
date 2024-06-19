#!/bin/bash

# List of application names as an array
applications=(
    "Gladys", "adguard", "adguard-exporter", "admidio", "airsonic", "ansible-nas-docker",
    "ansible-nas-general", "aprise-api", "authelia", "autoindex", "autokuma", "bazarr",
    "bind9", "bitwarden", "booksonic", "budge", "cadvisor", "calibre-web", "cloudbeaver",
    "cloudcmd", "cloudfare-companion", "cloudflare-ddns", "code-server", "cops",
    "couchpotato", "crowdsec", "dashdot", "dashy", "deluge", "dillinger", "diun", "docker",
    "docker-cleanup", "docker-gc", "docker-proxy", "docker_swarm_sample", "dockly",
    "docusaurus", "doku", "dokuwiki", "doublecommander", "dozzle", "duplicacy", "duplicati",
    "elk", "emby", "esphome", "file-manager", "filebot", "firefly", "freshrss", "get_iplayer",
    "gitea", "gitlab", "glances", "google-ddns", "google-oauth", "gotify", "Grafana", "grav",
    "guacamole", "Hammond", "handbrake", "hchecks", "healthchecks.io", "hedgedoc", "heimdall",
    "homeassistant", "homebox", "homebridge", "homepage", "influx", "it-tools", "jackett",
    "jaeger", "jellyfin", "Joomla", "Joplin", "komga", "kv", "librespeed", "lidarr", "linkstack",
    "logarr", "loki", "mailrise", "mealie", "mergerfs", "Minecraft-server", "minidlna",
    "miniflux", "mongodb", "monitor", "mosquito", "motioneye", "mylar", "mymediaforalexa",
    "mysql-common", "n8n", "navidrome", "netbootxyz", "netdata", "nextcloud", "nginx",
    "nginxerror", "nginxproxymanager", "node-exporter", "nzbget", "octoprint", "ombi",
    "openhab", "organizr", "otel", "paperless_ng", "photoprism", "photoshow", "phpMyAdmin",
    "pialert", "pihole", "piwigo", "plex", "plex-meta-manager", "portainer", "postgres",
    "Prometheus", "prowlarr", "pyload", "pytivo", "qdirststat", "radarr", "rclone", "redis",
    "rsnapshot", "rssbridge", "rsync", "samba", "sample-nginx-service", "scrutiny", "scripted",
    "semaphore", "smb-shares", "smokeping", "smtp-telegram", "snapdrop", "speedtest-tracker",
    "spotify", "statping", "stats", "sui-dashboard", "swirl", "syncthing", "syslog", "tautulli",
    "telegraf", "timemachine", "traefik", "traefik-home", "transmission-with-openvpn",
    "uptime-kuma", "vscodeeditor", "watchtower", "webtop", "whoogle", "wikijs", "wireguard",
    "wireshark", "wizarr", "wordle", "youtubedlmaterial", "znc"
)
# Loop through the application names and create Helm charts
for app in "${applications[@]}"; do
    # Convert names to lowercase and replace dashes with underscores
    formatted_name=$(echo "$app" | tr '[:upper:]' '[:lower:]' | tr '-' '_')
    echo "Initializing Helm chart: $formatted_name"
    helm create "$formatted_name"
    echo "Adding placeholder to the templates directory for $formatted_name"
    touch "$formatted_name/templates/placeholder.yaml"
    echo "Adding .gitkeep to charts directory for $formatted_name"
    touch "$formatted_name/charts/.gitkeep"
done

echo "All charts have been initialized."

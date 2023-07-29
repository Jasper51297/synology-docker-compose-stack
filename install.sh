# Create required directory structure

# Set variables from .env file
export $(grep -v '^#' .env | xargs)

# Create media folders
mkdir -p ${DATADIR}/storage/media/Books
mkdir -p ${DATADIR}/storage/media/Movies
mkdir -p ${DATADIR}/storage/media/TV
mkdir -p ${DATADIR}/storage/media/Music
mkdir -p ${DATADIR}/storage/media/Karaoke
mkdir -p ${DATADIR}/storage/downloads/nzb/complete
mkdir -p ${DATADIR}/storage/downloads/nzb/incomplete
mkdir -p ${DATADIR}/storage/downloads/torrents/complete
mkdir -p ${DATADIR}/storage/downloads/torrents/incomplete

# Create appdata folders
## NPM
mkdir -p ${DOCKERDIR}/appdata/npm/config
mkdir -p ${DOCKERDIR}/appdata/npm/letsencrypt
mkdir -p ${DOCKERDIR}/appdata/npm/data

## Portainer
mkdir -p ${DOCKERDIR}/appdata/portainer/data

## Flame
mkdir -p ${DOCKERDIR}/appdata/flame

## SABnzbd
mkdir -p  ${DOCKERDIR}/appdata/sabnzbd

## TransmissionBT
mkdir -p  ${DOCKERDIR}/appdata/transmission-vpn/data
mkdir -p  ${DOCKERDIR}/appdata/transmission-vpn/config

## Radarr
mkdir -p  ${DOCKERDIR}/appdata/radarr

## Sonarr
mkdir -p  ${DOCKERDIR}/appdata/sonarr

## Readarr
mkdir -p  ${DOCKERDIR}/appdata/readarr

## Prowlarr
mkdir -p  ${DOCKERDIR}/appdata/prowlarr

## Airsonic
mkdir -p  ${DOCKERDIR}/appdata/airsonic/podcasts
mkdir -p  ${DOCKERDIR}/appdata/airsonic/playlists
mkdir -p  ${DOCKERDIR}/appdata/airsonic/config

## Jellyfin
mkdir -p  ${DOCKERDIR}/appdata/jellyfin
mkdir -p  ${DOCKERDIR}/appdata/jellyfin-web-interface/dist # Optional, only necessary when using the skip intro plugin

## Bazarr
mkdir -p  ${DOCKERDIR}/appdata/bazarr

## Whisper
mkdir -p  ${DOCKERDIR}/appdata/whisper/cache-whisper
mkdir -p  ${DOCKERDIR}/appdata/whisper/cache-faster-whisper

## Ombi
mkdir -p  ${DOCKERDIR}/appdata/ombi

## Code Server
mkdir -p  ${DOCKERDIR}/appdata/code-server

## Adguardhome
mkdir -p  ${DOCKERDIR}/appdata/adguardhome/work
mkdir -p  ${DOCKERDIR}/appdata/adguardhome/conf

## Docker-GC
mkdir -p  ${DOCKERDIR}/appdata/docker-gc/docker-gc-exclude

## MySQL
mkdir -p  ${DOCKERDIR}/appdata/mariadb

## Crowdsec
mkdir -p ${DOCKERDIR}/appdata/crowdsec/config
mkdir -p ${DOCKERDIR}/appdata/crowdsec/dashboard
mkdir -p ${DOCKERDIR}/appdata/crowdsec/acquis.d
cp ../crowdsec/npm.yaml ${DOCKERDIR}/appdata/crowdsec/acquis.d/

## Metabase
mkdir -p ${DOCKERDIR}/appdata/metabase

## Teddit Redis
mkdir -p ${DOCKERDIR}/appdata/teddit-redis

## Homebridge
mkdir -p ${DOCKERDIR}/appdata/homebridge

## Speedtest tracker
mkdir -p ${DOCKERDIR}/appdata/speedtest-tracker/web
mkdir -p ${DOCKERDIR}/appdata/speedtest-tracker/config

# Karaoke
mkdir -p ${DOCKERDIR}/appdata/karaoke/config

# Firefly
mkdir -p ${DOCKERDIR}/appdata/firefly/upload
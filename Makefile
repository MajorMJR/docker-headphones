build:
	docker build -t docker-headphones --rm=true .

debug:
	docker run -it -p 10.42.100.8:8181:8181 -v /var/headphones/headphones:/headphones -v /pathtodownloaddir:/downloads -v /pathtotorrentdir:/torrents docker-headphones -

run:
	docker run -d -p 10.42.100.8:8181:8181 -v /var/headphones/headphones:/headphones -v /pathtodownloaddir:/downloads -v /pathtotorrentdir:/torrents docker-headphones -

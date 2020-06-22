init:
	(mkdir log && sudo chmod ugo+w log)
	(mkdir data && sudo chmod ugo+w data)
	(mkdir data/elasticsearch && sudo chmod ugo+w data/elasticsearch)

run:
	sh run.sh

watch:
	sudo sh watch_disk_smart.sh

clean:
	rm -rf data
	rm -rf log

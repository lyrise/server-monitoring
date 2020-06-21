init:
	mkdir log
	(mkdir data && sudo chmod ugo+w data)
	(mkdir data/elasticsearch && sudo chmod ugo+w data/elasticsearch)

run:
	sh run.sh

watch:
	sudo sh disk_smart.sh

clean:
	rm -rf data
	rm -rf log

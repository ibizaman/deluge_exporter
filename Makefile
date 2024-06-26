
FILES=deluge_exporter/deluge_exporter.py windows/deluge_exporter_windows_service.py gen/gen_libtorrent_metrics_json.py gen/gen_metrics_table.py

format:
	pyupgrade --py36-plus --exit-zero-even-if-changed $(FILES)
	black -l 1000 $(FILES)

lint:
	flake8 --max-line-length 1000 $(FILES)

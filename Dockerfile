FROM python:alpine
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt && rm -rf /root/.cache/
COPY ./deluge_exporter/deluge_exporter.py /deluge_exporter.py
COPY ./libtorrent_metrics.json /libtorrent_metrics.json
EXPOSE 9354
ENTRYPOINT ["/usr/local/bin/python", "/deluge_exporter.py"]

from python:3
Copy . /root/
run pip install -r /root/requirements.txt

workdir /root/
VOLUME [ "/out" ]
ENTRYPOINT ["python" ,"/root/novel_fetch.py"]
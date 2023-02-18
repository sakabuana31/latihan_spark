FROM jupyter/base-notebook

WORKDIR /home/jovyan/work

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
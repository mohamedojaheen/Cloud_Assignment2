FROM python:3.8
WORKDIR /app
COPY . /app
EXPOSE 8888
ENV NAME World
RUN pip install jupyter
RUN pip install pandas
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
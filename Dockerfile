FROM python:3.7

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt

ENV APPLICATIONINSIGHTS_CONNECTION_STRING="InstrumentationKey=ec500fd4-d1b0-48e4-8bea-85d15385b671;IngestionEndpoint=https://centralus-2.in.applicationinsights.azure.com/;LiveEndpoint=https://centralus.livediagnostics.monitor.azure.com/"

EXPOSE 5000
CMD ["python", "/app/main.py"]
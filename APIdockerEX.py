from fastapi import FastAPI
import random 

#entrypoint to API, queries info from API, creates an instance
app = FastAPI(port=8080)

#provides path to get information
@app.get("/dockertest")
def read_dockertest():
    return {"Message": "This is an example test API","Random Number": random.randint(0,1000)} 

@app.get("/")
def read_root():
    return {"Hello": "World"}
    
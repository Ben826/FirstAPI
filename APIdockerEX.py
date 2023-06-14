from fastapi import FastAPI
import random 

#entrypoint to API, queries info from API, creates an instance
app = FastAPI()

#provides path to get information
@app.get("/dockertest")
def read_dockertest():
    return {"Message": "This is an example test API","Random Number": random.randint(0,1000)} 
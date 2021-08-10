from pydantic import BaseModel
from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def hello():
    return {"message": "Voici mon application demo de"}



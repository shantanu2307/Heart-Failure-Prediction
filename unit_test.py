import pytest
from flask import jsonify
from app import app
import json

data={
  'age':'40',
  'ejection_fraction':'20',
  'serum_sodium':'116',
  'time':'7'
}

def test_index_route():
    response = app.test_client().get('/')
    print("All Good!")
    assert response.status_code == 200

@app.route("/predict_api")
def test_api():
    """ function to test the model """
    response=app.test_client().post('/predict_api',json=json.dumps(data))
    response_data=json.loads(response.data)
    print(data)
    print(response_data)
    assert response.status_code == 200
    assert response_data == {'output': '1'}




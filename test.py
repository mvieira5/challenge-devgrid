from app import app

def test_home():
    with app.test_client() as client:
        response = client.get('/api')
        assert response.data == b"Running"
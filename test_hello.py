import pytest

from flaskr import flaskr

@pytest.fixture
def client():
    with flaskr.app.test_client() as client:
        with flaskr.app.app_context():
            flaskr.init_db()
        yield client

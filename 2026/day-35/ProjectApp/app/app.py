from flask import Flask
import psycopg2
import redis

app = Flask(__name__)

@app.route("/")
def home():
    try:
        conn = psycopg2.connect(
            host="db",
            database="my_database",
            user="mujju",
            password="mujju123"
        )
        conn.close()
        db_status = "Connected"
    except Exception as e:
        db_status = f"Failed: {e}"

    try:
        r = redis.Redis(host="redis", port=6379)
        r.ping()
        redis_status = "Connected"
    except Exception as e:
        redis_status = f"Failed: {e}"

    return f"""
    <h1>Hello from mujakkir - UPDATED VERSION!</h1>
    <p>PostgreSQL: {db_status}</p>
    <p>Redis: {redis_status}</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

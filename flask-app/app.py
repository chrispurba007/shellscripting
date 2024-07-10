from flask import Flask, request

app = Flask(__name__)

@app.route('/app1/')
def user_info():
    user_ip = request.remote_addr
    user_agent = request.headers.get('User-Agent')
    user_info_text = f"""
    <h1>User Information</h1>
    <p><strong>IP Address:</strong> {user_ip}</p>
    <p><strong>User Agent:</strong> {user_agent}</p>
    """
    return user_info_text

if __name__ == '__main__':
    app.run(debug=True)

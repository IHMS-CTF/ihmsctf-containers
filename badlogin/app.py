from flask import Flask, render_template, request
import os

app = Flask(__name__)

@app.route("/")
def login():
    return render_template("login.html")

@app.route("/admin")
def admin():
    filename = request.args.get("file")

    file_contents = None
    if filename:
        try:
            with open(filename, "r") as f:
                file_contents = f.read()
        except Exception as e:
            file_contents = f"Error reading file: {e}"

    return render_template("admin.html", file_contents=file_contents)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

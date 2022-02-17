from flask import Flask
from flask import render_template
import time

app=Flask(__name__)

@app.route('/')
def current_day_and_time():
	time_now=time.strftime('%I:%M %p %Z')
	day_today=time.strftime('%A, %B %d, %Y')
	
	return render_template('index.html',
	    )

@app.route('/blog')
def hello_blog():
    return ("<h1>Empty Blog lol (^_^)</h1><p>Nothing to see now!</p> ")
	    

@app.route('/gallery')
def hello_gallery():
    return ("<h1>Empty Gallery lol (*_*)</h1><p>Nothing to see now!</p> ")


if __name__=='__main__':
	app.run(debug=True,host="0.0.0.0",port=8000)

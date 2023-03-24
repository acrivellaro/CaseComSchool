#
# acrivellaro
# 

from flask import Flask, render_template, request, jsonify
import Consulta

app = Flask (__name__)

# --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

@app.route('/')
@app.route('/index')
def index():
     return render_template ('index.html')

@app.route('/dashboard_periodo')
def dashboard_periodo():
     periodo = request.args.get('periodo')
     obj_data = Consulta.Consulta()
     rc = obj_data.dashboard_periodo (periodo)
     return jsonify(rc)

@app.route('/dashboard_indicador')
def dashboard_indicador():
     periodo = request.args.get('periodo')
     indicador = request.args.get('indicador')
     obj_data = Consulta.Consulta()
     rc = obj_data.dashboard_indicador (indicador, periodo)
     return jsonify(rc)


# --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

app.run(debug=True, port=8000, use_reloader=True)


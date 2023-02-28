import os
import urllib.request
import requests

from flask import Flask, render_template, jsonify, url_for, request
from flask_cors import CORS
from custom_libs import SQLUtils as su


app = Flask(__name__)


##########
# ROUTES #
##########

@app.route("/")
def basement_store():

    # out_hash = {'status': 1, 'link': link_data['loc'], 'table_name': link_data['table']}
    out_hash = {'status': 1}

    return(render_template("index.html", response=out_hash))


###############
# API CALLERS #
###############

#@app.route("/culler_get_api")
#def get_link_api():
#    raw_dat_out = get_random_link()

#    return raw_dat_out
#    return jsonify(raw_dat_out)

#@app.route("/culler_post_api", methods=["POST"])
#def post_link_api():
#    link = request.args.get('end_link')
#    table_name = request.args.get('table_name')
#    keep_score = request.args.get('keep')

#    if '/p/' in link:
#        table_name = 'culling_external'
#        piece_var = 'piece'
#    else:
#        table_name = 'culling_direct'
#        piece_var = 'end_link'

#    sql_check_cmd = "UPDATE {} SET keep = {} WHERE {}='{}'".format(table_name, keep_score, piece_var, link)
#    sql_check = su.SQLUtils().execute(sql_check_cmd)
#    sql_check.close()

#    print(sql_check_cmd)

#    return jsonify({'args_lst':{x: request.args[x] for x in request.args}})


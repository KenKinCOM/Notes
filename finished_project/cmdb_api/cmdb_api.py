import sys
import json
import requests
from api import api_work_place


header = {
    "Authorization": "Token dc2f2a8eb083e61b6d7cbc38083d8b2e0ba51839",
}
def switch_api(method,application,id='',**kwargs):
    url = 'http://cmdb.yyuap.com/api'+api_work_place[application] +"?limit=1000"
    if id:
        url = url+id+'/'
    session = getattr(requests.session(),method)
    x = session(url,headers=header,data=kwargs)
    print(x.text)


def promote_handle_promote(promote):
    positional_args = []
    keyword_args = {}
    step_1 = promote.split()
    for item in step_1:
        if '=' in item:
            key,value = item.split('=')
            keyword_args[key]=[value]
        else:
            positional_args.append(item)
    return positional_args,keyword_args

def promote_handle_sysargs(list_sys):
    positional_args = []
    keyword_args = {}
    for item in list_sys[1:]:
        if '=' in item:
            key,value = item.split('=')
            keyword_args[key]=[value]
        else:
            positional_args.append(item)

    return positional_args,keyword_args

    
        

while True:
    if len(sys.argv) > 1:
            positional_arg,keyword_arg=promote_handle_sysargs(sys.argv)
            switch_api(*positional_arg,**keyword_arg)
            break
    else:
        promote = input('promote>')
        if promote == 'exit':
            break
        else:
            positional_arg,keyword_arg=promote_handle_promote(promote)
            switch_api(*positional_arg,**keyword_arg)

import sys
import json
import requests
from api import api_work_place


header = {
    "Authorization": "Token 0123456789abcdef0123456789abcdef01234567",
}
def switch_api(method,application,id='',**kwargs):
    url = 'http://cmdb.yyrd.com/api'+api_work_place[application]
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

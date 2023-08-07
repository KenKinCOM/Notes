import sys
import json
import requests
from api import api_work_place

# 读取JSON文件
header = {
    "Authorization": "Token 0123456789abcdef0123456789abcdef01234567",
    "Content-Type": "application/json",
}

def promote_handle_promote(promote):
    positional_args = []
    step_1 = promote.split()
    for item in step_1:
        positional_args.append(item)
    return positional_args


def switch_api(file_json,application,data):
    url = 'http://cmdb.yyrd.com/api'+api_work_place[application]+'/'
    x = requests.post(url,headers=header,json=data)
    print(x.text)


    
        
while True:
       promote = input('promote>')
       if promote == 'exit':
           break
       else:
           positional_arg=promote_handle_promote(promote)
           with open(positional_arg[0], 'r') as file:
               data = json.load(file)
               data_list = list(data['results'])
           for id in range(len(data_list)):
               result = list(item for item in data['results'])
               if result:
                   print(id)
                   dict_data = dict(result[id])
                   print(dict_data)
                   switch_api(positional_arg[0],positional_arg[1],dict_data)

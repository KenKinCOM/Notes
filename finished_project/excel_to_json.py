import pandas as pd

excel_file = input("请输入excel文档地址:")
sheet_name = input("请输入sheet名:")

df = pd.read_excel(excel_file,sheet_name)
json_data = df.to_json(orient="records",force_ascii=False)
with open("output.json", "w") as json_file:
    json_file.write(json_data)

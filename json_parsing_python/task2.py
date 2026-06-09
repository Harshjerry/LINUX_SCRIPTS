import json

fo = open("sample.json", "r")
jl = json.load(fo)

print(type(jl))

for obj in jl:
    print(obj['hostname'])

fo2 = open("sample.json", "r")
jl2 = json.load(fo2)      

for obj in jl2:
    del obj['environment']

new_json = json.dumps(jl2,indent=4 ,sort_keys=True)
print(new_json)

fo.close()
fo2.close()
import dodo; import os; try: print(dodo.project_factory(os.environ["TEMPLATE"]).remote); except: print('None')


python -c '
import os
import dodo
try: 
    print(dodo.project_factory(os.environ["TEMPLATE"]).remote)
except:
    print("None")
'
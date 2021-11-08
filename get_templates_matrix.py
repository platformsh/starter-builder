import os

# This is a simple script that allows us to define a `strategy.matrix` for all templates.
# Reference: https://docs.github.com/en/actions/learn-github-actions/expressions#fromjson

dirs=os.listdir("{}/templates".format(os.getcwd()))
dirs.remove("__init__.py")
formatted = ['\\"{}\\"'.format(template) for template in dirs]
final = "{" + "[{0}]".format(", ".join(formatted))+ "}"
print(final)

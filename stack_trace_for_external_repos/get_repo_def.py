import sys
import pprint
import json
import external_repos

pp = pprint.PrettyPrinter(indent = 4)
for repo in external_repos.resolved:
  if repo["original_attributes"]["name"] == sys.argv[1]:
    if "definition_information" in repo:
      repo["definition_information"] = repo["definition_information"].split("\n")
    pp.pprint(repo)


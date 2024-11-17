import sys

query_file = sys.argv[1]
search_file =sys.argv[2]
output_file =sys.argv[3]

queries = []
with open(query_file, "r") as f:
	for query in f:
		queries.append(query.strip())
f.close()
with open(output_file, "w") as o:
	with open(search_file, "r") as s:
		for line in s:
			cols = line.strip().split("\t")
			for q in  queries:
				if q in cols:
					o.write(line)
	s.close()
o.close()
				

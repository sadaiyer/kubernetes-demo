List docker images
 docker image ls

k get nodes -o jsonpath="{range.items[*]}{.status.addresses[*].address} {\"\n\"} {end}"

The logic for next line is
it needs \n in double quotes, so "\n", but now the quotes have to be escaped, \"\n\"

 k get pods -o jsonpath="{range.items[*]}{.metadata.name}  {.spec.containers[*].image}{\"\n\"}{end}"


custom columns
 kgp -o custom-columns=NAME:.metadata.name,CREATED:.metadata.creationTimestamp

 kgp SORT-BY
kgp --sort-by=.metadata.name

kubectl get pod -o jsonpath='{.items[*].metadata.name}{.items[*].status.conditions[?(@.type=="Ready")].lastTransitionTime}'

kubectl get pod -o jsonpath='{.items[*].metadata.name}{.items[*].status.conditions[*].lastTransitionTime}'

kubect get pod -o jsonpath='{.items[*].metadata.name}{.items[*].status.conditions[?(@.type=="Ready")].lastTransitionTime}'

kubect get pod -o jsonpath="{range.items[*]}{.metadata.name}{range.items[*]}{.status.conditions[?(@.type=="Ready")].lastTransitionTime} {\"\n\"} {end}"

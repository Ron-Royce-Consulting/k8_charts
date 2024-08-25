### eks-istio deployment chart:
- Add to repo via submodule, requires repo SSH PUB KEY
```
cd $project_root/helm
git submodule add https://github.com/roycedev22/k8_charts.git chart
```

# Manual upgrade (depcreated, use pipeline)
```
helm upgrade --install <appname> ./charts/app-deploy-template -f values.yaml -n <namespace>
```

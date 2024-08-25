# k8_charts

The following repository contains the k8 charts developed by Ron L. Royce Consulting, Inc.

- Add to repo via submodule, requires repo SSH PUB KEY
```
cd $project_root/helm
git submodule add https://github.com/roycedev22/k8_charts.git chart
```

# Manual upgrade (depcreated, use pipeline)
```
helm upgrade --install <appname> ./charts/app-deploy-template -f values.yaml -n <namespace>
```

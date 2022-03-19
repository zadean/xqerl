# Releases Via Github Actions 

Releases are simply created by pushing an annotated tag to the github repo.
When the github picks this up the workflow action is triggered.  
 - a release is generated via the gh release cmd.
 - a release tar artefact is added to the release as generated via rebar3 prod tar
 - a docker image is created based and tagged with the release version and this image is pushed to
  - gh container registry
  - dockerhub registry

## Github actions release workflow conditions

The github action release workflow will only trigger 
 - on a push to the main branch
 - on pushing an *annotated tag*. Pushing a lighweight tag will abort the action

The github action workflow will fail if the **versioning** for the following are not in sync
 - the pushed annotated tag *version*
 - the xqerl *version* in `rebar.config`
 - the vsn *number* in `src/xqerl.app.src` 

The github action workflow job will fail when the folowing regex patterns fail
 - pushed *annotated tag*: `v\d\.\d\.\d` Note: represents semver v{major}.{minor}.{patch} patten
 - file `rebar.config` release version: `v\d\.\d\.\d` Note: represents semver v{major}.{minor}.{patch} patten
 - file `src/xqerl.app.src` vsn number: `\d\.\d\.\d` Note: no prefixed `v`

If any of these conditions a not met, the github actions for the main branch will fail.

## Release Tasks

- Checkout `main` branch `git checkout main`

1. Define a semver release version to use. 
  - Use `git --no-pager tag | grep -1` to see last tag
  - From last tag detirmine what to semver bump: v{major}.{minor}.{patch}
2. Update release 'version' in rebar3.config.
3. Update the vsn 'number' ./src/xqerl.app.src. Note this has no prefix
4. Commit these changes  `git commit -am "xqerl release version: v0.2.1"`
5. Create an **annotated tag** for the release: `git tag -a v0.2.1 -m "xqerl update v0.2.1"`
6. Push changes to repo:  `git push --follow-tags`

## example

```
# 1. Define a version to use
RELEASE=v0.1.1
# 2. Update release 'version' in rebar3.config.
OLD_BAR=$(grep -oP 'v\d+\.\d+\.\d+' rebar.config)
sed -i "s/${OLD_BAR}/${RELEASE}/" rebar.config
# 3. Update the vsn 'number' without the v prefix in ./src/xqerl.app.src
OLD_VSN=$(grep -oP '\d+\.\d+\.\d+' src/xqerl.app.src)
NEW_VSN=$(echo "${RELEASE}" | grep -oP 'v\K(\d+\.\d+\.\d+)') 
sed -i "s/${OLD_VSN}/${NEW_VSN}/" src/xqerl.app.src
# 4. Commit these changes  
git commit -am "xqerl release version: ${RELEASE}"
# 5. Create an **annotated tag** for the release: 
git tag -a ${RELEASE} -m "xqerl update ${RELEASE}"
# 6. Push changes to repo:
git push --follow-tags
```


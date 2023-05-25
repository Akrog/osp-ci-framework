# repo_setup
Please explain the role purpose.

## Privilege escalation
`become` may be set to true if you're deploying the repositories for the system.

## Parameters
* `cifmw_repo_setup_basedir`: (String) Installation base directory. Defaults to `cifmw_basedir` which defaults to `~/ci-framework`.
* `cifmw_repo_setup_promotion`: (String) Promotion line you want to deploy. Defaults to `current-podified`.
* `cifmw_repo_setup_branch`: (String) Branch/release you want to deploy. Defaults to `zed`.
* `cifmw_repo_setup_dlrn_uri`: (String) DLRN base URI. Defaults to `https://trunk.rdoproject.org/`.
* `cifmw_repo_setup_rdo_mirror`: (String) Address from which to install RDO packages. Defaults to `{{ cifmw_repo_setup_dlrn_uri }}`.
* `cifmw_repo_setup_os_release`: (String) Operating system release. Defaults to `{{ ansible_distribution|lower }}`.
* `cifmw_repo_setup_src`: (String) repo-setup repository location. Defaults to `https://github.com/openstack-k8s-operators/repo-setup`.
* `cifmw_repo_setup_output`: (String) Repository files output. Defaults to `{{ cifmw_repo_setup_basedir }}/artifacts/repositories`.
* `cifmw_repo_setup_opts`: (String) Additional options we may to pass to repo_setup. Defaults to `''`.
* `cifmw_repo_setup_enable_rhos_release`: (Boolean) Toggle `rhos-release` support. Defaults to `False`.

### Optional parameters for rhos-release
* `cifmw_repo_setup_rhos_release_rpm`: (String) URL to rhos-release RPM.
* `cifmw_repo_setup_rhos_release_args`: (String) Parameters to pass down to `rhos-release`.

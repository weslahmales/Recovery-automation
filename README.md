# Building recovery online made easy

### Area69Lab Presents - Recovery Automation

## What this is

This is an easy way for recovery maintainers or anyone who's interested in building recoveries to finish their dream without a server.

### How to use

Just Fork this Repository, Go to Actions tab, Select the _Recovery Builder_ workflow.

Then select _Run workflow_ dropdown from _workflow\_dispatch_ menu.

Input the following data in the fields.

- `Recovery Manifest URL with -b branch`: _Your manifest URL with appended branch as in_ `https://some_site/manifest_url -b android-x.y`
- `Device Company / OEM / Vendor`: _Your Device's Vendor name as in used inside DT. Example: xiaomi, samsung, asus, etc._
- `Device Codename`: _Your Device's Codename as in used inside DT. Example: nikel, phoenix, ginkgo, etc._
- `Device Tree link, with optional -b branch`: _Your Device's git URL with appended branch as in_ `https//some_site/dt_link -b pbrp-x.y`
- `Kernel repo link with optional -b branch`: _Your Device's Kernel Source tree with appended branch as in_ `https://some_site/kernel_source -b private_br` [OPTIONAL]
- `Require to manually have QCOM commonsys`: , _Set this to true if needed QCOM opensource commonsys_
- `Require to fix cryptfs_hw conflict`: _Set this to true if needed_
- `Build Target`: _Set as recoveryimage or bootimage if no recovery partition avaiable_
- `Build Flavor`: _Set as eng or userdebug_

Then trigger the workflow.

That's it.

Your resulting recovery will be available inside the workflow's Summary tab as in `recoveryzip` and `recoveryimage`.
They both are zip-compressed file.

Download and extract them to use.

## Credits

- Initial Bringup and Improvements by Team [Area69Lab](https://github.com/Area69Lab) and [ElytrA8](https://github.com/ElytrA8)
- Modification by [rokibhasansagar](https://github.com/rokibhasansagar)
- Workspace Cleaner and Build Environment Initializer by [rokibhasansagar](https://github.com/rokibhasansagar)

Enjoy Building Recoveries.

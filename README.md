# codespaces-check
Simple repo to confirm ability to start and access a repository.  Follow instructions in README.md!

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to verify your ability to use a codespaces environment. 
<br><br>

**1. If you are on a system that has a connection to a corporate VPN, disconnect from the corporate VPN or use a different system as some VPNs and firewalls can cause issues with running codespaces.**

Also make sure to have a valid userid on the public GitHub.com. You can register for one at [GitHub Signup](https://github.com/signup)
<br><br>

**2. Click on the button below to start a new codespace from this repository.**

Click here ➡️  [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/techupskills/codespaces-check?quickstart=1)
<br><br>

**3. Then click on the option to create a new codespace.**

![Creating new codespace from button](./images/ccheck1.png?raw=true "Creating new codespace from button")


This will run for a few minutes while it gets everything ready.


After the initial startup, it will run post-setup steps to setup the python environment, install needed python pieces, install Ollama, and then download the models we will use. This will take several more minutes to run. It will look like this while this is running. Make sure to let this complete before continuing.

![Final prep](./images/ccheck2.png?raw=true "Final prep")

*The codespace is ready to use when you see a prompt like the one shown below in its terminal.*

![Ready to use](./images/ccheck3.png?raw=true "Ready to use")

<br><br>
**4. You can now run a verification script that will tell you if things have run ok.**


Run the command below in the *TERMINAL* of the codespace. If all goes well, you should see output similar to the screenshot below, ending with "Environment validation successful!".


```
scripts/validate_setup.sh
```

![Running commands](./images/ccheck6.png?raw=true "Running commands")


**5. If you encounter any issues, please make sure you are not connected on a VPN or corporate firewall that might be blocking access. If you still encounter issues getting the codespace up and running or get failures running the validation script, you may open an issue to report what you're running into by clicking on the button below.**

Please only do this if you have an issue with setup or the validation script shows an error. It is recommended to also use a personal machine versus a corporate system. Include all relevant information in the issue.

[![REPORT SETUP ISSUE](https://img.shields.io/badge/📣%20REPORT%20SETUP%20ISSUE%20HERE-0000ff?style=for-the-badge&logo=github&logoColor=white)](https://github.com/techupskills/codespaces-check/issues/new?title=Setup+Issue&body=**Describe+the+problem:**%0A%0A%0A**OS+%26+Environment:**%0A%0A%0A**Browser:**%0A)

**6. When you are done with the codespace, you can go to [https://github.com/codespaces](https://github.com/codespaces), scroll down, find your codespace, click the "..." on the right side and then select "Delete" to remove it.**


![Removing codespace](./images/ccheck5.png?raw=true "Removing codespace")

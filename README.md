# codespaces-check
Simple repo to confirm ability to start and access a repository.  Follow instructions in README.md!

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to verify your ability to use a codespaces environment. 
<br><br>

**1. If you are on a system that has a connection to a corporate VPN, disconnect from the corporate VPN or use a different system as some VPNs and firewalls can cause issues with running codespaces.**
<br><br>

**2. Click on the button below to start a new codespace from this repository.**

Click here ➡️  [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/techupskills/codespaces-check?quickstart=1)
<br><br>

**3. Then click on the option to create a new codespace.**

![Creating new codespace from button](./images/ccheck1.png?raw=true "Creating new codespace from button")


This will run for a few minutes while it gets everything ready.

After the initial startup, it will run a script to test setting up the python environment and installing needed python pieces.  It will also install a tool to run LLMs locally called Ollama, and then download a model we will use. This will take several more minutes to run. It will look like this while this is running.

![Final prep](./images/ccheck2.png?raw=true "Final prep")

*The codespace is ready to use when you see a prompt like the one shown below in its terminal.*

![Ready to use](./images/ccheck3.png?raw=true "Ready to use")

<br><br>
**4. You can now run a verification script that will tell you if things have run ok.**

In the TERMINAL panel at the bottom, enter the following command. 

```
ls
code newfile.txt
```

![Running commands](./images/ccheck4.png?raw=true "Running commands")

<br><br>
**5. When you are done with the codespace, you can go to [https://github.com/codespaces](https://github.com/codespaces), scroll down, find your codespace, click the "..." on the right side and then select "Delete" to remove it.**

![Removing codespace](./images/ccheck5.png?raw=true "Removing codespace")

# codespaces-check
Simple repo to confirm ability to start and access a repository.  Follow instructions in README.md!

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to verify your ability to use a codespaces environment. 

**1. If you are on a system that has a connection to a corporate VPN, disconnect from the corporate VPN as it can cause issues with running codespaces.**

**2. Click on the button below to start a new codespace from this repository.**

Click here ➡️  [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/techupskills/codespaces-check?quickstart=1)

**3. Then click on the option to create a new codespace.**

![Creating new codespace from button](./images/ccheck1.png?raw=true "Creating new codespace from button")

This will run for a few minutes while it gets everything ready.

After the initial startup, it will run a script to setup the python environment, install needed python pieces, install Ollama, and then download the models we will use. This will take several more minutes to run. It will look like this while this is running.

![Final prep](./images/ccheck2.png?raw=true "Final prep")

The codespace is ready to use when you see a prompt like the one shown below in its terminal.

![Ready to use](./images/ccheck3.png?raw=true "Ready to use")

**4. You can now try some simple commands in the terminal of the codespace. The codespace contains a clone of this repository. Some sample commands are below and you can copy/paste from the gray boxes. (The second command opens a new file.)  Note that you may have to use keyboard commands for this.**

```
ls
code newfile.txt
```

![Running commands](./images/ccheck4.png?raw=true "Running commands")

**5. When you are done with the codespace, you can go to [https://github.com/codespaces](https://github.com/codespaces), scroll down, find your codespace, click the "..." on the right side and then select "Delete" to remove it.

![Removing codespace](./images/ccheck5.png?raw=true "Removing codespace")

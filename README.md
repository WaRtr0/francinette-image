![GitHub](https://img.shields.io/github/license/WaRtrO89/francinette-image) ![GitHub top language](https://img.shields.io/github/languages/top/WaRtrO89/francinette-image) ![GitHub repo size](https://img.shields.io/github/repo-size/WaRtrO89/francinette-image) ![GitHub Repo stars](https://img.shields.io/github/stars/WaRtrO89/francinette-image) ![GitHub repo directory count](https://img.shields.io/github/directory-file-count/WaRtrO89/francinette-image) ![GitHub watchers](https://img.shields.io/github/watchers/WaRtrO89/francinette-image) ![GitHub followers](https://img.shields.io/github/followers/WaRtrO89) ![GitHub contributors](https://img.shields.io/github/contributors/WaRtrO89/francinette-image) ![GitHub last commit (branch)](https://img.shields.io/github/last-commit/WaRtrO89/francinette-image/master)

<h1 align="center">Francinette install on 42-Session-Ubuntu</h1>

Francinette created by **[xicodomingues](https://github.com/xicodomingues)** is a tool to be able to test different projects of 42 (`libft`, `ft_printf`, `get_next_line`, `minitalk` and `pipex`).

Use `francinette` or `paco` inside a project folder to run it.

Here is a simple installer that enables you to install Francinette on an **Ubuntu PC** within a **cluster of 42**  without `sudo` access. I would like to point out that I am not the creator of the Francinette! This is just a script that makes installation easier. Thanks to [xicodomingues](https://github.com/xicodomingues).

How does the installer work? It utilizes `Docker` to create an isolated Ubuntu environment which will automatically set up Francinette with all the necessary permissions within this virtual space. Your local `$HOME` directory will be shared with the Docker container, allowing the container to execute commands that interact with your files and thus run Francinette.

<div>⚠️ Please note, this script was created to be installed only on computers of 42. Use the original script for your personal computer "here".⚠️<div>

## INSTALLATION:

Copy and paste the following line into your terminal to kick off the installation, and you'll be all set to start testing your school 42 projects with Francinette in no time!

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtrO89/francinette-image/master/install.sh)"
```
## Documentation

I can only advise you to look at the [original Francinette documentation](https://github.com/xicodomingues/francinette/tree/master#readme) for good use of this great tool!

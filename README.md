![GitHub](https://img.shields.io/github/license/WaRtrO89/francinette-image) ![GitHub top language](https://img.shields.io/github/languages/top/WaRtrO89/francinette-image) ![GitHub repo size](https://img.shields.io/github/repo-size/WaRtrO89/francinette-image) ![GitHub Repo stars](https://img.shields.io/github/stars/WaRtrO89/francinette-image) ![GitHub repo directory count](https://img.shields.io/github/directory-file-count/WaRtrO89/francinette-image) ![GitHub watchers](https://img.shields.io/github/watchers/WaRtrO89/francinette-image) ![GitHub followers](https://img.shields.io/github/followers/WaRtrO89) ![GitHub contributors](https://img.shields.io/github/contributors/WaRtrO89/francinette-image) ![GitHub last commit (branch)](https://img.shields.io/github/last-commit/WaRtrO89/francinette-image/master)

<h1 align="center">Francinette install on 42-Session-Ubuntu</h1>

Francinette created by **[xicodomingues](https://github.com/xicodomingues)** is a tool to be able to test different projects of 42 `libft`, `ft_printf`, `get_next_line`, `minitalk` and `pipex`).

Use `francinette` or `paco` inside a project folder to run it.

Here is a small installer which allows you to finally install Francinette on an **Ubuntu PC** present in a **cluster of 42** without access to `sudo`. I would like to point out that I am not the creator of the Francinette! This is just a script that makes installation easier. Thanks to [xicodomingues](https://github.com/xicodomingues).

How does the installer work? It will simply use `Docker` which will allow you to create a second Ubuntu in a virtualized space which will automatically install virtualized Francinette with all rights to this space. Then your `$HOME` space will be interconnected with that of the `docker container`, the latter will be able to receive external executions which will interact on your volume and therefore execute the Francinette.

## INSTALLATION:

You just have to copy and paste the line below into the terminal and you should be good to go!

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtrO89/francinette-image/master/install.sh)"
```
## Documentation

I can only advise you to look at the [original Francinette documentation](https://github.com/xicodomingues/francinette/tree/master#readme) for good use of this great tool!

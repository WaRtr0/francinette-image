# Francinette install on 42-Session-Ubuntu

Francinette created by [xicodomingues](https://github.com/xicodomingues) is a tool to be able to test different projects of 42 `libft`, `ft_printf`, `get_next_line`, `minitalk` and `pipex`).

Use `francinette` or `paco` inside a project folder to run it.

Here is a small installer which allows you to finally install francinette on an **Ubuntu PC** present in a **cluster of 42** without access to `sudo`. I would like to point out that I am not the creator of the francinette! This is just a script that makes installation easier. Thanks to [xicodomingues](https://github.com/xicodomingues).

How does the installer work? It will simply use `Docker` which will allow you to create a second Ubuntu in a virtualized space which will automatically install virtualized Francinette with all rights to this space. Then your `$HOME` space will be interconnected with that of the `docker container`, the latter will be able to receive external executions which will interact on your volume and therefore execute the francinette.

## INSTALLATION:

You just have to copy and paste the line below into the terminal and you should be good to go!

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtrO89/francinette-image/master/install.sh)"
```
## Documentation

I can only advise you to look at the original francinette documentation for good use of this great tool!

# Francinette install on 42-Session-Ubuntu

Francinette creer par [xicodomingues](https://github.com/xicodomingues) est un outils pour pouvoir tester differents projet du tronc commun de 42 (`libft`, `ft_printf`, `get_next_line`, `minitalk` and `pipex`).

Use `francinette` or `paco` inside a project folder to run it.

Voici un petite installeur qui permet de pouvoir enfin l'installer sur un pc ubuntu present dans les cluster de 42 n'ayant aucun acces a `sudo`.
Je tiens a insister que je ne suis pas le createur de la francinette! Ceci est juste un script qui facilite son installation. Merci a [xicodomingues](https://github.com/xicodomingues).

Comment l'installeur fonctionne ? Il va tout simplement utilise `Docker` qui va permettre de creer dan sun espace virtualise un deuxieme ubuntu qui y aura automatiquement d'installer Francinette, etant virtualiser tout a tout les droits sur cette espace. Ensuite ton home sera interconnecte avec celui du `container` du `docker`, celui ci va pouvoir recevoir des execution externe qui va interragir sur ton volume et donc executer la francinette.

## INSTALLATION:

You just have to copy and paste the line below into the terminal and you should be good to go!

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtrO89/francinette-image/master/install.sh)"
```
## Documentation

I can only advise you to look at the original francinette documentation for good use of this great tool!

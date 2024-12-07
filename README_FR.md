![GitHub](https://img.shields.io/github/license/WaRtr0/francinette-image) ![GitHub top language](https://img.shields.io/github/languages/top/WaRtr0/francinette-image) ![GitHub repo size](https://img.shields.io/github/repo-size/WaRtr0/francinette-image) ![GitHub Repo stars](https://img.shields.io/github/stars/WaRtr0/francinette-image) ![GitHub repo directory count](https://img.shields.io/github/directory-file-count/WaRtr0/francinette-image) ![GitHub watchers](https://img.shields.io/github/watchers/WaRtr0/francinette-image) ![GitHub followers](https://img.shields.io/github/followers/WaRtr0) ![GitHub contributors](https://img.shields.io/github/contributors/WaRtr0/francinette-image) ![GitHub last commit (branch)](https://img.shields.io/github/last-commit/WaRtr0/francinette-image/master) ![View counter](https://visitcount.itsvg.in/api?id=WaRtr0/francinette-image&label=Vues&icon=5&pretty=false)

<div align="right">
  👉
  <a href="https://github.com/WaRtr0/francinette-image/blob/fix_war_machine/README.md">
    <img height="20px" src="https://github-production-user-asset-6210df.s3.amazonaws.com/25512932/282272296-82e81111-e524-439b-b971-900ce90d0603.png" alt="en">
  </a>
  <a href="https://github.com/WaRtr0/francinette-image/blob/fix_war_machine/README_FR.md">
    <img height="20px" src="https://github-production-user-asset-6210df.s3.amazonaws.com/25512932/282272298-f8be0b14-1175-41e8-9ff9-91eb29c35779.png" alt="fr">
  </a>
</div>
<h1 align="center">Installation de la Francinette sur <strong>une session de 42 Ubuntu</strong></h1>


La Francinette, créée par **[xicodomingues](https://github.com/xicodomingues)** est un outil permettant de tester différents projets de l'école 42 tels que `libft`, `ft_printf`, `get_next_line`, `minitalk` et `pipex`.

Voici un installateur simple qui vous permet d'installer la Francinette sur un **ordinateur Ubuntu** au sein d'un **cluster de l'école 42** sans avoir besoin des privilèges `sudo`. Je tiens à souligner que je ne suis pas le créateur de la Francinette ! Il s'agit simplement d'un script qui facilite l'installation. Merci à [xicodomingues](https://github.com/xicodomingues).

Comment fonctionne cet installateur ? Il utilise `Docker` pour créer un environnement Ubuntu isolé qui configurera automatiquement la Francinette avec toutes les autorisations nécessaires dans cet espace virtuel. Votre répertoire local `$HOME` sera partagé avec le conteneur Docker, permettant au conteneur d'exécuter des commandes qui interagissent avec vos fichiers et ainsi d'exécuter la Francinette.

Après l'installation, utilisez la commande `francinette` ou `paco` à l'intérieur du dossier de votre projet pour l'exécuter.

> [!note]
> Ce script a été développé pour l'installation sur les ordinateurs de l'école 42. Utilisez le script original pour votre ordinateur personnel, disponible [ici](https://github.com/xicodomingues/francinette/tree/master#readme).

> [!warning]
> Francinette-image pèse environ 2,5 Go !
> Contrairement à la version [original de Francinette](https://github.com/xicodomingues/francinette/tree/master#readme), "Francinette-image" est très volumineuse, car elle installe un second environnement Ubuntu 22.04 dans votre session.

## INSTALLATION :

Copiez et collez la ligne suivante dans votre terminal pour lancer l'installation, et vous serez prêt à commencer à tester vos projets de l'école 42 avec Francinette en un rien de temps !

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtr0/francinette-image/fix_war_machine/install.sh)"
```

## MISE À JOUR:

Copiez et collez la ligne suivante dans votre terminal pour lancer une mise a jour de la francinette

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtr0/francinette-image/fix_war_machine/update.sh)"
```

## DÉSINSTALLER:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/WaRtr0/francinette-image/fix_war_machine/uninstall.sh)"
```

## Documentation

Je vous conseille vivement de consulter la [documentation originale de Francinette](https://github.com/xicodomingues/francinette/tree/master#readme) pour bien utiliser cet excellent outil !

## Qui dois-je remercier ?

* [xicodomingues](https://github.com/xicodomingues) et [arsalas](https://github.com/arsalas) créateur de la [francinette](https://github.com/xicodomingues/francinette) ayant lié différents tests, réalisés par les personnes ci-dessous
* [Tripouille](https://github.com/Tripouille) pour [libftTester](https://github.com/Tripouille/libftTester), [gnlTester](https://github.com/Tripouille/gnlTester) et [printfTester](https://github.com/Tripouille/printfTester)
* [jtoty](https://github.com/jtoty) et [y3ll0w42](https://github.com/y3ll0w42) pour [libft-war-machine](https://github.com/y3ll0w42/libft-war-machine)
* [alelievr](https://github.com/alelievr) pour [libft-unit-test](https://github.com/alelievr/libft-unit-test) et [printf-unit-test](https://github.com/alelievr/printf-unit-test)
* [cacharle](https://github.com/cacharle) pour [ft_printf_test](https://github.com/cacharle/ft_printf_test)
* [vfurmane](https://github.com/vfurmane) pour [pipex-tester](https://github.com/vfurmane/pipex-tester)
* [gmarcha](https://github.com/gmarcha) pour [pipexMedic](https://github.com/gmarcha/pipexMedic)

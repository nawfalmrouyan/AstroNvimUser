<h1 align="center">AstroNvim User Configuration</h1>

<div align="center">
<img src="https://img.shields.io/github/last-commit/nawfalmrouyan/AstroNvimUser?style=for-the-badge&logo=github&color=a6da95&logoColor=D9E0EE&labelColor=302D41"/>
<img src="https://img.shields.io/github/repo-size/nawfalmrouyan/AstroNvimUser?style=for-the-badge&logo=dropbox&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
<img src="https://img.shields.io/github/license/nawfalmrouyan/AstroNvimUser?style=for-the-badge&logo=powerpages&color=cba6f7&logoColor=D9E0EE&labelColor=302D41"/>
</div>

## 🌟 Preview

![Screenshot_2022-12-16-07-51-44_7829](https://user-images.githubusercontent.com/10271030/207992696-518aade7-c1f2-4e75-80cc-f96cd7511823.png)

![Screenshot_2022-12-16-08-05-03_23603](https://user-images.githubusercontent.com/10271030/207992703-031e5c0f-7b14-4af0-b8bc-2eeac1b67828.png)

![Screenshot_2022-12-16-08-07-50_8060](https://user-images.githubusercontent.com/10271030/207992711-68d2d633-3ebb-4a85-8901-54ba6b36c995.png)

## 🛠 Installation

- Install AstroNvim

```sh
git clone https://github.com/AstroNvim/AstroNvim.git ~/.config/nvim
```

- Install User Settings

```sh
git clone https://github.com/nawfalmrouyan/AstroNvimUser ~/.config/nvim/lua/user
```

- Initialize AstroNvim

```sh
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

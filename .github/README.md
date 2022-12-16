<h1 align="center">AstroNvim User Configuration</h1>

<div align="center">
<img src="https://img.shields.io/github/last-commit/nawfalmrouyan/AstroNvimUser?style=for-the-badge&logo=github&color=a6da95&logoColor=D9E0EE&labelColor=302D41"/>
<img src="https://img.shields.io/github/repo-size/nawfalmrouyan/AstroNvimUser?style=for-the-badge&logo=dropbox&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
<img src="https://img.shields.io/github/license/nawfalmrouyan/AstroNvimUser?style=for-the-badge&logo=powerpages&color=cba6f7&logoColor=D9E0EE&labelColor=302D41"/>
</div>

## 🌟 Preview

![Screenshot_2022-12-17-02-05-13_28745](https://user-images.githubusercontent.com/10271030/208161666-aad54f69-4d5a-442a-bb91-e5e78f2f7ca8.png)

![Screenshot_2022-12-17-02-05-02_17903](https://user-images.githubusercontent.com/10271030/208161677-92dda0f9-f325-4905-9787-3572f797f6aa.png)

![Screenshot_2022-12-17-02-07-03_15929](https://user-images.githubusercontent.com/10271030/208161686-53b917e7-fa18-48c3-9250-67094b4c32ff.png)

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

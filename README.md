# Inside-Men

This is an assistant tool for the game which is known as *who is the spy* in chinese.

# usage

1. build

    ```shell
    make build
    ```

1. build docker image

   构造`inside-men`镜像。

   ```shell
   make build_image
   ```

1. 重新编译、部署到本地docker

   容器名称`inside-men`，默认暴露端口`8080`。

   ```shell
   make deploy
   ```

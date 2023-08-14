# Домашнее задание к занятию 1 «Введение в Ansible» - `Мальцев Виктор`

---

Основная часть

Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_12.png)

Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.
Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.
Проведите запуск playbook на окружении из prod.yml. Зафиксируйте полученные значения some_fact для каждого из managed host.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_14.png)

Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact.
Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_15.png)

При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_16.png)

Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_17.png)

Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_18.png)

В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения.
Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь, что факты some_fact для каждого из хостов определены из верных group_vars.

![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_19.png)

Заполните README.md ответами на вопросы. Сделайте git push в ветку master. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым playbook и заполненным README.md.

---

Необязательная часть
При помощи ansible-vault расшифруйте все зашифрованные файлы с переменными.
Зашифруйте отдельное значение PaSSw0rd для переменной some_fact паролем netology. Добавьте полученное значение в group_vars/all/exmp.yml.
Запустите playbook, убедитесь, что для нужных хостов применился новый fact.
Добавьте новую группу хостов fedora, самостоятельно придумайте для неё переменную. В качестве образа можно использовать этот вариант.
Напишите скрипт на bash: автоматизируйте поднятие необходимых контейнеров, запуск ansible-playbook и остановку контейнеров.
Все изменения должны быть зафиксированы и отправлены в ваш личный репозиторий.
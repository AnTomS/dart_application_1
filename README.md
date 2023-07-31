# dart_application_1

## Изучение кросс-платформенных решений на языке Flutter.

Приложение для отслеживания актуального курса криптовалюты.

### Задача

- познакомиться с Flutter, понять синтаксис языка, вёрстку, работу с данными, архитектуру приложения.
- знакомство с языком будет происходить с помощью курса от Стаса Ильина
  ссылка на курс https://www.youtube.com/watch?v=FI-VshKxDZ0&list=PLtUuja72DaLIiIYLQP7rUjxItkDjHcSMw

#### Функционал приложения:

- Загрузка списка криптовалюты с помощью Апи запроса.
- Апи запрос включает в себя саму валюту, её картинку, цену в USD на момент запроса.

##### Реализация приложения

- Dart язык для всего кода
- Dio для АПИ запросов
- Equatable для отслеживания состояния во всём приложении.
- Если пользователь обновляет экран приложения, а данные в текущем STATE не поменялись, то экран не будет переписовываться
- flutter_bloc для обработки различных состояний приложения

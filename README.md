# Распределение памяти при возвратном дрейфе сетевого трафика

Бакалаврская выпускная квалификационная работа о распределении ограниченной
памяти между дообучением сетевого детектора и калибровкой порога тревоги.
Автор — Ханукаев Виктор Васильевич. Научный руководитель —
В. И. Гориховский, доцент кафедры системного программирования, к.ф.-м.н.

## Где читать работу

Материалы находятся в отдельных ветках. В таблице собраны готовые PDF,
исходники LaTeX и пул-реквесты для обсуждения каждого раздела.

| Раздел | PDF для просмотра | Исходники | Обсуждение |
| --- | --- | --- | --- |
| Аннотация | [PDF](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-abstract/pdf/abstract.pdf) | [abstract.tex](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-abstract/abstract.tex) | [PR #1](https://github.com/VITYANA/memory-allocation-network-drift-thesis/pull/1) |
| Постановка задачи | [PDF](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-task/pdf/task.pdf) | [task.tex](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-task/task.tex) | [PR #2](https://github.com/VITYANA/memory-allocation-network-drift-thesis/pull/2) |
| Обзор и источники | [PDF](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-related/pdf/related.pdf) | [related.tex](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-related/related.tex), [related.bib](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-related/related.bib) | [PR #3](https://github.com/VITYANA/memory-allocation-network-drift-thesis/pull/3) |

Каждый PDF содержит русский и английский титульные листы и соответствующий
раздел. В PDF обзора также включён список литературы.

## Как организован репозиторий

- [`thesis-base`](https://github.com/VITYANA/memory-allocation-network-drift-thesis/tree/thesis-base) — общий шаблон диплома, титульные листы и настройки сборки.
- `thesis-abstract`, `thesis-task`, `thesis-related` — независимые ветки разделов, созданные от `thesis-base`.
- Все три PR направлены в `thesis-base`. После проверки разделы объединяются в общий документ, который затем переносится в `main`.

## Как собрать локально

Основной файл — `vkr.tex`. Например, для сборки обзора с установленным
Tectonic переключитесь на его ветку и выполните:

```sh
git switch thesis-related
make tectonic
```

Либо используйте `make` с установленными XeLaTeX и `latexmk`.
Результат сборки — `build/vkr.pdf`.
Подробности о зависимостях и структуре файлов находятся в
[README базовой ветки](https://github.com/VITYANA/memory-allocation-network-drift-thesis/blob/thesis-base/README.md).

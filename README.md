# Тема: Иследование возможностей оптимизации ПО на примере хеш-таблицы
### Направление: "Введение в эмуляцию вычислительных систем, компиляторные технологии и промышленное программирование"
**Выполнил Буторин Даниил**
## Цель:
    Изучить различные реализации хеш-функций, изучить их дисперсию; иследовать реализацию инроструктуры хеш-таблтцы на предмет возможных оптимизаций, внедерение найденых решений, вычисление коэффицента полезного прироста производительности.
## В работе используются:
    Язык программирования C\C++; набор компиляторов GCC; инструмент callgring утилиты valgring; инструмент визуализации KCachegring.
## Экспериментальная установка:
    Ноутбук фирмы "Honor" на процессоре "AMD Ryzen 5 5500U with Radeon Graphics" с OS "GNU/Linux 22.04.1-Ubuntu x86_64".
## Теоретическая справка:
Хеш-функция(функция свертки) — функция, осуществляющая преобразование массива входных данных произвольной длины в выходную битовую строку установленной длины. Возвращаемые хеш-функцией значения менее разнообразны, чем входные значения. Случай, при котором хеш-функция преобразует более чем одно значение входных данных в одинаковые ключи, называется "коллизией". Вероятность возникновения коллизий используется для оценки качества хеш-функций.
Ассоциативный массив — абстрактный тип данных, позволяющий хранить пары вида (ключ, значение). Реализация ассоциативного массива может быть представленна хеш-таблицей с разрешением колизий путем цепочек(каждая ячейка - односвязанный список).
## Ход работы:
### _Глава первая. Иследование дисперсии хеш-функций._
> Так как вычисляймая дисперсия распределения хеш-функций зависит от размеров хеш-таблицы,
> то выберем ее размеры оптимальным путем для текущей задачи: возмьем простое число из диапозона, определяймого 10-15 элементами базы данных на ячейку таблицы.

Далее будет приведены разные реализации хеш-функции с их описанием и диперсией в случае хорошего расределения.
Все реализации имеют следующую сигнатуру.
```clike=
typedef uint32_t Hash;
Hash GetHash(const void *value, size_t size);
```
#### Хеш-функия №1: Эквивалентная константе.
```clike=
Hash GetHash(const void *value, size_t size)
{
    return CONSTANT_VALUE;
}
```
Хеш-функий возвращает константу для каждого полученного значения.
Самая легкая реализация, но функция обладает крайней неэффективностью.
Непременима.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ConstHash%23607.png?raw=true)

#### Хеш-функия №2: Длина значения.
```clike=
Hash GetHash(const void *value, size_t size)
{
    return LengthOf(value);
}
```
Хеш-функий возвращает длину полученого значения. Очевидно, для задач с похошей длиной ключей неэффективна(наприме: хранение пар имя-фамилия).
Непременима.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23LengthHash%23607.png?raw=true)

#### Хеш-функия №3: Сумма элементов значения.
```clike=
Hash GetHash(const void *value, size_t size)
{
    Hash hash = 0;
    for (size_t i = 0; i < size/ELEMENT_SIZE)
        hash += ElementOf(value, i);
    return hash;
}
```
Хеш-функий возвращает сумму элементов полученого значения. Распределение данной реализации будет зависить от диапазона значений элемента значения и средней длины значений.
Имеет лучшее распределение, чем все предыдущие реализации, но качество распределения сильно зависить от набора данных.
Непреминима.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%2313441.png?raw=true)

#### Хеш-функия №4: Среднее значение элемента.
```clike=
Hash GetHash(const void *value, size_t size)
{
    Hash hash = 0;
    size_t elementsCount = size/ELEMENT_SIZE;
    for (size_t i = 0; i < elementsCount)
        hash += ElementOf(value, i);
    return hash/elementsCount;
}
```
Хеш-функий возвращает среднее значение элемента полученого значения. Распределение данной реализации пиками будет совпадать с частотностью элементов.
Распределение будет зависить от частотности элементов значений.
Непренимима.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryLengthHash%23607.png?raw=true)

#### Хеш-функия №5: Сумма элементов значения при циклическом сдвиге вправо.
```clike=
Hash GetHash(const void *value, size_t size)
{
    Hash hash = 0;
    for (size_t i = 0; i < elementsCount)
        hash = ROR(hash) + ElementOf(value, i);
    return hash;
}
```
Хеш-функий возвращает сумму элементов полученого во время циклического сдвига вправо. Данная реализация имеет хорошее распределение.
Приемлема для использования.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%2313441.png?raw=true)

#### Хеш-функия №6: Сумма элементов значения при циклическом сдвиге влево.
```clike=
Hash GetHash(const void *value, size_t size)
{
    Hash hash = 0;
    for (size_t i = 0; i < elementsCount)
        hash = ROL(hash) + ElementOf(value, i);
    return hash;
}
```
Подобна предыдущей реализации, только циклический сдвиг происходит влево.
Приемлема для использования.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ROLHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ROLHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ROLHash%2313441.png?raw=true)

#### Хеш-функия №7: CRC.
```clike=
Hash GetHash(const void *value, size_t size)
{
    Hash hash = 0;
    for (size_t i = 0; i < elementsCount)
    {
        for (bit bitValue : ElementOf(value, i))
            hash = ROR(hash) + bitValue;
        if (NeedXor(hash))
            hash ^= POLINOM;
    }
    return hash;
}
```
Алгоритм данной хеш-функции можно описать как полиномиального деления(вместо деления - иклучаещее или) в столбик.
Приемлема для использования.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%2313441.png?raw=true)

#### Хеш-функия №8: GNU.
```clike=
Hash GetHash(const void *value, size_t size)
{
    Hash hash = START_VALUE;
    for (size_t i = 0; i < elementsCount)
        hash = hash*31 + ElementOf(value, i);
    return hash;
}
```
Алгоритм данной хеш-функции использует линнейную комбинацию элементов значения  с коэффициэнтами, получеными перемножением простых чисел.
Приемлема для использования.
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%2313441.png?raw=true)

#### Итоги главы

Так как кроме последних четырех реализаций, дисперсия представленых реализаций плохая, то она не будет отраженна в гистограммах.

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/HashDispertion.png?raw=true)

Также из ранее представленных графиках распределения видно, что третья реализация обладает хорошей дисперсией в первом эксперименте, но это из-за особеностей конкретного набора данных. Как видно в большем наборе данных дисперсия этой реализации резко ухудшается.
Можно заметить что, алгоритм 5 и 6 реализации отличаются минимально, но у них разная дисперсия. Но как можно наблюдать из улучшенной модели(Из раздела "Оптимизация 2") видно, что дисперсия шестой реализации в 2 раза лучше пятой.

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/HashDispertionAlso.png?raw=true)

Выяснение данного явления требует тчательного анализа, на который у нас нет возможности. Поэтому будем апирировать больше апостеорным объяснением, чем априорным.
Нам известно, что деление на степень двойки отрасывает n младших разрядов(то есть информация теряется). Выдвенем следующее предположение: При делении на другие числа теряется не вся информация, но большая ее часть. Так как дисперсия ROR хуже, чем ROL, то можно сделать вывод на основе предположения, что ROR стремится аккумулировать данные в младшей части значения, когда ROL, наоборот, в старшей.

### _Глава вторая. Оптимизация работы хеш-таблицы._
> Будут увеличены размеры таблицы, чтобы среднее заполнение было 1-2 элемента базы данных на ячейку таблицы(`data.size/table.size`).

Для экспериментов будут взяты четыре последнии реализации хеш-фунции с опциями O0 и O3 компилятора g++.

В таблицах будут преведенны данные только для функций вызываемых после запуска `main`.
Также будут опускаться переходники и внутриние библиотечные функции языка.

Тестирование будет проходить следующим образом:
> Хеш-таблица будет представлена интерфейсом ассоативного массива с типом (`String`, `String`).
- Загрузка бызы данных в хеш-таблицу
- Поиск заранее предодределенного надора данных в хеш-таблице(количество повторов - 300.000)
- Очистка хеш-таблицы

#### Оптимизация №0: Изначальная реализация.
Для начала замерим изначальные характеристики модели.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O0_ROR_start.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O0_ROL_start.png?raw=true)
#### CRC
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O0_CRC_start.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O0_GNU_start.png?raw=true)

</details>

<details>
<summary> O3 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O3_ROR_start.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O3_ROL_start.png?raw=true)
#### CRC
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O3_CRC_start.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%230_start/O3_GNU_start.png?raw=true)

</details>

Проанализировав данные можно сделать следующие выводы:

Для версий без оптимизации:
- Для CRC хеша, лимитирующий фактор - `GetHash` и `CRCHash`
- Для остальных версий, лимитирующий фактор - `LoadDataBase`
- Скорость загрузки базы данных зависит от `Put`, который в свою очередь зависит от `GetHash`

Для версий с оптимизации:
- Для CRC хеша, лимитирующий фактор все еще - `GetHash` и `CRCHash`
- Для остальных версий, лимитирующий фактор - `LoadDataBase`
- Скорость загрузки базы данных зависит от `Put`, который в свою очередь зависит от `GetHash`
- Для остальных версий, лимитирующий фактор также и библиотечные функции работы с динамической памятью

Из выше сказаного следует, что для оптимизации нужно:
- Заменить реализации `GetHash` на более оптимальные(Например: ассемблерные)
- Изменить принцип взаимодействия с динамической памятью

Данные оптимизации будут реализованны в порядке их перечисления.

#### Оптимизация №1: Замена реализаций хеш-функций на ассемблерные.
> Для CRC хеша будет использоваться машинная инструкция `crc32`

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROR_asm.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROL_asm.png?raw=true)
#### CRC
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROR_asm.png?raw=true)
#### GNU


</details>

<details>
<summary> O3 </summary>

#### ROR

#### ROL

#### CRC

#### GNU


</details>

Из данных видно, что
Для версий без оптимизации:
- Общее количество операций уменьшелось от 47M до 880M
- Для `LoadDataBase` до сих пор лимитирующие факторы как и `GetHash`, так и библиотечные функции работы с динамической памятью
Для версий с оптимизацией:
- Для CRC хеша общее количество инструкций уменьшелось на 312M
- Для остальных реализаций значимых изменений нет

Но на данном этапе было выявлена ошибка модели. Изначально предпологалось, что все предыдущие измерения фиксировались с увеличиным размером таблицы, но оказалось, что размер не был таковым.

Следующая оптимизация будет сугубо нацелена на увеличение таблицы.

#### Оптимизация №2: Увеличение размеров таблицы.

...

Анализируя данные, видно, что общее время выподнения неоптимизированного кода уменьшелось на 18M инструкций, а оптимизированного на 15.5M.

В основном уменьшелось время выполнения `REMOVE TABLE`, но также и время `INSEART` и `LOAD TABLE`.

Далее будет проведена ранее отложенная оптимизация в изменении подхода к использованию динамической памяти.

#### Оптимизация №3: Замена стандартных функций работы с динамической памятью.

Опишен последующее изменение.

На данный момент память представляет собой много разбросанных малых кусков, соединеных принципом цепочки. Так как время выполнения `NEW` линейно зависит от количества выделенной памяти(всего во время программы), а также `REMOVE TABLE`(конкретно для списков), то данный фактор будет сильно замедлять работу при большой базе данных. Было решено использовать свои ыункции работы с динамической памятью, которые будут работать в заранее заказаном большой области памяти, которая будет определяться по размеру таблицы.
В данном случае есть важный недостаток - при заполнении буффера можно:
- Увеличить размер таблицы, что влечет пересчитывание адресов для каждого элемента
- Выдавать ошибку переполнения буффера
Был принят второй вариант, и добавлен дисклеймер, что максимальное количество элементов, которые можно поместить в таблицу равны `table.size * SIZE_FACTOR`. Так как рекомендую подбирать размер таблицы, чтобы в среднем на одну ячейку приходилось 1-2 элемента, то можно взять `SIZE_FACTOR` как 2 или 3.

Правда при большом размере таблицы достаточно большая часть памяти будет занята, скорей всего, без необходимости.

...

Анализируюя данные видим, что выполнение неоптимизированнаных версий уменьшелось на 49M, а оптимизированного кода 55.5M.
Из данных результатов видно, что несмотря на внесенные огренечение прирост производительности достаточно значим.

Далее мы видим, что в зависимостях `LoadDataBase` и `Put` появились `__strchr_avx2` и `__strlen_avx2`, ф также, что их покуда не затрагивали оптимизации.

Тут можно сделать следующие оптимизации:
- Заменить тип ключа на встроенный __mm256 (решает проблему `__strlen_avx2`)
- Преобразовать файл базы данных из текстового не выровняного в бинарный выровненный
- Также можно заменить тип значения на встроенный __mm256 (решает проблему нормирования базы данных)

Так как средняя длина слова в русском языке 7.2 символа, когда в английском 5.2 символа. Так что ограничение в 32 символа (если строка фиксированной длины(а она такая, так как все незначащие символы будут заполнятся нулями), то терминатора не нужно).
Но если строка содержит предложение, то оно уже скорее всего непоместится.
Насчет замены формата файла базы данных - процес преобразования проходит один раз, но ускорение будет постоянное. Также из-за этого время преобразованния можно не учитывать (считать его временем компиляции).

Стоит заметить, выравнивание значений в файле базы данных не требуется `__strchr_avx2` для поиска нульевых символов.

#### Оптимизация №4: Подменна типов ключа и значения, нормирование базы данных.

Нормирование базы данных игнорировало все символы более 32. Все остальные строки дополнялись до 32 нулевыми символами.

...

Видно, что для неоптимизированных версий уменьшение операций роизошло на 19M, а для оптимизированных - 18.5M.

Из диаграмм видно, что отимизировать можно только саму инфроструктуру таблицы.
Так как длина ключа - строго фиксированное значение, кратное 8, то `GetHash` для CRC можно заменить цикл на 4 инструкции crc.
Так как для остальных реализаций устранить цикл неполучиться (даже с векторными операторами), то можно устранить инфроструктуру выбора хеш-функции.

#### Оптимизация №5: Повторная оптимизация хеш-функций.

Для начало посмотрим как будет оптимизирована модель при замене реализации CRC хеша.

...

Так как остальные реализации нельзя также оптимизировать было принято решение, что далее тестироваться будет только CRC реализация (так как остальные не конкурентно способны).

#### Оптимизация №6: Оптимизация инфроструктуры.

К оптимизации было выделено:
- Механизм занены реализаций хеш-функций
- Механизм замены типов ключа и значения
- Излишняя абстрация всей инфроструктуры

...

Тут мы видим уменьшение количество инструкций на 10M и 5M для неоптимизированной и оптимизированной версий соответствено.

Далее из данных можно упростить собственную реализацию функций работы с динамической памятью.
Из видных упрощений - упрощение функционала(например: удалить `free`), но тогда значимая часть функционала хеш-таблицы теряется поэтому данная оптимизация была оклонена.

Или далее оптимизировать инфраструктуру.

Других оптимизаций покуда предположить нельзя, кроме тех которые были освящены ранее. Так как задача иследовать возможности оптимизации, а не максимально оптимизировать код, то на данной оптимизации код более оптимизирован не будет.

#### Итоги главы

#### Итоги

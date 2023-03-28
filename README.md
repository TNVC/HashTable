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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ConstHash%23607.png?raw=true)

</details>

#### Хеш-функия №2: Длина значения.
```clike=
Hash GetHash(const void *value, size_t size)
{
    return LengthOf(value);
}
```
Хеш-функий возвращает длину полученого значения. Очевидно, для задач с похошей длиной ключей неэффективна(наприме: хранение пар имя-фамилия).
Непременима.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23LengthHash%23607.png?raw=true)

</details>

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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%2313441.png?raw=true)

</details>

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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryLengthHash%23607.png?raw=true)

</details>

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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%2313441.png?raw=true)

</details>

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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ROLHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ROLHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ROLHash%2313441.png?raw=true)

</details>

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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%2313441.png?raw=true)

</details>

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

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%2313441.png?raw=true)

</details>

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

> Хеш-таблица будет представлена интерфейсом ассоативного массива с типом (`String`, `String`).

Для экспериментов будут взяты четыре последнии реализации хеш-фунции с опциями O0 и O3 компилятора g++.

Размер базы данных - 163.900.

В таблицах будут преведенны данные только для функций вызываемых после запуска `main`.
Также будут опускаться переходники и внутриние библиотечные функции языка.

Тестирование будет проходить следующим образом:
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

Данная оптимизация заменяет излишне-избыточный код скомпилированый g++ на оптимальный.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROR_asm.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROL_asm.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_CRC_asm.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_GNU_asm.png?raw=true)

</details>

<details>
<summary> O3 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O3_ROR_asm.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O3_ROL_asm.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O3_CRC_asm.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O3_GNU_asm.png?raw=true)

</details>

Отметим улучшения:

#### O0
- ROR:  271,0M -> 191,6M ( 79,4M)
- ROL:  266,4M -> 189,5M ( 76,9M)
- CRC: 1063,4M -> 182,6M (808,8M)
- GNU:  245,3M -> 198,3M ( 47,0M)

#### O3
- ROR: 152,8M -> 151,9M (  0,9M)
- ROL: 146,5M -> 159,8M (-13,3M)
- CRC: 456,9M -> 144,8M (312,1M)
- GNU: 161,4M -> 160,5M (  0,9M)

Из данных видно, что для неоптимизированных версий есть значимый прирост производительности, но для неоптимизированного - улучшения либо минимальны либо отрицательны(кроме CRC хеша).
Из этого можно сделать вывод, что компилятор с опцией -O3 сам справлялся с задачей оптимизации хеш-функций(по большей части).

Если пытаться выявить лимитрирующие факторы, то они особо не изменились, по отношении к изначальному состоянию модели.

Но на данном этапе было выявлена ошибка модели. Изначально предпологалось, что все предыдущие измерения фиксировались с увеличиным размером таблицы, но оказалось, что размер не был таковым.

Следующая оптимизация будет сугубо нацелена на увеличение таблицы.

#### Оптимизация №2: Увеличение размеров таблицы.

В данной оптимизации размер таблицы будет увеличен с 13441 до 112111.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O0_ROR_biggerSize.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O0_ROL_biggerSize.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O0_CRC_biggerSize.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O0_GNU_biggerSize.png?raw=true)

</details>

<details>
<summary> O3 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O3_ROR_biggerSize.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O3_ROL_biggerSize.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O3_CRC_biggerSize.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O3_GNU_biggerSize.png?raw=true)

</details>

Отметим улучшения:

#### O0
- ROR: 191,6M -> 174,4M (17,2M)
- ROL: 189,5M -> 171,3M (18,2M)
- CRC: 182,6M -> 164,6M (18,0M)
- GNU: 198,3M -> 180,3M (18,0M)

#### O3
- ROR: 151,9M -> 135,4M (16,5M)
- ROL: 159,8M -> 145,2M (14,6M)
- CRC: 144,8M -> 129,5M (15,3M)
- GNU: 160,5M -> 137,0M (23,5M)

Смотря на диаграммы, видно, что, в основном, уменьшелось время исполнения `DestoryDataBase` и `LoadDataBase`. Остальные функции более или менее сохраняют свое количество операций.

Далее будет проведена ранее отложенная оптимизация в изменении подхода к использованию динамической памяти.

#### Оптимизация №3: Замена стандартных функций работы с динамической памятью.

Проанализируем текущий принцип использования динамической памяти. На данный момент память представляет собой много разбросанных малых кусков, соединеных принципом цепочки. Так как время выполнения `calloc` линейно зависит от количества выделенной памяти(во всей программе), а также `DestroyDataBase`(для решения колизий списками), то данный фактор будет сильно замедлять работу при большой базе данных и/или частом использовании пользователем malloc/calloc. Было решено использовать свои функции работы с динамической памятью, которые будут работать в заранее заказаной большой области памяти, которая будет определяться по размеру таблицы.
В данном случае есть важный недостаток - при заполнении буффера можно:
- Увеличить размер таблицы, что влечет пересчитывание адресов для каждого элемента
- Выдавать ошибку переполнения буффера
Был принят второй вариант, и добавлен дисклеймер, что максимальное количество элементов, которые можно поместить в таблицу равны `table.size * SIZE_FACTOR`. Так как рекомендую подбирать размер таблицы, чтобы в среднем на одну ячейку приходилось 1-2 элемента, то можно взять `SIZE_FACTOR` как 2 или 3.

В случаях плохого выбора размеров таблицы большая часть памяти будет занята, скорей всего, без необходимости.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O0_ROR_newMalloc.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O0_ROL_newMalloc.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O0_CRC_newMalloc.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O0_GNU_newMalloc.png?raw=true)

</details>

<details>
<summary> O3 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O3_ROR_newMalloc.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O3_ROL_newMalloc.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O3_CRC_newMalloc.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O3_GNU_newMalloc.png?raw=true)

</details>

Отметим улучшения:

#### O0
- ROR: 174,4M -> 124,9M (49,5M)
- ROL: 171,3M -> 121,8M (49,5M)
- CRC: 164,6M -> 115,1M (49,5M)
- GNU: 180,3M -> 130,8M (45,9M)

#### O3
- ROR: 135,4M -> 81,4M (54,0M)
- ROL: 145,2M -> 79,8M (65,4M)
- CRC: 129,5M -> 73,8M (55,7M)
- GNU: 137,0M -> 89,5M (47,5M)

Можно заметить, что несмотря на введенные ограничения, прирост производительности достаточно весом.

Также в зависимостях `LoadDataBase`, `Put` и `FindKey` появились `__strchr_avx2` и `__strlen_avx2`.
Можно сделать предположение, что `__strchr_avx2` и `__strlen_avx2` занимают так много операций из-за произвольной длины ключа, а также случайного смещения(в силу произвольной длины) пар (Ключ - Значение) в файлах базы данных.

Тут можно сделать следующие оптимизации:
- Заменить тип ключа на встроенный __mm256 (решает проблему `__strlen_avx2`)
- Преобразовать файл базы данных из текстового не выровняного в бинарный выровненный
- Также заменить тип значения на встроенный __mm256 (решает проблему нормирования базы данных)

Так как средняя длина слова в русском языке 7.2 символа, когда в английском 5.2 символа. Так что ограничение в 32 символа(если строка фиксированной длины(а она такая, так как все незначащие символы будут заполнятся нулями), то терминатора не нужно).
Но если строка содержит предложение, то оно уж скорее всего непоместится.
Насчет замены формата файла базы данных - процес преобразования проходит один раз, но ускорение будет постоянное. Также из-за этого время преобразованния можно не учитывать(считать его временем компиляции).

Стоит заметить, из-за выравнивания значений в файле базы данных больше не требуется `__strchr_avx2` для поиска нульевых символов.

#### Оптимизация №4: Подменна типов ключа и значения, нормирование базы данных.

Нормирование базы данных игнорировало все символы более 32. Все остальные строки дополнялись до 32 нулевыми символами.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O0_ROR_db.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O0_ROL_db.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O0_CRC_db.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O0_GNU_db.png?raw=true)

</details>

<details>
<summary> O3 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O3_ROR_db.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O3_ROL_db.png?raw=true)
#### CCR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O3_CRC_db.png?raw=true)
#### GNU
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O3_GNU_db.png?raw=true)

</details>

Отметим улучшения:

#### O0
- ROR: 124,9M -> 106,2M (18,7M)
- ROL: 121,8M -> 103,1M (18,7M)
- CRC: 115,1M ->  96,6M (18,5M)
- GNU: 130,8M -> 112,2M (18,6M)

#### O3
- ROR: 81,4M -> 63,0M (18,4M)
- ROL: 79,8M -> 61,4M (18,4M)
- CRC: 73,8M -> 55,4M (18,4M)
- GNU: 89,5M -> 71,1M (18,4M)

Из диаграмм видно, что отимизировать далее можно только саму инфроструктуру таблицы.
Так как длина ключа - строго фиксированное значение, кратное 8, то в `CRCHash` можно заменить цикл на 4 инструкции crc.
Так как для остальных реализаций устранить цикл неполучиться(даже с векторными операторами), то можно завиксировать определенную реализацию и устранить инфроструктуру выбора друг реализаций хеш-функции.

#### Оптимизация №5: Повторная оптимизация хеш-функций.

Прежде оптимизации инфроструктуры посмотрим на новую версию реализации хеш-функции.

<details>
<summary> O0 </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%235_newHash/O0_CRC_rehash.png?raw=true)

</details>

<details>
<summary> O3 </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%235_newHash/O3_CRC_rehash.png?raw=true)

</details>

Отметим улучшения:

#### O0
- CRC: 96,6M -> 69,8M (26,8M)

#### O3
- CRC: 55,4M -> 29,0M (26,4M)

Из результа и факта невозможности оптимизации остальных реализаций видно, что их не стоит расматривать в силу неконкуретноспособности.

Продолжим объявленные в предыдущей главе идеи для оптимизации.

#### Оптимизация №6: Оптимизация инфроструктуры.

Так как интерфейс хеш-таблице нестоит оптимизировать, то из оставшихся функций можно выделить следующие инфроструктурные узлы:
- Механизм подменны реализации хеш-функции
- Механизм замены типов ключа и значения
- Механизм распределения динамической памяти
- Механизм загрузки базы данных

К оптимизации были выделены первые два пункта, а также излишняя абстрация всей инфроструктуры. Стоит заметить, что оптимизация инфроструктуры и абстракции хоть и может положительно влиять на производительность, но негативно влияет на расширяемость кода.

<details>
<summary> O0 </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%236_final/O0_CRC_final.png?raw=true)

</details>

<details>
<summary> O3 </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%236_final/O3_CRC_final.png?raw=true)

</details>

Отметим улучшения:

#### O0
- CRC: 69,8M -> 58,2M (11,6M)

#### O3
- CRC: 29,0M -> 24,9M ( 4,1M)

Далее из данных можно упростить собственную реализацию функций работы с динамической памятью.
Из возможных упрощений - упрощение функционала(например: удалить `free`), но тогда значимая часть функционала хеш-таблицы теряется поэтому данная оптимизация была оклонена.

Можно также было оптимизировать inline функции для проверки, копирования и сравнения типов ключа и значения, но данное действие примело к потере производительности, так что оно тоже было отклонено.

Также можно сделать поддержку мультипоточной загрузки базы данных, но это будет требовать прикладных расходов на синхронизацию функции `Put` и всех тех, от которых она зависит.
Также созданние потока - дорогостоящая операция. Данное улучшение может улучшить время работы програмы, но не количество исполненых инструкций, а так как мы измеряли производительность в количестве инструкций, а не вскорости исполнения, то также данная оптимизация была откланена.

Так что остается лишь изучать асемблерный код реализации алгоритмов `FindKey`, `LoadDataBase` и `Put` и улучшать их.

Но полученные улучшения не будут столь значимы по сравнению с предыдущими оптимизациями прирост не будет столь значим.

Поэтому было принято решение прекратить серию оптимизаций и посчитать результаты.

#### Итоги главы

Так как изначальные реализации CRC являются крайне неэффективными, то их сравнение будет как с изначальными замерениями(Оптимизация 0), так и с заменненой уже на ассемблерную версию(Оптимизация 1) с конечным результатом(Оптимизация 6).

![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/Optimization.png?raw=true)

Прирост производительности:
|    | Op.0 : Op.6 | Op.1 : Op.6 |
| -- | ----------- | ----------- |
| O0 | 18.27       | 3.14        |
| O3 | 18.35       | 5.82        |

Сравнение производительности одной версии собранной с разными флагами:
|      | O0 : O3 |
| ---- | ------- |
| Op.0 | 2.33    |
| Op.1 | 1.26    |

Будем считать, что версия(Оптимизация 0) - случай, когда компилятор не смог удачно оптимизировать вычисления, а версия(Оптимизация 1) - когда смог. Тогда можно видить, что если ПО собиралось с опцией O0 без наличия оптимизации и с наличием оптимизаций можеьт отличатся от 3.14(если реализация понятна компилятору для рптимизации) до 18.27(в противном случае).
Есле же использовать флаг компиляции O3, то прирост производительности будет еще больше.
Из второй таблицы видно, если разработчик делигирует работу над оптимизацией тольго флагам компилятора, то как и плохом случае, так и в хорошем присрост производительноти не достигает уровня ручной оптимизации кода с хорошо оптимизируемой компилятором реализацией.

#### Итоги
- Оптимизации только флагами компилятора может быть недостаточно
- Уход от более свободных рамок к более строгим может дать значимый прирост производительности
- Не всегда стоит оптимизировать абстракцию самому, ведь компилятор может ее оптимизировать лучше

Но остается открытым вопрос, чем стоит жертвовать при оптимизации - памятью или производительностью(в данной работе было выбрано первое). Так как память - всегда дефицитный ресурс, то при факте загрузки всего файла в память, увеличение файла базы данных с 7MB до 10,5MB(тоесть в 1,5 раза) может быть значимым при большем размере базы данных. Но это уже другой вопрос.

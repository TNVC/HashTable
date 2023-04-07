# Тема: Исследование возможностей оптимизации ПО на примере хеш-таблицы
### Направление: "Введение в эмуляцию вычислительных систем, компиляторные технологии и промышленное программирование"
**Выполнил Буторин Даниил**
## Цель
Изучить различные реализации хеш-функций, изучить их дисперсию; исследовать реализацию инфроструктуры хеш-таблтцы на предмет возможных оптимизаций, внедрение найденных решений, вычисление коэффициента полезного прироста производительности.
## В работе используются
Язык программирования C\C++; набор компиляторов GCC; инструмент callgring утилиты valgring; инструмент визуализации KCachegring.
## Экспериментальная установка
Ноутбук фирмы "Honor" на процессоре "AMD Ryzen 5 5500U with Radeon Graphics" с OS "GNU/Linux 22.04.1-Ubuntu x86_64".
## Теоретическая справка:
Хеш-функция — функция, осуществляющая преобразование массива входных данных произвольной длины в выходную битовую строку определенной длины. Возвращаемые хеш-функцией значения менее разнообразны, чем входные значения. Случай, при котором хеш-функция преобразует более чем одно значение входных данных в одинаковые ключи, называется "коллизией". Вероятность возникновения коллизий используется для оценки качества хеш-функций.

Ассоциативный массив — абстрактный тип данных, позволяющий хранить пары вида (ключ, значение). Реализация ассоциативного массива может быть представлена хеш-таблицей с разрешением коллизий путем цепочек(каждая ячейка - односвязанный список).

Заскленность хеш-таблицы - среднее количество элементов, приходящихся на каждую ячейку таблицы.
## Ход работы
### _Глава первая. Исследование дисперсии хеш-функций._
> Так как вычисляемая дисперсия распределения хеш-функций зависит от размеров хеш-таблицы,
> то выберем ее размеры оптимальным путем для текущей задачи: заселенность таблицы будет 10-15 элементамов.

> Хеш-таблица будет представлена интерфейсом ассоциативного массива с типом (`String`, `String`).

Далее будет приведены разные реализации хеш-функции с их описанием и дисперсией в случае хорошего распределения.
Все реализации имеют следующую сигнатуру.
```clike=
typedef uint32_t Hash;
Hash GetHash(const char *value);
```
#### Хеш-функия №1: Эквивалентная константе.
```clike=
Hash GetHash(const char *value)
{
    return CONSTANT_VALUE;
}
```
Хеш-функия возвращает константу для каждого полученного значения.
Самая легкая реализация, но функция обладает крайней неэффективностью.
Неприменима.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23ConstHash%23607.png?raw=true)

</details>

#### Хеш-функия №2: Длина значения.
```clike=
Hash GetHash(const char *value)
{
    return strlen(value);
}
```
Хеш-функия возвращает длину полученного значения. Очевидно, для задач с похожей длиной ключей неэффективна(например: хранение пар имя-фамилия).
Неприменима.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23LengthHash%23607.png?raw=true)

</details>

#### Хеш-функия №3: Сумма элементов значения.
```clike=
Hash GetHash(const char *value)
{
    Hash hash = 0;
    size_t size = strlen(value);
    for (size_t i = 0; i < size)
        hash += value[i];
    return hash;
}
```
Хеш-функия возвращает сумму элементов полученного значения. Распределение данной реализации будет зависеть от диапазона значений элемента значения и средней длины значений.
Имеет лучшее распределение, чем все предыдущие реализации, но качество распределения сильно зависет от набора данных.
Непреминима.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryHash%2313441.png?raw=true)

</details>

#### Хеш-функия №4: Среднее значение элемента.
```clike=
Hash GetHash(const char *value)
{
    Hash hash = 0;
    size_t size = strlen(value);
    for (size_t i = 0; i < size)
        hash += value[i];
    return hash/size;
}
```
Хеш-функия возвращает среднее значение элемента полученного значения. Распределение данной реализации пиками будет совпадать с частотностью элементов.
Распределение будет зависеть от частотности элементов значений.
Непренимима.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23SummaryLengthHash%23607.png?raw=true)

</details>

#### Хеш-функия №5: Сумма элементов значения при циклическом сдвиге вправо.
```clike=
Hash GetHash(const char *value)
{
    Hash hash = 0;
    size_t size = strlen(value)
    for (size_t i = 0; i < size)
        hash = ROR(hash) + value[i];
    return hash;
}
```
Хеш-функия возвращает сумму элементов полученного во время циклического сдвига вправо. Данная реализация имеет хорошее распределение.
Приемлема для использования.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23RORHash%2313441.png?raw=true)

</details>

#### Хеш-функия №6: Сумма элементов значения при циклическом сдвиге влево.
```clike=
Hash GetHash(const char *value)
{
    Hash hash = 0;
    size_t size = strlen(value);
    for (size_t i = 0; i < size)
        hash = ROL(hash) + value[i];
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
Hash GetHash(const char *value)
{
    Hash hash = 0;
    size_t size = strlen(value);
    for (size_t i = 0; i < size)
    {
        for (bit bitValue : value[i])
            hash = ROR(hash) + bitValue;
        if (NeedXor(hash))
            hash ^= POLINOM;
    }
    return hash;
}
```
Алгоритм данной хеш-функции можно описать как полиномиального деления(вместо деления - исключающее или) в столбик.
Приемлема для использования.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23CRCHash%2313441.png?raw=true)

</details>

#### Хеш-функия №8: GNU.
```clike=
Hash GetHash(const char *value)
{
    Hash hash = START_VALUE;
    size_t size = strlen(value);
    for (size_t i = 0; i < size)
        hash = (hash >> 5 + hash) + value[i];
    return hash;
}
```
Алгоритм данной хеш-функции использует линейную комбинацию элементов значения с коэффициентами, полученными перемножением простых чисел.
Приемлема для использования.

<details>
<summary> Распределение хеш-функции  </summary>

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%23607.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%237879.png?raw=true)
![alt text](https://github.com/TNVC/HashTable/blob/master/plots/DefaultTable%23O3%23GNUHash%2313441.png?raw=true)

</details>

#### Итоги главы

Населенность
607/6507=~10,72
7879/100060=~12,70
13441/163900=~12,19

Так как кроме последних четырех реализаций, дисперсии представленных реализаций плохая, то они не будут отраженны в гистограммах.

![alt text](https://github.com/TNVC/HashTable/blob/master/plots/HashDispertion.png?raw=true)


### _Глава вторая. Оптимизация работы хеш-таблицы._
> Будут увеличены размеры таблицы, чтобы заселенность таблицы была 1-2 элемента.

Из результатов предыдущей главы видно, что наилучшей дисперсией обладает GNU реализация хеш-функции.
Поэтому моделирование будет происходить с ее использованием.

Также будем смотреть версии программ, полученные при компиляции g++ с опциями O0 и O3.

Размер базы данных - 163.900 уникальных пар ("Строка-Ключ":"Строка-значение").

Тестирование будет проходить следующим образом:
- Загрузка базы данных в хеш-таблицу
- Поиск заранее предопределённого набора данных в хеш-таблице(количество повторов - 300.000)
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

Для версий с оптимизацией:
- Для CRC хеша, лимитирующий фактор все еще - `GetHash` и `CRCHash`
- Для остальных версий, лимитирующий фактор - `LoadDataBase`
- Скорость загрузки базы данных зависит от `Put`, который в свою очередь зависит от `GetHash`
- Для остальных версий, лимитирующий фактор также и библиотечные функции работы с динамической памятью

Из выше сказанного следует, что для оптимизации нужно:
- Заменить реализации `GetHash` на более оптимальные(Например: ассемблерные)
- Изменить принцип взаимодействия с динамической памятью

Данные оптимизации будут реализованны в порядке их перечисления.

#### Оптимизация №1: Замена реализаций хеш-функций на ассемблерные.
> Для CRC хеша будет использоваться машинная инструкция `crc32`

Данная оптимизация заменяет излишне-избыточный код скомпилированный g++ на оптимальный.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROR_asm.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%231_asm/O0_ROL_asm.png?raw=true)
#### CRC
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
#### CRC
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

Из данных видно, что для не оптимизированных версий есть значимый прирост производительности, но для не оптимизированного - улучшения либо минимальны либо отрицательны(кроме CRC хеша).
Из этого можно сделать вывод, что компилятор с опцией -O3 сам справлялся с задачей оптимизации хеш-функций(по большей части).

Если пытаться выявить лимитирующие факторы, то они особо не изменились, по отношении к изначальному состоянию модели.

Но на данном этапе было выявлена ошибка модели. Изначально предполагалось, что все предыдущие измерения фиксировались с увеличенным размером таблицы, но оказалось, что размер не был таковым.

Следующая оптимизация будет сугубо нацелена на увеличение таблицы.

#### Оптимизация №2: Увеличение размеров таблицы.

В данной оптимизации размер таблицы будет увеличен с 13441 до 112111.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O0_ROR_biggerSize.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%232_biggerSize/O0_ROL_biggerSize.png?raw=true)
#### CRC
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
#### CRC
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

Смотря на диаграммы, видно, что, в основном, уменьшилось время исполнения `DestoryDataBase` и `LoadDataBase`. Остальные функции более или менее сохраняют свое количество операций.

Далее будет проведена ранее отложенная оптимизация в изменении подхода к использованию динамической памяти.

#### Оптимизация №3: Замена стандартных функций работы с динамической памятью.

Проанализируем текущий принцип использования динамической памяти. На данный момент память представляет собой много разбросанных малых кусков, соединенных принципом цепочки. Так как время выполнения `calloc` линейно зависит от количества выделенной памяти(во всей программе), а также `DestroyDataBase`(для решения коллизий списками), то данный фактор будет сильно замедлять работу при большой базе данных и/или частом использовании пользователем malloc/calloc. Было решено использовать свои функции работы с динамической памятью, которые будут работать в заранее заказанной большой области памяти, которая будет определяться по размеру таблицы.
В данном случае есть важный недостаток - при заполнении буфера можно:
- Увеличить размер таблицы, что влечет пересчитывание адресов для каждого элемента
- Выдавать ошибку переполнения буфера

Был принят второй вариант, и добавлен дисклеймер, что максимальное количество элементов, которые можно поместить в таблицу равны `table.size * SIZE_FACTOR`. Так как рекомендую подбирать размер таблицы, чтобы в среднем на одну ячейку приходилось 1-2 элемента, то можно взять `SIZE_FACTOR` как 2 или 3.

В случаях плохого выбора размеров таблицы большая часть памяти будет занята, скорей всего, без необходимости.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O0_ROR_newMalloc.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%233_newMalloc/O0_ROL_newMalloc.png?raw=true)
#### CRC
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
#### CRC
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
- Преобразовать файл базы данных из текстового не выровненного в бинарный выровненный
- Также заменить тип значения на встроенный __mm256 (решает проблему нормирования базы данных)

Так как средняя длина слова в русском языке 7.2 символа, когда в английском 5.2 символаб то ограничение в 32 символа(если строка фиксированной длины(а она такая, так как все незначащие символы будут заполнятся нулями), то терминатора не нужно).
Но если строка содержит предложение, то оно уж скорее всего не поместится.
Насчет замены формата файла базы данных - процесс преобразования проходит один раз, но ускорение будет постоянное. Поэтому время преобразования можно не учитывать(считать его временем компиляции).

Стоит заметить, из-за выравнивания значений в файле базы данных больше не требуется `__strchr_avx2` для поиска нулевых символов.

#### Оптимизация №4: Подменна типов ключа и значения, нормирование базы данных.

Нормирование базы данных игнорировало все символы более 32. Все остальные строки дополнялись до 32 нулевыми символами.

<details>
<summary> O0 </summary>

#### ROR
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O0_ROR_db.png?raw=true)
#### ROL
![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/%234_newData/O0_ROL_db.png?raw=true)
#### CRC
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
#### CRC
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

Из диаграмм видно, что оптимизировать далее можно только саму инфраструктуру таблицы.
Так как длина ключа - строго фиксированное значение, кратное 8, то в `CRCHash` можно заменить цикл на 4 инструкции crc.
Так как для остальных реализаций устранить цикл не получиться(даже с векторными операторами), то можно зафиксировать определенную реализацию и устранить инфраструктуру выбора других реализаций хеш-функции.

#### Оптимизация №5: Повторная оптимизация хеш-функций.

Прежде оптимизации инфраструктуры посмотрим на новую версию реализации хеш-функции.

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

Из результата и факта невозможности оптимизации остальных реализаций видно, что их не стоит рассматривать в силу неконкурентоспособности.

Продолжим объявленные в предыдущей главе идеи для оптимизации.

#### Оптимизация №6: Оптимизация инфроструктуры.

Так как интерфейс хеш-таблице не стоит оптимизировать, то из оставшихся функций можно выделить следующие инфраструктурные узлы:
- Механизм подменны реализации хеш-функции
- Механизм замены типов ключа и значения
- Механизм распределения динамической памяти
- Механизм загрузки базы данных

К оптимизации были выделены первые два пункта, а также излишняя абстракция всей инфраструктуры. Стоит заметить, что оптимизация инфраструктуры и абстракции хоть и может положительно влиять на производительность, но негативно влияет на расширяемость кода.

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

Также можно сделать поддержку многопоточной загрузки базы данных, но это будет требовать прикладных расходов на синхронизацию функции `Put` и всех тех, от которых она зависит.
Также создание потока - дорогостоящая операция. Данное улучшение может улучшить время работы программы, но не количество исполненных инструкций, а так как мы измеряли производительность в количестве инструкций, а не вскорости исполнения, то также данная оптимизация была отклонена.

Так что остается лишь изучать ассемблерный код реализации алгоритмов `FindKey`, `LoadDataBase` и `Put` и улучшать их.

Но полученные улучшения не будут столь значимы по сравнению с предыдущими оптимизациями и прирост производительности не будет велик.

Поэтому было принято решение прекратить серию оптимизаций и посчитать результаты.

#### Итоги главы

Так как изначальные реализации CRC являются крайне неэффективными, то их сравнение будет как с изначальными замирениями(Оптимизация 0), так и с замененной уже на ассемблерную версию(Оптимизация 1) с конечным результатом(Оптимизация 6).

![alt text](https://github.com/TNVC/HashTable/blob/master/callgrind/Optimization.png?raw=true)

Прирост производительности версий с разными оптимизациями:
|    | Op.0 : Op.6 | Op.1 : Op.6 |
| -- | ----------- | ----------- |
| O0 | 18.27       | 3.14        |
| O3 | 18.35       | 5.82        |

Сравнение производительности одной версии собранной с разными флагами:
|      | O0 : O3 |
| ---- | ------- |
| Op.0 | 2.33    |
| Op.1 | 1.26    |

Будем считать, что версия(Оптимизация 0) - случай, когда компилятор не смог удачно оптимизировать вычисления, а версия(Оптимизация 1) - когда смог. Тогда можно видеть, что если ПО собиралось с опцией O0 без наличия оптимизации и с наличием оптимизаций может отличатся от 3.14(если реализация понятна компилятору для оптимизации) до 18.27(в противном случае).
Если же использовать флаг компиляции O3, то прирост производительности будет еще больше.
Из второй таблицы видно, если разработчик делегирует работу над оптимизацией только флагам компилятора, то как и плохом случае, так и в хорошем прирост производительности не достигает уровня ручной оптимизации кода с хорошо оптимизируемой компилятором реализацией.

#### Итоги
- Оптимизации только флагами компилятора может быть недостаточно
- Уход от более свободных рамок к более строгим может дать значимый прирост производительности
- Не всегда стоит оптимизировать абстракцию самому, ведь компилятор может ее оптимизировать лучше

Но остается открытым вопрос, чем стоит жертвовать при оптимизации - памятью или производительностью(в данной работе было выбрано первое). Так как память - всегда дефицитный ресурс, то при факте загрузки всего файла в память, увеличение файла базы данных с 7MB до 10,5MB(то есть в 1,5 раза) может быть значимым при большем размере базы данных. Но это уже другой вопрос.

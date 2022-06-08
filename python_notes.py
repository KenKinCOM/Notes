#-*- coding: utf-8 -*-
#文件中有中文 加声明

#!/Users/fuyu/Desktop python3
tag='<href="http://www.python.org">Python web site</a>'
numbers=[1,2,3,4,5,6,7,8,9,10]
a=[1,2,3]


#除法 /有小数 //无小数 %取余数

#if语句
#if 1==1:print("hhhh")

#乘方 A**B pow()
#print(pow(9,3))

#输入 input()  括号内容将输出作为提示
#input("press enter")

#内置函数 abs取整 round将浮点数圆整成与之最近的整数 floor 向下圆整最近整数 ceil 向上圆整最近整数
#sqrt 求平方根
#abs(-10)>10   round(2.6)>3   floor(2.9)>2

#模块  floor ceil sqrt 被math包含 cmath 负数集
#import cmath >>>cmath.sqrt(-1) >1j

#双引号和单引号 再重复使用时python 会不能理解
#'let\'s go!'  或 "\"Hello World\"she said"

#长字符‘’‘ “”“ 内无需\转译  原始字符串 用前缀r表示

#海龟绘图法 from turtle import *
'''from turtle import *
forward(100)
left(72)
forward(100)
left(72)
forward(100)
left(72)
forward(100)
left(72)
forward(100)

input("press enter")'''
#——————————————————————第二章  序列————————————————
#序列索引 
'''john=['john',20]
simon=['simon',19]
database=[john,simon]'''

#序列切片 锁定特定范围 
'''tag='<href="http://www.python.org">Python web site</a>'
print(tag[1:])
input('press enter')
url=input('please enter the URL:')
domain = url[11:-4]
print("domaijn:"+domain)
print (tag.upper())'''

#步长 --切片 索引 时的单位长度  表示:name[::n] 步长不能为0
#可以为负数-从右向左走and 切片顺序倒转

'''numbers=[1,2,3,4,5,6,7,8,9,10]
print(numbers[0:10:2])
numbers[10:0:-2]'''

#序列相加 序列不能将字符串与列表相加 虽然字符串和列表都是序列
'''[1,2,3]+[4,5,6]
'Hello'+'world'
'Hello'+[1,2,3]'''

#乘法 将序列与数n相乘时 会将序列重复n次组成一个新的序列
''''pyhon'*5  [42]*4'''

#空列表 --不含有任何内容的序列 表示:[]  可进行乘法运算 创建的还是一个空的列表
#二 可用None表示  可以选择用[0]代替空列表  方便使用

'''top='+'+'-'*18+'+'
mid='|'+' '*18+'|'
sentence='|'+'How\'s the whether?'+'|'

print(top+'\n'+mid+'\n'+sentence+'\n'+mid+'\n'+top)'''
#
'''
# Prints a sentence in a centered "box" of correct width

sentence = input("Sentence: ")

screen_width = 80
text_width   = len(sentence)
box_width    = text_width + 6
left_margin  = (screen_width - box_width) // 2

print()
print(' ' * left_margin + '+'   + '-' * (box_width-2)  +   '+')
print(' ' * left_margin + '|  ' + ' ' * text_width     + '  |')
print(' ' * left_margin + '|  ' +       sentence       + '  |')
print(' ' * left_margin + '|  ' + ' ' * text_width     + '  |')
print(' ' * left_margin + '+'   + '-' * (box_width-2)  +   '+')
print()   
'''
#成员资格检查  可使用运算符in  满足:true 不满足:false  称为布尔运算符 真值为布尔值
'''tag='<href="http://www.python.org">Python web site</a>'
'href'in tag >>ture

database = [
        ['albert','1234'],
        ['dilbert','4243'],
        ['smith','7524'],
        ['jones','9232']
    ]

user_name=input('User name:')
pin = input('PIN code:')

if [user_name,pin]in database:print('Access grandted')'''

#长度、最小值、最大值  len、min、max

#                           2.3列表
#函数list
'''list('Hello')
['H','e','l','l','o']
'''
#基本的列表操作  客队列表执行标准序列操作 如索引、切片、拼接和相乘,重要的有趣在于可修改.
#1.修改列表:给元素赋值  不能给不存在的元素赋值
'''x=[1,1,1]   	
x[1]=2
x  >>[1,2,1]'''
#2.删除元素
'''names=['albert','dilbert','smith','jones']
del names[2]'''
#3.给切片赋值  可替换长度不同的序列
'''name=list('perl')
name[2:]=list('ar')
name[1:]=list('ython')'''
#使用切片赋值还可以不替换原有元素的情况插入新元素
'''numbers=[1,4]
numbers[1:1]=[2,3,4]
>>>numbers=[1,2,3,4,5]'''
#可以用空切牌来插入序列 相反--可以用空序列来删除切片
'''numbers=[1,2,3,4,5]
numbers[1:4]=[]
#与del numbers[1:4]等效'''
#2.3.3列表方法  方法与对象紧密联系的函数 通常,像下面这样调用的方法:
'''object.method(arguments)'''
#方法调用与函数调用很想 只是在方法名前加上了对象和句点
#1.append 将一个对象加入到列表末尾
'''list=[1,2,3]
list.append(4)'''
#2.clear 清空列表中的内容  类似于赋值list[:]=[]
'''list=[1,2,3]
list.clear()
>>>list=[]'''
#3.copy 方法复制列表 常规的父子只是将另一个名称关联到列表
'''a=[1,2,3]
b=a
b[1]=4
>>a=[1,4,3]'''
#要让a和b指向不同的列表,就必须将b挂链到a的副本
'''a=[1,2,3]
b=a.copy()
b[1]=4
>>a=[1,2,3]'''

#4.count 计算指定的元素在列表中出现了多少次
'''tag='<href="http://www.python.org">Python web site</a>'
tag.count('h')
4'''
#5.extend 可以将多个值附加到列表末尾 换而言之,可以用一个列表来拓展另一个列表
'''a=[1,2,3]
b=[4,5,6]
a.extend(b)
'''

#6.index  在列表中查找定值第一次出现的索引
'''tag='<href="http://www.python.org">Python web site</a>'
tag.index('e')
>>3'''

#7.insert 将一个对象插入列表
#numbers=[1,2,3,4,5,6,7,8,9,10]
'''numbers.insert(3,'four')
>>numbers=[1,2,3,four,4,5,6,7,8,9,10]'''

#8.pop 从列表中删除一个元素(末尾最后一个) 并返回这一元素
'''numbers.pop()
>>10 '''

#使用pop和push苦役实现一种常见的数据结构--栈.栈就像一叠盘子可从上面加盘子,可从上面取盘子
#加入的盘子最先被取走 加 先进后出(LIFO)  pop和push最普遍的栈操作名称
#python 没有push 可用append代替
'''a=[1,2,3]
a.append(a.pop())
>>a=[1,2,3]'''

#9.remove 删除第一个指定值的元素
'''numbers.remove(9)'''
#10.reverse 按照相反的顺序排列元素
'''numbers.reverse()'''
#11.sort 对列表就地排序 对原列表进行修改不是返回排序后对副本  无返回值
'''numbers.sort()'''
#若想将排序后的列表 赋值给y
'''y=sorted(x)'''

#2.4 元组:不可修改的序列
#与列表一样位移茶杯在于不能修改 字符串也不行  元组语法简单 将一些值用逗号分割开就能自动创建一个元组
'''>>>
1,2,3
(1,2,3)
>>>()
()
一个值的元组  虽然只有一个值但要加一个逗号
>>>42,
(42,)
'''

#——————————————————————————————3.使用字符串——————————————————————————⁄€⁄

#3.1 字符串不可变的 元素赋值和切片赋值是非法

#Python 提供了旭东种字符串格式的设置方法.以前,主要的解决方案是使用字符串格式设置运算符————百分号%
#在%百分号左边指定一个字符串(格式字符串),并在右边指定要设置格式的值.
'''format='Hello,%s.%s enough for ya?'
values=('world','Hot')
format % values>>>'Hello,world.Hot enough for ya?'
'''
#上述格式字符串中的%s称为转换说明符,指出插入位置,s意味着转换为字符串格式. 若指定的值不是字符串将用str转换为字符串
#其他的说明符将导致其他形式的转换.例如,%.3f 将值的格式设置为包含三位小数的浮点数









'''
tag='<href="http://www.python.org">Python web site</a>'
numbers=[1,2,3,4,5,6,7,8,9,10]
a=[1,2,3]
b=[4,5,6]
'''

#keylist=[]
#keylist.append(99)
#keylist.append(100)
#print (keylist)
#sinput("press enter")
#词典
#phonenumber = {'Alice':22222,'Blue':3333,'yellow':4444}

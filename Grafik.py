#!/usr/bin/python3

from tkinter import *
from tkinter.ttk import Combobox
from tkinter.ttk import Checkbutton
from tkinter import scrolledtext
from tkinter import messagebox

#import tkinter


def ifclickButton():
    res="Слышь ты, {}, захотел ко мне лезть, да я тебя сам...".format(txt.get())
    #lable.configure(text='ffffkkkk')
    lable.configure(text=res)

def raddA():
    lable.configure(text='Suprastin')
    telable.configure(text=selecteed.get())

def raddB():
    lable.configure(text='Menovazin')
    telable.configure(text=selecteed.get())


def raddC():
    lable.configure(text='Laripront')
    telable.configure(text=selecteed.get())


window=Tk()
window.title("Vot i GUI))")
window.geometry('800x600')

lable=Label(window,text='What\'s your name?',font=('Arial Bold', 10))
lable.grid(column=0,row=0)

telable=Label(window,text='for test')
telable.grid(column=3,row=0)

knop=Button(window,text='Жмак',bg='black',fg='white',command=ifclickButton)
knop.grid(column=0,row=1)

txt=Entry(width=10)
txt.grid(column=1,row=0)
txt.focus()
#txt = Entry(window,width=10, state='disabled')

combo=Combobox(window)
combo['values']=(1,11,111,'gav')
combo.current(0)
combo.grid(column=1,row=1)

#chk_bool=BooleanVar()
#chk_bool.set(FALSE) #(0-FALSE,1-TRUE)
chk_bool=IntVar()
chk_bool.set(1)
galka=Checkbutton(window,text='da/ne',var=chk_bool)
galka.grid(column=2,row=1)

selecteed=IntVar()
radA=Radiobutton(window,text='Tipa odin',value=1,variable=selecteed,command=raddA)
radB=Radiobutton(window,text='Tipa dva',value=2,variable=selecteed,command=raddB)
radC=Radiobutton(window,text='Tipa tri',value=3,variable=selecteed,command=raddC)
radA.grid(column=0,row=3)
radB.grid(column=1,row=3)
radC.grid(column=2,row=3)


window.mainloop()

newind=Tk()
newind.title('Escho okno')
newind.geometry('1024x600')
scrtext=scrolledtext.ScrolledText(newind,width=110,height=10)
scrtext.grid(column=0,row=0)
i=0
while (i<=15):
    i+=1
    scrtext.insert(INSERT,str(i)+'\n')

def clearscr():
    scrtext.delete(1.0,END)

but=Button(newind,text='clear',command=clearscr)
but.grid(column=1,row=0)

newind.mainloop()

messagebox.showinfo('Конец', 'Закончилось')

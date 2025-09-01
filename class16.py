import streamlit as st
import pandas as pd
import numpy as np
st.title("HELLO STREAM LIT")#it used for title
st.write("these is a simple app ")#if u want to show something in the fornt end we use the command write
name=st.text_input("enter your name")
number=st.number_input("enter your age",min_value=1,max_value=60,step=1)
if st.button('Submit'):
    st.write(f'hello {name} your age is {number}')
number=st.slider("pick your number",1,10000,15)
st.write(f"your number {number}")
df=pd.DataFrame(np.random.randn(10,2),columns=['X',"Y"])
st.write("Random frame")
st.dataframe(df)
if st.checkbox('show message'):
    st.write("you selected check box")
radio=st.radio("select your gender",("MALE","FEMALE",'OTHERS'))
st.write(f"you selected {radio}")
dropbox=st.selectbox('select the option ',["option1","option2","option3"])
st.write(f'you selected {dropbox}')
import time
tim=st.progress(0)
for i in range(100):
    time.sleep(0.05)
    tim.progress(i+1)

hobb=st.multiselect('select your hobbies',['cricket','kabaddi','football','reading','singing','dancing'])
st.write("your seletecd these options ", hobb)
f=st.time_input("select your time")
st.write(f'you selected your time {f}')
st.metric(label='Revenu',value=400000,delta='+12%')
st.metric(label='loss',value=100000,delta='-5%')
tab1,tab2=st.tabs(['TAB 1','TAB2'])

with tab1:
    st.write("content of tab1")
with tab2:
    st.write("content of tab2")
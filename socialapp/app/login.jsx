import { Alert, Pressable, StyleSheet, Text, View } from 'react-native'
import React, { useRef, useState } from 'react'
import ScreenWrapper from '../components/ScreenWrapper'
import { theme } from '../constants/theme'
import Icon from '../assets/icons'
import { StatusBar } from 'expo-status-bar'
import BackButton from '../components/BackButton'
import { useRouter } from 'expo-router'
import { hp, wp } from '../helpers/common'
import { TextInput } from 'react-native-web'
import Input from '../components/Input'
import Button from '../components/Button'
import { supabase } from '../lib/supabase'
const login = () => {



  const router=useRouter();
  const emailRef=useRef();
  const passwordRef=useRef();
  const [loading,setLoading]=useState(false);

  const onSubmit=async ()=>{
    if(!emailRef.current || !passwordRef.current){
      Alert.alert('Login','Please fill in all fields')
      return
    }
 
    let email=emailRef.current.trim();
    let password=passwordRef.current.trim();
    setLoading(true)
    const{error}=await supabase.auth.signInWithPassword({
      email,
      password
    })
    setLoading(false)
    if(error){
      Alert.alert('Login',error.message)
    }
    

  }

  return (
    <ScreenWrapper bg="white">
      <StatusBar style='dark' />
      <View style={styles.container}>
        <BackButton router={router}/>
        <View>
           <Text style={styles.welcomeText}>Hey,</Text>
            <Text style={styles.welcomeText}>Welcome Back</Text>
        </View>
        <View style={styles.form}>
          <Text style={{fontSize:hp(1.5),color:theme.colors.text}}>Please Login to continue</Text>
          <Input 
          icon={<Icon name="mail" size={26} strokeWidth={1.6} />}
          placeholder="Enter your email"
          onChangeText={value=>emailRef.current=value}
          />
          <Input 
          icon={<Icon name="lock" size={26} strokeWidth={1.6} />}
          placeholder="Enter your password"
          secureTextEntry
          onChangeText={value=>passwordRef.current=value}
          />

          <Text sytle={styles.forgotPassword}> 
            Forgot Password?
             </Text>
             <Button title={'Login'} loading={loading} onPress={onSubmit} />


        </View>
        <View style={styles.footer}>

          <Text style={styles.footerText}>Don't have an account?</Text>
          <Pressable onPress={()=>router.push('signUp')}>
            <Text style={[styles.footerText,{color:theme.colors.primaryDark},{fontWeight:theme.fonts.semibold}]}>Sign Up</Text>
          </Pressable>

        </View>
      </View>
      
    </ScreenWrapper>
    
  )
}

export default login

const styles = StyleSheet.create({
  container:{
    flex:1,
    gap:45,
    paddingHorizontal:wp(5)
  },
  welcomeText:{
    fontSize:hp(4),
    fontWeight:theme.fonts.bold,
    color:theme.colors.text,
  },
  form:{
    gap:25
  },
  forgotPassword:{
    textAlign:'right',
    color:theme.colors.text,
    fontSize:hp(1.6)
  },
  footer:{
    flexDirection:'row',
    justifyContent:'center',
    alignItems:'center',
    gap:5
  },
  footerText:{
    textAlign:'center',
    color:theme.colors.text,
    fontSize:hp(1.6)
  }

})
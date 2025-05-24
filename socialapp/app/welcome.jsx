import { Image, Pressable, StyleSheet, Text, View } from 'react-native'
import React from 'react'
import ScreenWrapper from '../components/ScreenWrapper'
import { StatusBar } from 'expo-status-bar'
import { hp, wp } from '../helpers/common'
import { theme } from '../constants/theme'
import Button from '../components/Button'
import { useRouter } from 'expo-router'

const Welcome = () => {
    const router=useRouter();
  return (

    <ScreenWrapper bg='white'>
      <StatusBar style='dark' />
      <View style={styles.container}>
        <Image source={require('../assets/images/welcome.png')} resizeMode='contain'  style={styles.welcome}/>
        
            <View style={{gap:20}}>
                <Text style={styles.title}>LinkUp! </Text>
                <Text style={styles.punchLine}>Where every thoughts finds a home  and evey image tells a story</Text>
            </View>

            <View style={styles.footer}>
                <Button title='Getting Started' 
                    buttonStyle={{marginHorizontal:wp(3)}}
                    onPress={()=>router.push('signUp')}

                />
                <View style={styles.bottomTextContainer}>
                    <Text style={styles.loginText}>Already have an account?</Text>
                        <Pressable onPress={()=>router.push('login')}>
                            <Text style={[styles.loginText,{fontWeight:theme.fonts.semibold},{color:theme.colors.primaryDark}]}>Login</Text>
                        </Pressable>
                </View>
            </View>

        </View>
    </ScreenWrapper>
  )
}

export default Welcome

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'space-around',
        alignItems: 'center',
        backgroundColor: 'white',
        paddingHorizontal: wp(4)
    },
    welcome: {
        height:hp(30),
        width:wp(100),
        alignSelf:'center',

    },
    title:{
        color:theme.colors.text,
        fontSize:hp(4),
        textAlign:'center',
        fontWeight:theme.fonts.bold
    },
    punchLine:{
        textAlign:'center',
        paddingHorizontal:wp(10),
        fontSize:hp(1.7),
        color:theme.colors.text
    },
    footer:{
       gap:30,
       width:  '100%',
    },
    bottomTextContainer:{
        flexDirection:'row',
        justifyContent:'center', 
        alignItems:'center',
        gap:5
    },
    login:{
        textAlign:'center',
        color:theme.colors.text,
        fontSize:hp(1.6),
    }

})
import { StyleSheet, Text, TextInput, View } from 'react-native'
import React from 'react'
import { theme } from '../constants/theme'
import { hp } from '../helpers/common'


const Input = (props) => {
  return (
    <View style={[styles.containerStyles,props.containerStyles && props.containerStyles]}>
      {
        props.icon && props.icon
      }
      <TextInput
      style={{flex:1}}
      placeholderTextColor={theme.colors.textLight}
      ref={props.inputRef && props.inputRef}
      {...props}
      />
    </View>
  )
}

export default Input

const styles = StyleSheet.create({
    containerStyles:{
        flexDirection:'row',
        height:hp(7.2),
        alignItems:'center',
        justifyContent:'center',
        borderWidth:0.5,
        borderColor:theme.colors.text,
        borderRadius:theme.radius.xl,
        borderCurve:'continuous',
        paddingHorizontal:18,
        gap:12


    }
})
import { Image, StyleSheet, Text, TextInput, TouchableOpacity, View } from 'react-native'
import React from 'react'
import { Stack } from 'expo-router'
import { Ionicons } from '@expo/vector-icons'
import Colors from '@/constants/Colors'
import {useHeaderHeight} from '@react-navigation/elements'
import { SearchBar } from 'react-native-screens'
import CategoryButtons from '@/components/CategoryButtons'

const index = () => {
    const headerHeight = useHeaderHeight()
  return (
    <>
    <Stack.Screen options={{
        headerTransparent:true,
        headerTitle:"",
        headerLeft: () => (
            <TouchableOpacity>
                <Image source={{uri:"https://xsgames.co/randomusers/avatar.php?g=female"}} style={{width: 30, height: 30, borderRadius:10,marginLeft:20}}/>
            </TouchableOpacity>
            ), 
            headerRight: () => (
                <TouchableOpacity 
                onPress={()=>{}}
                style={{
                    marginRight:20,
                    backgroundColor:Colors.white,
                    borderRadius:10,
                    padding:10,
                    shadowColor:'#171717',
                    shadowOffset:{width:2,height:4},
                    shadowOpacity:0.2,
                    shadowRadius:3}}>
                    <Ionicons name="notifications" size={20} color={Colors.black} />
                    </TouchableOpacity>
                )
        }}/>

        <View style={[styles.container,{paddingTop:headerHeight}]}>
            <Text style={styles.headingText}>Explore the beautiful World!</Text>
            <View style={styles.searchSectionWrapper}>
                <View style={styles.searchBar}>
                    <Ionicons name='search' size={18} style={{marginRight:5}} color={Colors.black} />
                    <TextInput placeholder='Search...' />

                </View>
                <TouchableOpacity onPress={()=>{}} style={[styles.filterBtn,{padding:12,borderRadius:10,marginLeft:10}]}>
                    <Ionicons name='options' size={24} color={Colors.white} />
                </TouchableOpacity>
            </View>
            <CategoryButtons/>
        </View>
       
        </>
  )
}

export default index

const styles = StyleSheet.create({
    container: {
        flex: 1,
        paddingHorizontal:20,
        backgroundColor:Colors.bgColor
    },
    headingText:{
        fontSize:28,
        fontWeight:'bold',
        color:Colors.black,
        marginTop:10
    },
    searchSectionWrapper:{
        
        flexDirection:'row',
        alignItems:'center',
        justifyContent:'space-between',
  
        borderRadius:10,
        paddingHorizontal:10,
        marginTop:20

    },
    searchBar:{
        flex:1,
        flexDirection:'row',
        alignItems:'center',
        backgroundColor:Colors.white,
        borderRadius:10,
        padding:12
    },
    filterBtn:{
        backgroundColor:Colors.primaryColor,
    }


})
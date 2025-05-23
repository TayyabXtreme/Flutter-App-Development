import { ScrollView, StyleSheet, Text, TouchableOpacity, View } from 'react-native'
import React from 'react'
import Colors from '@/constants/Colors'
import { MaterialCommunityIcons } from '@expo/vector-icons'


const CategoryButtons = () => {
    const catall=[
        {
            title:'All',
            iconName:'home'
        },
        {
            title:'Beach',
            iconName:'beach'
        },
        {
            title:'Mountain',
            iconName:'terrain'
        },
        {
            title:'City',
            iconName:'city'
        },
      
        {
            title:'Forest',
            iconName:'forest'
        }
    ]

    
  return (
    <View>
      <Text style={styles.title}>Categories</Text>
      <ScrollView horizontal 
      showsHorizontalScrollIndicator={false}
      contentContainerStyle={{gap:20,paddingVertical:10,marginBottom:10}}>
        {
            catall.map((cat,index)=>(
                <TouchableOpacity key={index} style={styles.categoryBtn}>
                    <MaterialCommunityIcons name={cat.iconName as any} size={24} color={Colors.black} />
               
                    <Text style={styles.CategoryBtnTxt} >{cat.title}</Text>
               
                </TouchableOpacity>
            ))
        }

      </ScrollView>
    </View>
  )
}

export default CategoryButtons

const styles = StyleSheet.create({
    title: {
        fontSize: 22,
        fontWeight: 'bold',
        color:Colors.black
    },
    categoryBtn:{
        flexDirection:'row',
        alignItems:'center',
        paddingHorizontal:16,
        paddingVertical:10,
        backgroundColor:Colors.white,
       
        borderRadius:10,
        shadowColor:"black",
        shadowOffset:{width:1,height:2},
        shadowOpacity:0.1,
        shadowRadius:3,
    },
    CategoryBtnTxt:{
        marginLeft:5,
        color:Colors.black
    }
})
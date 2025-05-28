
import { AppState } from 'react-native'
import AsyncStorage from '@react-native-async-storage/async-storage'
import { createClient } from '@supabase/supabase-js'
import { supabaseAnonKey, supabaseUrl } from '../constants'


export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  auth: {
    storage: AsyncStorage,
    autoRefreshToken: true,
    persistSession: true,
    detectSessionInUrl: false,
  },
})


AppState.addEventListener('change', async (nextAppState) => {
    if(nextAppState==='active'){
        await supabase.auth.startAutoRefresh()
    }else{
        await supabase.auth.stopAutoRefresh()
    }

}
)
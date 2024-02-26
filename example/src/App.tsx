import * as React from 'react';

import { StyleSheet, View, Text, Pressable } from 'react-native';
import { openLoginSdk } from 'rn-login-sdk';

export default function App() {
  return (
    <View style={styles.container}>
      {/* Open Flutter Login SDK */}
      <Pressable style={styles.button} onPress={openLoginSdk}>
        <Text style={styles.text}>{'Open Login SDK'}</Text>
      </Pressable>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  button: {
    width: 120,
    height: 60,
    marginVertical: 20,
  },
  text: {
    fontSize: 20,
    fontWeight: 'bold',
  },
});

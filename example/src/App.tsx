import * as React from 'react';

import {
  StyleSheet,
  View,
  Text,
  SafeAreaView,
  Button,
  ScrollView,
  Platform,
} from 'react-native';
import RNFlutterView from './MapView.tsx';

const screen = 'json';

function getRndInteger(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

export default function App() {
  // const [screen, setScreen] = React.useState('counter');
  const [clicks, setClicks] = React.useState(0);
  const [text, setText] = React.useState('initial');
  // const [json, setJson] = React.useState('test');
  const [json, setJson] = React.useState({
    hi: 'hello',
  });

  // const [text, setText] = React.useState('');

  // return (
  //   <SafeAreaView style={{flex: 1}}>
  //     <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
  //       <Text>Hii</Text>
  //     </View>
  //   </SafeAreaView>
  // )

  return (
    <SafeAreaView style={styles.rnContainer}>
      <ScrollView style={styles.rnContainer}>
        <View style={styles.rnContainer}>
          <Text style={styles.flutterTxt}>Flutter Part</Text>
          <RNFlutterView
            style={styles.flutterView}
            // theme={true ? 'dark' : 'light'}
            json={JSON.stringify(json)}
            // json={json}
            clicks={clicks}
            screen={screen}
            text={text}
            onClicksChange={(event: any) => {
              setClicks(event.nativeEvent.value);
            }}
            onTextChange={(event: any) => {
              // console.log('onTextChange : ', setText(event.nativeEvent.text));
              setText(event.nativeEvent.text);
            }}
            onJsonChange={(event: any) => {
              // console.log('event.nativeEvent : ', event.nativeEvent);
              setJson(
                JSON.parse(
                  event.nativeEvent[
                    Platform.OS === 'android' ? 'value' : 'json'
                  ]
                )
              );
              // setJson(event.nativeEvent.json);
            }}
            onScreenChange={(event: any) => {
              console.log('onScreenChange : ', event);
            }}
          />
          <View style={styles.rnContainer}>
            <Text style={styles.rnTxt}>React Native Part</Text>
            {/* <Text style={styles.rnClickTxt}>{text}</Text>
            <TextInput value={text} onChangeText={e => setText(e)} /> */}
            <Text style={styles.rnClickTxt}>{JSON.stringify(json)}</Text>
            <Button
              title="Increase from RN"
              onPress={() => {
                // setClicks((prevState) => +prevState + 1);
                const random = getRndInteger(10, 99);
                setJson((prevState) => {
                  return {
                    ...prevState,
                    [`key_${random}`]: `JsonValue -  ${random}`,
                  };
                });
                // setJson(`key_${random}`);
              }}
            />
          </View>
          {/* <RNFlutterView
        style={{
          flexGrow: 1,
          // maxHeight: 100,
        }}
        flutterNativeView
        // style={styles.view}
        // ref={ref}
        // clicks={clicks}
        // text={text}
        // screen={screen}
        // theme={theme}
        onClicksChange={(event) => {
          console.log('onClicksChange : ', event)
          // onClicksChange?.(event.nativeEvent.value)
        }}
        onTextChange={(event) => {
          console.log('onTextChange : ', event)
          // onTextChange?.(event.nativeEvent.text)
        }}
        onScreenChange={(event) => {
          console.log('onScreenChange : ', event)
          // onScreenChange?.(event.nativeEvent.screen)
        }}
      /> */}
        </View>
      </ScrollView>
    </SafeAreaView>
  );
  // return (
  //   <View style={styles.container}>
  //     {/* Open Flutter Login SDK */}
  //     <Pressable style={styles.button} onPress={openLoginSdk}>
  //       <Text style={styles.text}>{'Open Login SDK'}</Text>
  //     </Pressable>
  //   </View>
  // );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  flutterView: {
    // flex: 1,
    height: 200,
  },
  rnContainer: { flex: 1 },
  flutterTxt: { fontSize: 24 },
  rnTxt: { fontSize: 24, marginVertical: 100 },
  rnClickTxt: { fontSize: 24, marginBottom: 50, alignSelf: 'center' },
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

import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'rn-login-sdk' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

// @ts-expect-error
const isTurboModuleEnabled = global.__turboModuleProxy != null;

const RnLoginSdkModule = isTurboModuleEnabled
  ? require('./NativeRnLoginSdk').default
  : Platform.OS === 'android'
    ? NativeModules.RnLoginSdk
    : NativeModules.Connect;

console.log('RnLoginSdkModule : ', RnLoginSdkModule);

const RnLoginSdk = RnLoginSdkModule
  ? RnLoginSdkModule
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function multiply(a: number, b: number): Promise<number> {
  return RnLoginSdk.multiply(a, b);
}

// For Flutter Integration
export const openLoginSdk = (): Promise<string> => {
  return Platform.OS === 'android'
    ? RnLoginSdk.openLoginSdk()
    : RnLoginSdk.goToNative();
};

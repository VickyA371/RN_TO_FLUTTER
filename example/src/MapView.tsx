import React, { useEffect, useRef } from 'react';
import {
  requireNativeComponent,
  UIManager,
  type StyleProp,
  type ViewStyle,
  Platform,
  findNodeHandle,
} from 'react-native';

// requireNativeComponent automatically resolves 'RNTMap' to 'RNTMapManager'
interface FlutterNativeViewProps {
  style?: StyleProp<ViewStyle>;
  clicks: any;
  screen: any;
  text?: any;
  json?: any;
  onClicksChange: (_e: any) => any;
  onTextChange: (_e: any) => any;
  onJsonChange: (_e: any) => any;
  onScreenChange: (_e: any) => any;
}

const FlutterNativeView =
  requireNativeComponent<FlutterNativeViewProps>('RNFlutterView');

const createFragment = (viewId: null | number) =>
  UIManager.dispatchViewManagerCommand(viewId, 'create', [viewId]);

const FlutterView = (props: FlutterNativeViewProps) => {
  const ref = useRef(null);

  useEffect(() => {
    if (Platform.OS === 'android') {
      const viewId = findNodeHandle(ref.current);
      createFragment(viewId);
    }
  }, []);

  return <FlutterNativeView {...props} ref={ref} />;
};

export default FlutterView;

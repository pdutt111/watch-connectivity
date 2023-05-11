import { WebPlugin } from '@capacitor/core';

import type { IonicWatchConnectivityPlugin } from './definitions';

export class IonicWatchConnectivityWeb
  extends WebPlugin
  implements IonicWatchConnectivityPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

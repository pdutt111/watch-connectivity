import { WebPlugin } from '@capacitor/core';

import type { WatchConnectivityPlugin } from './definitions';

export class WatchConnectivityWeb
  extends WebPlugin
  implements WatchConnectivityPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
